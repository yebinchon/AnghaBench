; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_hwpstate.c_hwpstate_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_hwpstate.c_hwpstate_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32, i32, i32, i32, i32 }
%struct.hwpstate_softc = type { i32, %struct.hwpstate_setting* }
%struct.hwpstate_setting = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*, i32*)* @hwpstate_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwpstate_settings(i32 %0, %struct.cf_setting* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cf_setting*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hwpstate_softc*, align 8
  %9 = alloca %struct.hwpstate_setting, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.cf_setting* %1, %struct.cf_setting** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %12 = icmp eq %struct.cf_setting* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %74

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.hwpstate_softc* @device_get_softc(i32 %19)
  store %struct.hwpstate_softc* %20, %struct.hwpstate_softc** %8, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hwpstate_softc*, %struct.hwpstate_softc** %8, align 8
  %24 = getelementptr inbounds %struct.hwpstate_softc, %struct.hwpstate_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @E2BIG, align 4
  store i32 %28, i32* %4, align 4
  br label %74

29:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %64, %29
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.hwpstate_softc*, %struct.hwpstate_softc** %8, align 8
  %33 = getelementptr inbounds %struct.hwpstate_softc, %struct.hwpstate_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %69

36:                                               ; preds = %30
  %37 = load %struct.hwpstate_softc*, %struct.hwpstate_softc** %8, align 8
  %38 = getelementptr inbounds %struct.hwpstate_softc, %struct.hwpstate_softc* %37, i32 0, i32 1
  %39 = load %struct.hwpstate_setting*, %struct.hwpstate_setting** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %39, i64 %41
  %43 = bitcast %struct.hwpstate_setting* %9 to i8*
  %44 = bitcast %struct.hwpstate_setting* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 16, i1 false)
  %45 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %9, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %48 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %9, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %52 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %9, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %56 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %9, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %60 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %63 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %36
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  %67 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %68 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %67, i32 1
  store %struct.cf_setting* %68, %struct.cf_setting** %6, align 8
  br label %30

69:                                               ; preds = %30
  %70 = load %struct.hwpstate_softc*, %struct.hwpstate_softc** %8, align 8
  %71 = getelementptr inbounds %struct.hwpstate_softc, %struct.hwpstate_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %69, %27, %16
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.hwpstate_softc* @device_get_softc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
