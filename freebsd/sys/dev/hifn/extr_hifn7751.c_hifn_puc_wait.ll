; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_puc_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_puc_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_softc = type { i32, i32 }

@HIFN_0_PUCTRL = common dso_local global i32 0, align 4
@HIFN_IS_7956 = common dso_local global i32 0, align 4
@HIFN_0_PUCTRL2 = common dso_local global i32 0, align 4
@HIFN_PUCTRL_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"proc unit did not reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hifn_softc*)* @hifn_puc_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hifn_puc_wait(%struct.hifn_softc* %0) #0 {
  %2 = alloca %struct.hifn_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hifn_softc* %0, %struct.hifn_softc** %2, align 8
  %5 = load i32, i32* @HIFN_0_PUCTRL, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %7 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @HIFN_IS_7956, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @HIFN_0_PUCTRL2, align 4
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %12, %1
  store i32 5000, i32* %3, align 4
  br label %15

15:                                               ; preds = %28, %14
  %16 = load i32, i32* %3, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = call i32 @DELAY(i32 1)
  %20 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @READ_REG_0(%struct.hifn_softc* %20, i32 %21)
  %23 = load i32, i32* @HIFN_PUCTRL_RESET, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  br label %31

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %3, align 4
  br label %15

31:                                               ; preds = %26, %15
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %36 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %34, %31
  ret void
}

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @READ_REG_0(%struct.hifn_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
