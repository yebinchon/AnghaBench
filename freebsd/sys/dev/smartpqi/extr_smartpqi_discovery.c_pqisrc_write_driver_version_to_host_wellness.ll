; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_discovery.c_pqisrc_write_driver_version_to_host_wellness.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_discovery.c_pqisrc_write_driver_version_to_host_wellness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.bmic_host_wellness_driver_version = type { i8*, i8*, i8*, i8*, i32 }

@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"failed to allocate memory for host wellness driver_version\0A\00", align 1
@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4
@PQISRC_DRIVER_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"OS name length(%lu) is longer than buffer of driver_version\0A\00", align 1
@BMIC_WRITE_HOST_WELLNESS = common dso_local global i32 0, align 4
@RAID_CTLR_LUNID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqisrc_write_driver_version_to_host_wellness(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bmic_host_wellness_driver_version*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %8 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %8, i32* %4, align 4
  %9 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @memset(i32* %7, i32 0, i32 4)
  store i64 40, i64* %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call %struct.bmic_host_wellness_driver_version* @os_mem_alloc(%struct.TYPE_6__* %11, i64 %12)
  store %struct.bmic_host_wellness_driver_version* %13, %struct.bmic_host_wellness_driver_version** %5, align 8
  %14 = load %struct.bmic_host_wellness_driver_version*, %struct.bmic_host_wellness_driver_version** %5, align 8
  %15 = icmp ne %struct.bmic_host_wellness_driver_version* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = call i32 @DBG_ERR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %18, i32* %2, align 4
  br label %112

19:                                               ; preds = %1
  %20 = load %struct.bmic_host_wellness_driver_version*, %struct.bmic_host_wellness_driver_version** %5, align 8
  %21 = getelementptr inbounds %struct.bmic_host_wellness_driver_version, %struct.bmic_host_wellness_driver_version* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 60, i8* %23, align 1
  %24 = load %struct.bmic_host_wellness_driver_version*, %struct.bmic_host_wellness_driver_version** %5, align 8
  %25 = getelementptr inbounds %struct.bmic_host_wellness_driver_version, %struct.bmic_host_wellness_driver_version* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 72, i8* %27, align 1
  %28 = load %struct.bmic_host_wellness_driver_version*, %struct.bmic_host_wellness_driver_version** %5, align 8
  %29 = getelementptr inbounds %struct.bmic_host_wellness_driver_version, %struct.bmic_host_wellness_driver_version* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  store i8 87, i8* %31, align 1
  %32 = load %struct.bmic_host_wellness_driver_version*, %struct.bmic_host_wellness_driver_version** %5, align 8
  %33 = getelementptr inbounds %struct.bmic_host_wellness_driver_version, %struct.bmic_host_wellness_driver_version* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 3
  store i8 62, i8* %35, align 1
  %36 = load %struct.bmic_host_wellness_driver_version*, %struct.bmic_host_wellness_driver_version** %5, align 8
  %37 = getelementptr inbounds %struct.bmic_host_wellness_driver_version, %struct.bmic_host_wellness_driver_version* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 68, i8* %39, align 1
  %40 = load %struct.bmic_host_wellness_driver_version*, %struct.bmic_host_wellness_driver_version** %5, align 8
  %41 = getelementptr inbounds %struct.bmic_host_wellness_driver_version, %struct.bmic_host_wellness_driver_version* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  store i8 86, i8* %43, align 1
  %44 = call i32 @LE_16(i32 8)
  %45 = load %struct.bmic_host_wellness_driver_version*, %struct.bmic_host_wellness_driver_version** %5, align 8
  %46 = getelementptr inbounds %struct.bmic_host_wellness_driver_version, %struct.bmic_host_wellness_driver_version* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load %struct.bmic_host_wellness_driver_version*, %struct.bmic_host_wellness_driver_version** %5, align 8
  %48 = getelementptr inbounds %struct.bmic_host_wellness_driver_version, %struct.bmic_host_wellness_driver_version* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @strncpy(i8* %49, i32 %52, i32 8)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @strlen(i32 %56)
  %58 = sext i32 %57 to i64
  %59 = icmp ult i64 %58, 8
  br i1 %59, label %60, label %79

60:                                               ; preds = %19
  %61 = load %struct.bmic_host_wellness_driver_version*, %struct.bmic_host_wellness_driver_version** %5, align 8
  %62 = getelementptr inbounds %struct.bmic_host_wellness_driver_version, %struct.bmic_host_wellness_driver_version* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @strlen(i32 %66)
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %63, i64 %68
  %70 = load i32, i32* @PQISRC_DRIVER_VERSION, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @strlen(i32 %73)
  %75 = sext i32 %74 to i64
  %76 = sub i64 8, %75
  %77 = trunc i64 %76 to i32
  %78 = call i32 @strncpy(i8* %69, i32 %70, i32 %77)
  br label %85

79:                                               ; preds = %19
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @strlen(i32 %82)
  %84 = call i32 @DBG_DISC(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %79, %60
  %86 = load %struct.bmic_host_wellness_driver_version*, %struct.bmic_host_wellness_driver_version** %5, align 8
  %87 = getelementptr inbounds %struct.bmic_host_wellness_driver_version, %struct.bmic_host_wellness_driver_version* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 7
  store i8 0, i8* %89, align 1
  %90 = load %struct.bmic_host_wellness_driver_version*, %struct.bmic_host_wellness_driver_version** %5, align 8
  %91 = getelementptr inbounds %struct.bmic_host_wellness_driver_version, %struct.bmic_host_wellness_driver_version* %90, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  store i8 90, i8* %93, align 1
  %94 = load %struct.bmic_host_wellness_driver_version*, %struct.bmic_host_wellness_driver_version** %5, align 8
  %95 = getelementptr inbounds %struct.bmic_host_wellness_driver_version, %struct.bmic_host_wellness_driver_version* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  store i8 90, i8* %97, align 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %99 = load %struct.bmic_host_wellness_driver_version*, %struct.bmic_host_wellness_driver_version** %5, align 8
  %100 = load i64, i64* %6, align 8
  %101 = load i32, i32* @BMIC_WRITE_HOST_WELLNESS, align 4
  %102 = load i64, i64* @RAID_CTLR_LUNID, align 8
  %103 = inttoptr i64 %102 to i32*
  %104 = call i32 @pqisrc_build_send_raid_request(%struct.TYPE_6__* %98, i32* %7, %struct.bmic_host_wellness_driver_version* %99, i64 %100, i32 %101, i32 0, i32* %103, i32* null)
  store i32 %104, i32* %4, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %106 = load %struct.bmic_host_wellness_driver_version*, %struct.bmic_host_wellness_driver_version** %5, align 8
  %107 = bitcast %struct.bmic_host_wellness_driver_version* %106 to i8*
  %108 = load i64, i64* %6, align 8
  %109 = call i32 @os_mem_free(%struct.TYPE_6__* %105, i8* %107, i64 %108)
  %110 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %111 = load i32, i32* %4, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %85, %16
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.bmic_host_wellness_driver_version* @os_mem_alloc(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @DBG_ERR(i8*) #1

declare dso_local i32 @LE_16(i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @DBG_DISC(i8*, i32) #1

declare dso_local i32 @pqisrc_build_send_raid_request(%struct.TYPE_6__*, i32*, %struct.bmic_host_wellness_driver_version*, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @os_mem_free(%struct.TYPE_6__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
