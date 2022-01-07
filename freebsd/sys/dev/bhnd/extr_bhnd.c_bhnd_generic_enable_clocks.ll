; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd.c_bhnd_generic_enable_clocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd.c_bhnd_generic_enable_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_softc = type { i32 }
%struct.bhnd_core_clkctl = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no active PMU allocation\00", align 1
@BHND_CLOCK_DYN = common dso_local global i32 0, align 4
@BHND_CLOCK_ILP = common dso_local global i32 0, align 4
@BHND_CLOCK_ALP = common dso_local global i32 0, align 4
@BHND_CCS_ALPAREQ = common dso_local global i32 0, align 4
@BHND_CCS_ALPAVAIL = common dso_local global i32 0, align 4
@BHND_CLOCK_HT = common dso_local global i32 0, align 4
@BHND_CCS_HTAREQ = common dso_local global i32 0, align 4
@BHND_CCS_HTAVAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%s requested unknown clocks: %#x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BHND_CCS_AREQ_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_generic_enable_clocks(i64 %0, i64 %1, i32 %2) #0 {
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
  br label %109

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
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @BHND_CLOCK_DYN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load i32, i32* @BHND_CLOCK_DYN, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %36, %27
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @BHND_CLOCK_ILP, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32, i32* @BHND_CLOCK_ILP, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @BHND_CLOCK_ALP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load i32, i32* @BHND_CCS_ALPAREQ, align 4
  %58 = load i32, i32* %11, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* @BHND_CCS_ALPAVAIL, align 4
  %61 = load i32, i32* %10, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* @BHND_CLOCK_ALP, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %56, %51
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @BHND_CLOCK_HT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load i32, i32* @BHND_CCS_HTAREQ, align 4
  %74 = load i32, i32* %11, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* @BHND_CCS_HTAVAIL, align 4
  %77 = load i32, i32* %10, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* @BHND_CLOCK_HT, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %7, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %72, %67
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = load i64, i64* %5, align 8
  %88 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %9, align 8
  %89 = getelementptr inbounds %struct.bhnd_core_clkctl, %struct.bhnd_core_clkctl* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @device_get_nameunit(i32 %90)
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @device_printf(i64 %87, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i32, i32* @ENODEV, align 4
  store i32 %94, i32* %4, align 4
  br label %109

95:                                               ; preds = %83
  %96 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %9, align 8
  %97 = call i32 @BHND_CLKCTL_LOCK(%struct.bhnd_core_clkctl* %96)
  %98 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %9, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @BHND_CCS_AREQ_MASK, align 4
  %101 = call i32 @BHND_CLKCTL_SET_4(%struct.bhnd_core_clkctl* %98, i32 %99, i32 %100)
  %102 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %9, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @bhnd_core_clkctl_wait(%struct.bhnd_core_clkctl* %102, i32 %103, i32 %104)
  store i32 %105, i32* %12, align 4
  %106 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %9, align 8
  %107 = call i32 @BHND_CLKCTL_UNLOCK(%struct.bhnd_core_clkctl* %106)
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %95, %86, %19
  %110 = load i32, i32* %4, align 4
  ret i32 %110
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
