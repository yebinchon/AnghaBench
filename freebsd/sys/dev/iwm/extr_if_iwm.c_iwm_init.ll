; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32, i32 }

@IWM_FLAG_HW_INITED = common dso_local global i32 0, align 4
@IWM_FLAG_STOPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"iwm_init_hw failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwm_softc*)* @iwm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwm_init(%struct.iwm_softc* %0) #0 {
  %2 = alloca %struct.iwm_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %2, align 8
  %4 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %5 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @IWM_FLAG_HW_INITED, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %36

11:                                               ; preds = %1
  %12 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %13 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @IWM_FLAG_STOPPED, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %19 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %23 = call i32 @iwm_init_hw(%struct.iwm_softc* %22)
  store i32 %23, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %11
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %29 = call i32 @iwm_stop(%struct.iwm_softc* %28)
  br label %36

30:                                               ; preds = %11
  %31 = load i32, i32* @IWM_FLAG_HW_INITED, align 4
  %32 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %33 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %25, %10
  ret void
}

declare dso_local i32 @iwm_init_hw(%struct.iwm_softc*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @iwm_stop(%struct.iwm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
