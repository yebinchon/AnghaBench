; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_smist.c_smist_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_smist.c_smist_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32 }
%struct.smist_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"requested setting %d\0A\00", align 1
@GET_STATE = common dso_local global i32 0, align 4
@SET_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"set_state return %d, tried %d times\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*)* @smist_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smist_set(i32 %0, %struct.cf_setting* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cf_setting*, align 8
  %6 = alloca %struct.smist_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cf_setting* %1, %struct.cf_setting** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.smist_softc* @device_get_softc(i32 %11)
  store %struct.smist_softc* %12, %struct.smist_softc** %6, align 8
  %13 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %14 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.smist_softc*, %struct.smist_softc** %6, align 8
  %17 = getelementptr inbounds %struct.smist_softc, %struct.smist_softc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @CPUFREQ_CMP(i32 %15, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %41

25:                                               ; preds = %2
  %26 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %27 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.smist_softc*, %struct.smist_softc** %6, align 8
  %30 = getelementptr inbounds %struct.smist_softc, %struct.smist_softc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @CPUFREQ_CMP(i32 %28, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  store i32 1, i32* %9, align 4
  br label %40

38:                                               ; preds = %25
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %3, align 4
  br label %78

40:                                               ; preds = %37
  br label %41

41:                                               ; preds = %40, %24
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (i32, i8*, i32, ...) @DPRINT(i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.smist_softc*, %struct.smist_softc** %6, align 8
  %46 = load i32, i32* @GET_STATE, align 4
  %47 = call i32 @getset_state(%struct.smist_softc* %45, i32* %8, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %78

52:                                               ; preds = %41
  store i32 3, i32* %10, align 4
  br label %53

53:                                               ; preds = %69, %52
  %54 = load %struct.smist_softc*, %struct.smist_softc** %6, align 8
  %55 = load i32, i32* @SET_STATE, align 4
  %56 = call i32 @getset_state(%struct.smist_softc* %54, i32* %9, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i32 @DELAY(i32 200)
  br label %61

61:                                               ; preds = %59, %53
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br label %69

69:                                               ; preds = %65, %62
  %70 = phi i1 [ false, %62 ], [ %68, %65 ]
  br i1 %70, label %53, label %71

71:                                               ; preds = %69
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %10, align 4
  %75 = sub nsw i32 4, %74
  %76 = call i32 (i32, i8*, i32, ...) @DPRINT(i32 %72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %75)
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %71, %51, %38
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.smist_softc* @device_get_softc(i32) #1

declare dso_local i64 @CPUFREQ_CMP(i32, i32) #1

declare dso_local i32 @DPRINT(i32, i8*, i32, ...) #1

declare dso_local i32 @getset_state(%struct.smist_softc*, i32*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
