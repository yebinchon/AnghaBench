; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd.c_bhnd_generic_release_ext_rsrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd.c_bhnd_generic_release_ext_rsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_softc = type { i32 }
%struct.bhnd_core_clkctl = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no active PMU allocation\00", align 1
@BHND_CCS_ERSRC_MAX = common dso_local global i32 0, align 4
@BHND_CCS_ERSRC_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_generic_release_ext_rsrc(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bhnd_softc*, align 8
  %9 = alloca %struct.bhnd_core_clkctl*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call %struct.bhnd_softc* @device_get_softc(i64 %11)
  store %struct.bhnd_softc* %12, %struct.bhnd_softc** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @device_get_parent(i64 %13)
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %47

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = call %struct.bhnd_core_clkctl* @bhnd_get_pmu_info(i64 %20)
  store %struct.bhnd_core_clkctl* %21, %struct.bhnd_core_clkctl** %9, align 8
  %22 = icmp eq %struct.bhnd_core_clkctl* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %19
  %26 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %9, align 8
  %27 = call i32 @BHND_ASSERT_CLKCTL_AVAIL(%struct.bhnd_core_clkctl* %26)
  %28 = load i64, i64* %5, align 8
  %29 = call %struct.bhnd_softc* @device_get_softc(i64 %28)
  store %struct.bhnd_softc* %29, %struct.bhnd_softc** %8, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @BHND_CCS_ERSRC_MAX, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %4, align 4
  br label %47

35:                                               ; preds = %25
  %36 = load i32, i32* %7, align 4
  %37 = shl i32 1, %36
  %38 = load i32, i32* @BHND_CCS_ERSRC_REQ, align 4
  %39 = call i32 @BHND_CCS_SET_BITS(i32 %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %9, align 8
  %41 = call i32 @BHND_CLKCTL_LOCK(%struct.bhnd_core_clkctl* %40)
  %42 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @BHND_CLKCTL_SET_4(%struct.bhnd_core_clkctl* %42, i32 0, i32 %43)
  %45 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %9, align 8
  %46 = call i32 @BHND_CLKCTL_UNLOCK(%struct.bhnd_core_clkctl* %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %35, %33, %17
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.bhnd_softc* @device_get_softc(i64) #1

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.bhnd_core_clkctl* @bhnd_get_pmu_info(i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @BHND_ASSERT_CLKCTL_AVAIL(%struct.bhnd_core_clkctl*) #1

declare dso_local i32 @BHND_CCS_SET_BITS(i32, i32) #1

declare dso_local i32 @BHND_CLKCTL_LOCK(%struct.bhnd_core_clkctl*) #1

declare dso_local i32 @BHND_CLKCTL_SET_4(%struct.bhnd_core_clkctl*, i32, i32) #1

declare dso_local i32 @BHND_CLKCTL_UNLOCK(%struct.bhnd_core_clkctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
