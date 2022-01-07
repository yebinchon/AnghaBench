; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_perfmon.c_perfmon_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_perfmon.c_perfmon_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.pmc = type { i32, i32 }
%struct.pmc_data = type { i32, i32 }
%struct.pmc_tstamp = type { i32, i32 }

@FWRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@writerpmc = common dso_local global i32 0, align 4
@tsc_freq = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @perfmon_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perfmon_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.pmc*, align 8
  %13 = alloca %struct.pmc_data*, align 8
  %14 = alloca %struct.pmc_tstamp*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %119 [
    i32 131, label %19
    i32 134, label %46
    i32 130, label %55
    i32 129, label %68
    i32 132, label %81
    i32 133, label %94
    i32 128, label %103
  ]

19:                                               ; preds = %5
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @FWRITE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EPERM, align 4
  store i32 %25, i32* %6, align 4
  br label %123

26:                                               ; preds = %19
  %27 = load i64, i64* %9, align 8
  %28 = inttoptr i64 %27 to %struct.pmc*
  store %struct.pmc* %28, %struct.pmc** %12, align 8
  %29 = load %struct.pmc*, %struct.pmc** %12, align 8
  %30 = getelementptr inbounds %struct.pmc, %struct.pmc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pmc*, %struct.pmc** %12, align 8
  %33 = getelementptr inbounds %struct.pmc, %struct.pmc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @perfmon_setup(i32 %31, i32 %34)
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %26
  %39 = load %struct.pmc*, %struct.pmc** %12, align 8
  %40 = getelementptr inbounds %struct.pmc, %struct.pmc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 1, %41
  %43 = load i32, i32* @writerpmc, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* @writerpmc, align 4
  br label %45

45:                                               ; preds = %38, %26
  br label %121

46:                                               ; preds = %5
  %47 = load i64, i64* %9, align 8
  %48 = inttoptr i64 %47 to %struct.pmc*
  store %struct.pmc* %48, %struct.pmc** %12, align 8
  %49 = load %struct.pmc*, %struct.pmc** %12, align 8
  %50 = getelementptr inbounds %struct.pmc, %struct.pmc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.pmc*, %struct.pmc** %12, align 8
  %53 = getelementptr inbounds %struct.pmc, %struct.pmc* %52, i32 0, i32 1
  %54 = call i32 @perfmon_get(i32 %51, i32* %53)
  store i32 %54, i32* %17, align 4
  br label %121

55:                                               ; preds = %5
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @FWRITE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @EPERM, align 4
  store i32 %61, i32* %6, align 4
  br label %123

62:                                               ; preds = %55
  %63 = load i64, i64* %9, align 8
  %64 = inttoptr i64 %63 to i32*
  store i32* %64, i32** %16, align 8
  %65 = load i32*, i32** %16, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @perfmon_start(i32 %66)
  store i32 %67, i32* %17, align 4
  br label %121

68:                                               ; preds = %5
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @FWRITE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @EPERM, align 4
  store i32 %74, i32* %6, align 4
  br label %123

75:                                               ; preds = %68
  %76 = load i64, i64* %9, align 8
  %77 = inttoptr i64 %76 to i32*
  store i32* %77, i32** %16, align 8
  %78 = load i32*, i32** %16, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @perfmon_stop(i32 %79)
  store i32 %80, i32* %17, align 4
  br label %121

81:                                               ; preds = %5
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @FWRITE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* @EPERM, align 4
  store i32 %87, i32* %6, align 4
  br label %123

88:                                               ; preds = %81
  %89 = load i64, i64* %9, align 8
  %90 = inttoptr i64 %89 to i32*
  store i32* %90, i32** %16, align 8
  %91 = load i32*, i32** %16, align 8
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @perfmon_reset(i32 %92)
  store i32 %93, i32* %17, align 4
  br label %121

94:                                               ; preds = %5
  %95 = load i64, i64* %9, align 8
  %96 = inttoptr i64 %95 to %struct.pmc_data*
  store %struct.pmc_data* %96, %struct.pmc_data** %13, align 8
  %97 = load %struct.pmc_data*, %struct.pmc_data** %13, align 8
  %98 = getelementptr inbounds %struct.pmc_data, %struct.pmc_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.pmc_data*, %struct.pmc_data** %13, align 8
  %101 = getelementptr inbounds %struct.pmc_data, %struct.pmc_data* %100, i32 0, i32 0
  %102 = call i32 @perfmon_read(i32 %99, i32* %101)
  store i32 %102, i32* %17, align 4
  br label %121

103:                                              ; preds = %5
  %104 = call i32 @atomic_load_acq_64(i32* @tsc_freq)
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* @ENOTTY, align 4
  store i32 %108, i32* %17, align 4
  br label %121

109:                                              ; preds = %103
  %110 = load i64, i64* %9, align 8
  %111 = inttoptr i64 %110 to %struct.pmc_tstamp*
  store %struct.pmc_tstamp* %111, %struct.pmc_tstamp** %14, align 8
  %112 = load i32, i32* %15, align 4
  %113 = sdiv i32 %112, 1000000
  %114 = load %struct.pmc_tstamp*, %struct.pmc_tstamp** %14, align 8
  %115 = getelementptr inbounds %struct.pmc_tstamp, %struct.pmc_tstamp* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = call i32 (...) @rdtsc()
  %117 = load %struct.pmc_tstamp*, %struct.pmc_tstamp** %14, align 8
  %118 = getelementptr inbounds %struct.pmc_tstamp, %struct.pmc_tstamp* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  store i32 0, i32* %17, align 4
  br label %121

119:                                              ; preds = %5
  %120 = load i32, i32* @ENOTTY, align 4
  store i32 %120, i32* %17, align 4
  br label %121

121:                                              ; preds = %119, %109, %107, %94, %88, %75, %62, %46, %45
  %122 = load i32, i32* %17, align 4
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %121, %86, %73, %60, %24
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local i32 @perfmon_setup(i32, i32) #1

declare dso_local i32 @perfmon_get(i32, i32*) #1

declare dso_local i32 @perfmon_start(i32) #1

declare dso_local i32 @perfmon_stop(i32) #1

declare dso_local i32 @perfmon_reset(i32) #1

declare dso_local i32 @perfmon_read(i32, i32*) #1

declare dso_local i32 @atomic_load_acq_64(i32*) #1

declare dso_local i32 @rdtsc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
