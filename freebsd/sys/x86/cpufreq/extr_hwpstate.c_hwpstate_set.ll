; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_hwpstate.c_hwpstate_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_hwpstate.c_hwpstate_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32 }
%struct.hwpstate_softc = type { i32, %struct.hwpstate_setting* }
%struct.hwpstate_setting = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*)* @hwpstate_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwpstate_set(i32 %0, %struct.cf_setting* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cf_setting*, align 8
  %6 = alloca %struct.hwpstate_softc*, align 8
  %7 = alloca %struct.hwpstate_setting*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cf_setting* %1, %struct.cf_setting** %5, align 8
  %9 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %10 = icmp eq %struct.cf_setting* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %3, align 4
  br label %59

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.hwpstate_softc* @device_get_softc(i32 %14)
  store %struct.hwpstate_softc* %15, %struct.hwpstate_softc** %6, align 8
  %16 = load %struct.hwpstate_softc*, %struct.hwpstate_softc** %6, align 8
  %17 = getelementptr inbounds %struct.hwpstate_softc, %struct.hwpstate_softc* %16, i32 0, i32 1
  %18 = load %struct.hwpstate_setting*, %struct.hwpstate_setting** %17, align 8
  store %struct.hwpstate_setting* %18, %struct.hwpstate_setting** %7, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %39, %13
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.hwpstate_softc*, %struct.hwpstate_softc** %6, align 8
  %22 = getelementptr inbounds %struct.hwpstate_softc, %struct.hwpstate_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %19
  %26 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %27 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hwpstate_setting*, %struct.hwpstate_setting** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %29, i64 %31
  %33 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @CPUFREQ_CMP(i32 %28, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %42

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %19

42:                                               ; preds = %37, %19
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.hwpstate_softc*, %struct.hwpstate_softc** %6, align 8
  %45 = getelementptr inbounds %struct.hwpstate_softc, %struct.hwpstate_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %3, align 4
  br label %59

50:                                               ; preds = %42
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.hwpstate_setting*, %struct.hwpstate_setting** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %52, i64 %54
  %56 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @hwpstate_goto_pstate(i32 %51, i32 %57)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %50, %48, %11
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.hwpstate_softc* @device_get_softc(i32) #1

declare dso_local i64 @CPUFREQ_CMP(i32, i32) #1

declare dso_local i32 @hwpstate_goto_pstate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
