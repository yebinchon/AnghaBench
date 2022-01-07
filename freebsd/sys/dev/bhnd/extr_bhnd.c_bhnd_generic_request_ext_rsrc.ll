; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd.c_bhnd_generic_request_ext_rsrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd.c_bhnd_generic_request_ext_rsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_softc = type { i32 }
%struct.bhnd_core_clkctl = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no active PMU allocation\00", align 1
@BHND_CCS_ERSRC_MAX = common dso_local global i32 0, align 4
@BHND_CCS_ERSRC_REQ = common dso_local global i32 0, align 4
@BHND_CCS_ERSRC_STS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_generic_request_ext_rsrc(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bhnd_softc*, align 8
  %9 = alloca %struct.bhnd_core_clkctl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i64, i64* %5, align 8
  %14 = call %struct.bhnd_softc* @device_get_softc(i64 %13)
  store %struct.bhnd_softc* %14, %struct.bhnd_softc** %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @device_get_parent(i64 %15)
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %59

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  %23 = call %struct.bhnd_core_clkctl* @bhnd_get_pmu_info(i64 %22)
  store %struct.bhnd_core_clkctl* %23, %struct.bhnd_core_clkctl** %9, align 8
  %24 = icmp eq %struct.bhnd_core_clkctl* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %21
  %28 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %9, align 8
  %29 = call i32 @BHND_ASSERT_CLKCTL_AVAIL(%struct.bhnd_core_clkctl* %28)
  %30 = load i64, i64* %5, align 8
  %31 = call %struct.bhnd_softc* @device_get_softc(i64 %30)
  store %struct.bhnd_softc* %31, %struct.bhnd_softc** %8, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @BHND_CCS_ERSRC_MAX, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %4, align 4
  br label %59

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  %39 = shl i32 1, %38
  %40 = load i32, i32* @BHND_CCS_ERSRC_REQ, align 4
  %41 = call i32 @BHND_CCS_SET_BITS(i32 %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %7, align 4
  %43 = shl i32 1, %42
  %44 = load i32, i32* @BHND_CCS_ERSRC_STS, align 4
  %45 = call i32 @BHND_CCS_SET_BITS(i32 %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %9, align 8
  %47 = call i32 @BHND_CLKCTL_LOCK(%struct.bhnd_core_clkctl* %46)
  %48 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @BHND_CLKCTL_SET_4(%struct.bhnd_core_clkctl* %48, i32 %49, i32 %50)
  %52 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %9, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @bhnd_core_clkctl_wait(%struct.bhnd_core_clkctl* %52, i32 %53, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %9, align 8
  %57 = call i32 @BHND_CLKCTL_UNLOCK(%struct.bhnd_core_clkctl* %56)
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %37, %35, %19
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.bhnd_softc* @device_get_softc(i64) #1

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.bhnd_core_clkctl* @bhnd_get_pmu_info(i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @BHND_ASSERT_CLKCTL_AVAIL(%struct.bhnd_core_clkctl*) #1

declare dso_local i32 @BHND_CCS_SET_BITS(i32, i32) #1

declare dso_local i32 @BHND_CLKCTL_LOCK(%struct.bhnd_core_clkctl*) #1

declare dso_local i32 @BHND_CLKCTL_SET_4(%struct.bhnd_core_clkctl*, i32, i32) #1

declare dso_local i32 @bhnd_core_clkctl_wait(%struct.bhnd_core_clkctl*, i32, i32) #1

declare dso_local i32 @BHND_CLKCTL_UNLOCK(%struct.bhnd_core_clkctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
