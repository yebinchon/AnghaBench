; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd.c_bhnd_generic_request_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd.c_bhnd_generic_request_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_softc = type { i32 }
%struct.bhnd_core_clkctl = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no active PMU allocation\00", align 1
@BHND_CCS_FORCEILP = common dso_local global i32 0, align 4
@BHND_CCS_FORCEALP = common dso_local global i32 0, align 4
@BHND_CCS_ALPAVAIL = common dso_local global i32 0, align 4
@BHND_CCS_FORCEHT = common dso_local global i32 0, align 4
@BHND_CCS_HTAVAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%s requested unknown clock: %#x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BHND_CCS_FORCE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_generic_request_clock(i64 %0, i64 %1, i32 %2) #0 {
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
  br label %73

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
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %50 [
    i32 130, label %31
    i32 128, label %32
    i32 131, label %36
    i32 129, label %43
  ]

31:                                               ; preds = %27
  br label %59

32:                                               ; preds = %27
  %33 = load i32, i32* @BHND_CCS_FORCEILP, align 4
  %34 = load i32, i32* %11, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %11, align 4
  br label %59

36:                                               ; preds = %27
  %37 = load i32, i32* @BHND_CCS_FORCEALP, align 4
  %38 = load i32, i32* %11, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* @BHND_CCS_ALPAVAIL, align 4
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %10, align 4
  br label %59

43:                                               ; preds = %27
  %44 = load i32, i32* @BHND_CCS_FORCEHT, align 4
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* @BHND_CCS_HTAVAIL, align 4
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  br label %59

50:                                               ; preds = %27
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %9, align 8
  %53 = getelementptr inbounds %struct.bhnd_core_clkctl, %struct.bhnd_core_clkctl* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @device_get_nameunit(i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @device_printf(i64 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* @ENODEV, align 4
  store i32 %58, i32* %4, align 4
  br label %73

59:                                               ; preds = %43, %36, %32, %31
  %60 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %9, align 8
  %61 = call i32 @BHND_CLKCTL_LOCK(%struct.bhnd_core_clkctl* %60)
  %62 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %9, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @BHND_CCS_FORCE_MASK, align 4
  %65 = call i32 @BHND_CLKCTL_SET_4(%struct.bhnd_core_clkctl* %62, i32 %63, i32 %64)
  %66 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @bhnd_core_clkctl_wait(%struct.bhnd_core_clkctl* %66, i32 %67, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %9, align 8
  %71 = call i32 @BHND_CLKCTL_UNLOCK(%struct.bhnd_core_clkctl* %70)
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %59, %50, %19
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.bhnd_softc* @device_get_softc(i64) #1

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.bhnd_core_clkctl* @bhnd_get_pmu_info(i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @BHND_ASSERT_CLKCTL_AVAIL(%struct.bhnd_core_clkctl*) #1

declare dso_local i32 @device_printf(i64, i8*, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

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
