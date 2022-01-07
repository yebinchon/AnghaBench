; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_hwpstate.c_hwpstate_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_hwpstate.c_hwpstate_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32, i32, i32, i32, i32 }
%struct.hwpstate_softc = type { i64, %struct.hwpstate_setting* }
%struct.hwpstate_setting = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MSR_AMD_10H_11H_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*)* @hwpstate_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwpstate_get(i32 %0, %struct.cf_setting* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cf_setting*, align 8
  %6 = alloca %struct.hwpstate_softc*, align 8
  %7 = alloca %struct.hwpstate_setting, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.cf_setting* %1, %struct.cf_setting** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.hwpstate_softc* @device_get_softc(i32 %9)
  store %struct.hwpstate_softc* %10, %struct.hwpstate_softc** %6, align 8
  %11 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %12 = icmp eq %struct.cf_setting* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %52

15:                                               ; preds = %2
  %16 = load i32, i32* @MSR_AMD_10H_11H_STATUS, align 4
  %17 = call i64 @rdmsr(i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load %struct.hwpstate_softc*, %struct.hwpstate_softc** %6, align 8
  %20 = getelementptr inbounds %struct.hwpstate_softc, %struct.hwpstate_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp uge i64 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %3, align 4
  br label %52

25:                                               ; preds = %15
  %26 = load %struct.hwpstate_softc*, %struct.hwpstate_softc** %6, align 8
  %27 = getelementptr inbounds %struct.hwpstate_softc, %struct.hwpstate_softc* %26, i32 0, i32 1
  %28 = load %struct.hwpstate_setting*, %struct.hwpstate_setting** %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %28, i64 %29
  %31 = bitcast %struct.hwpstate_setting* %7 to i8*
  %32 = bitcast %struct.hwpstate_setting* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 16, i1 false)
  %33 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %7, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %36 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %7, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %40 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %7, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %44 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.hwpstate_setting, %struct.hwpstate_setting* %7, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %48 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %51 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %25, %23, %13
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.hwpstate_softc* @device_get_softc(i32) #1

declare dso_local i64 @rdmsr(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
