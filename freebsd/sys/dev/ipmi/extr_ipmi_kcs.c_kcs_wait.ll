; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_kcs.c_kcs_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_kcs.c_kcs_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { i32 }

@ticks = common dso_local global i32 0, align 4
@POLLING_DELAY_MIN = common dso_local global i32 0, align 4
@KCS_CTL_STS = common dso_local global i32 0, align 4
@MAX_TIMEOUT = common dso_local global i32 0, align 4
@POLLING_DELAY_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_softc*, i32, i32)* @kcs_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcs_wait(%struct.ipmi_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ipmi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ipmi_softc* %0, %struct.ipmi_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @ticks, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @POLLING_DELAY_MIN, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %13 = load i32, i32* @KCS_CTL_STS, align 4
  %14 = call i32 @INB(%struct.ipmi_softc* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %41, %3
  %16 = load i32, i32* @ticks, align 4
  %17 = load i32, i32* %8, align 4
  %18 = sub nsw i32 %16, %17
  %19 = load i32, i32* @MAX_TIMEOUT, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %24, %25
  br label %27

27:                                               ; preds = %21, %15
  %28 = phi i1 [ false, %15 ], [ %26, %21 ]
  br i1 %28, label %29, label %42

29:                                               ; preds = %27
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @DELAY(i32 %30)
  %32 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %33 = load i32, i32* @KCS_CTL_STS, align 4
  %34 = call i32 @INB(%struct.ipmi_softc* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @POLLING_DELAY_MAX, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* %9, align 4
  %40 = mul nsw i32 %39, 2
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %38, %29
  br label %15

42:                                               ; preds = %27
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @INB(%struct.ipmi_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
