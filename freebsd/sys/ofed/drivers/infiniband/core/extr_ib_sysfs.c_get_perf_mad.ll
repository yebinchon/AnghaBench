; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sysfs.c_get_perf_mad.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sysfs.c_get_perf_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 (%struct.ib_device*, i32, i32, i32*, i32*, %struct.ib_mad_hdr*, i64, %struct.ib_mad_hdr*, i64*, i32*)* }
%struct.ib_mad_hdr = type { i32 }
%struct.ib_mad = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_PERF_MGMT = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_GET = common dso_local global i32 0, align 4
@IB_PMA_CLASS_PORT_INFO = common dso_local global i64 0, align 8
@IB_MAD_IGNORE_MKEY = common dso_local global i32 0, align 4
@IB_MAD_RESULT_SUCCESS = common dso_local global i32 0, align 4
@IB_MAD_RESULT_REPLY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i64, i8*, i32, i64)* @get_perf_mad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_perf_mad(%struct.ib_device* %0, i32 %1, i64 %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.ib_mad*, align 8
  %15 = alloca %struct.ib_mad*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i64 32, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %19 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %20 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %19, i32 0, i32 0
  %21 = load i32 (%struct.ib_device*, i32, i32, i32*, i32*, %struct.ib_mad_hdr*, i64, %struct.ib_mad_hdr*, i64*, i32*)*, i32 (%struct.ib_device*, i32, i32, i32*, i32*, %struct.ib_mad_hdr*, i64, %struct.ib_mad_hdr*, i64*, i32*)** %20, align 8
  %22 = icmp ne i32 (%struct.ib_device*, i32, i32, i32*, i32*, %struct.ib_mad_hdr*, i64, %struct.ib_mad_hdr*, i64*, i32*)* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @ENOSYS, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %109

26:                                               ; preds = %6
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.ib_mad* @kzalloc(i32 32, i32 %27)
  store %struct.ib_mad* %28, %struct.ib_mad** %14, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.ib_mad* @kmalloc(i32 32, i32 %29)
  store %struct.ib_mad* %30, %struct.ib_mad** %15, align 8
  %31 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %32 = icmp ne %struct.ib_mad* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %35 = icmp ne %struct.ib_mad* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33, %26
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %18, align 4
  br label %103

39:                                               ; preds = %33
  %40 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %41 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load i32, i32* @IB_MGMT_CLASS_PERF_MGMT, align 4
  %44 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %45 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  store i32 %43, i32* %46, align 4
  %47 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %48 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = load i32, i32* @IB_MGMT_METHOD_GET, align 4
  %51 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %52 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  store i32 %50, i32* %53, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %56 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i64 %54, i64* %57, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @IB_PMA_CLASS_PORT_INFO, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %39
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %64 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 41
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %61, %39
  %68 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %69 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %68, i32 0, i32 0
  %70 = load i32 (%struct.ib_device*, i32, i32, i32*, i32*, %struct.ib_mad_hdr*, i64, %struct.ib_mad_hdr*, i64*, i32*)*, i32 (%struct.ib_device*, i32, i32, i32*, i32*, %struct.ib_mad_hdr*, i64, %struct.ib_mad_hdr*, i64*, i32*)** %69, align 8
  %71 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %72 = load i32, i32* @IB_MAD_IGNORE_MKEY, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %75 = bitcast %struct.ib_mad* %74 to %struct.ib_mad_hdr*
  %76 = load i64, i64* %16, align 8
  %77 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %78 = bitcast %struct.ib_mad* %77 to %struct.ib_mad_hdr*
  %79 = call i32 %70(%struct.ib_device* %71, i32 %72, i32 %73, i32* null, i32* null, %struct.ib_mad_hdr* %75, i64 %76, %struct.ib_mad_hdr* %78, i64* %16, i32* %17)
  %80 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %81 = load i32, i32* @IB_MAD_RESULT_REPLY, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = load i32, i32* @IB_MAD_RESULT_SUCCESS, align 4
  %85 = load i32, i32* @IB_MAD_RESULT_REPLY, align 4
  %86 = or i32 %84, %85
  %87 = icmp ne i32 %83, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %67
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %18, align 4
  br label %103

91:                                               ; preds = %67
  %92 = load i8*, i8** %11, align 8
  %93 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %94 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i64, i64* %13, align 8
  %100 = call i32 @memcpy(i8* %92, i32* %98, i64 %99)
  %101 = load i64, i64* %13, align 8
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %18, align 4
  br label %103

103:                                              ; preds = %91, %88, %36
  %104 = load %struct.ib_mad*, %struct.ib_mad** %14, align 8
  %105 = call i32 @kfree(%struct.ib_mad* %104)
  %106 = load %struct.ib_mad*, %struct.ib_mad** %15, align 8
  %107 = call i32 @kfree(%struct.ib_mad* %106)
  %108 = load i32, i32* %18, align 4
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %103, %23
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local %struct.ib_mad* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_mad* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @kfree(%struct.ib_mad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
