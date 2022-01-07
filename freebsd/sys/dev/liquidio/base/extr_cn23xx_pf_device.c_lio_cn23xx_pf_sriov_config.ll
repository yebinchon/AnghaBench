; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_sriov_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_sriov_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.lio_cn23xx_pf = type { %struct.lio_config* }
%struct.lio_config = type { i32 }

@LIO_23XX = common dso_local global i32 0, align 4
@LIO_CN23XX_PF_MAX_RINGS = common dso_local global i64 0, align 8
@mp_ncpus = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [82 x i8] c"num_queues_per_pf requested %u is more than available rings (%u). Reducing to %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"trs:%d pf_srn:%d num_pf_rings:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*)* @lio_cn23xx_pf_sriov_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_cn23xx_pf_sriov_config(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca %struct.lio_cn23xx_pf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %7 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %8 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.lio_cn23xx_pf*
  store %struct.lio_cn23xx_pf* %10, %struct.lio_cn23xx_pf** %3, align 8
  %11 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %12 = load i32, i32* @LIO_23XX, align 4
  %13 = call i64 @lio_get_config_info(%struct.octeon_device* %11, i32 %12)
  %14 = inttoptr i64 %13 to %struct.lio_config*
  %15 = load %struct.lio_cn23xx_pf*, %struct.lio_cn23xx_pf** %3, align 8
  %16 = getelementptr inbounds %struct.lio_cn23xx_pf, %struct.lio_cn23xx_pf* %15, i32 0, i32 0
  store %struct.lio_config* %14, %struct.lio_config** %16, align 8
  %17 = load i64, i64* @LIO_CN23XX_PF_MAX_RINGS, align 8
  store i64 %17, i64* %6, align 8
  %18 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %19 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %1
  %24 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %25 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %23
  %32 = load i64, i64* @mp_ncpus, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @min(i64 %32, i64 %33)
  store i64 %34, i64* %4, align 8
  %35 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %36 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %37 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @lio_dev_warn(%struct.octeon_device* %35, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i64 %39, i64 %40, i64 %41)
  br label %43

43:                                               ; preds = %31, %23
  br label %48

44:                                               ; preds = %1
  %45 = load i64, i64* @mp_ncpus, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @min(i64 %45, i64 %46)
  store i64 %47, i64* %4, align 8
  br label %48

48:                                               ; preds = %44, %43
  %49 = load i64, i64* %4, align 8
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %52 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i64 %50, i64* %53, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %4, align 8
  %56 = sub nsw i64 %54, %55
  %57 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %58 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i64 %56, i64* %59, align 8
  %60 = load i64, i64* %4, align 8
  %61 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %62 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  %64 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %65 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %66 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %70 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %74 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @lio_dev_dbg(%struct.octeon_device* %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %68, i64 %72, i64 %76)
  ret i32 0
}

declare dso_local i64 @lio_get_config_info(%struct.octeon_device*, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @lio_dev_warn(%struct.octeon_device*, i8*, i64, i64, i64) #1

declare dso_local i32 @lio_dev_dbg(%struct.octeon_device*, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
