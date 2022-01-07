; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_discovery.c_pqisrc_get_dev_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_discovery.c_pqisrc_get_dev_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, i32, i32, i32, i32, i32 }

@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@OBDR_TAPE_INQ_SIZE = common dso_local global i32 0, align 4
@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"DEV_TYPE: %x VENDOR: %s MODEL: %s\0A\00", align 1
@DISK_DEVICE = common dso_local global i32 0, align 4
@SA_RAID_UNKNOWN = common dso_local global i32 0, align 4
@SA_LV_OK = common dso_local global i64 0, align 8
@ROM_DEVICE = common dso_local global i32 0, align 4
@OBDR_SIG_OFFSET = common dso_local global i64 0, align 8
@OBDR_TAPE_SIG = common dso_local global i32 0, align 4
@OBDR_SIG_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @pqisrc_get_dev_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqisrc_get_dev_data(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %8 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %8, i32* %6, align 4
  %9 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @OBDR_TAPE_INQ_SIZE, align 4
  %12 = call i32* @os_mem_alloc(i32* %10, i32 %11)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %16, i32* %3, align 4
  br label %135

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* @OBDR_TAPE_INQ_SIZE, align 4
  %24 = call i32 @pqisrc_send_scsi_inquiry(i32* %18, i32 %21, i32 0, i32* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %127

28:                                               ; preds = %17
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 8
  %31 = call i32 @pqisrc_sanitize_inquiry_string(i32* %30, i32 8)
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 16
  %34 = call i32 @pqisrc_sanitize_inquiry_string(i32* %33, i32 16)
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 31
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 8
  %46 = call i32 @memcpy(i32 %43, i32* %45, i32 4)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 16
  %52 = call i32 @memcpy(i32 %49, i32* %51, i32 4)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @DBG_DISC(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %58, i32 %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = call i64 @pqisrc_is_logical_device(%struct.TYPE_7__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %108

66:                                               ; preds = %28
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @DISK_DEVICE, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %108

72:                                               ; preds = %66
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %74 = call i64 @pqisrc_is_external_raid_device(%struct.TYPE_7__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = load i32, i32* @SA_RAID_UNKNOWN, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  %80 = load i64, i64* @SA_LV_OK, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  store i32 0, i32* %84, align 8
  br label %107

85:                                               ; preds = %72
  %86 = load i32*, i32** %4, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = call i32 @pqisrc_get_dev_raid_level(i32* %86, %struct.TYPE_7__* %87)
  %89 = load i32*, i32** %4, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %91 = call i32 @pqisrc_get_dev_ioaccel_status(i32* %89, %struct.TYPE_7__* %90)
  %92 = load i32*, i32** %4, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @pqisrc_get_dev_vol_status(i32* %92, i32 %95)
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @SA_LV_OK, align 8
  %103 = icmp ne i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %85, %76
  br label %108

108:                                              ; preds = %107, %66, %28
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @ROM_DEVICE, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %108
  %115 = load i32*, i32** %7, align 8
  %116 = load i64, i64* @OBDR_SIG_OFFSET, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* @OBDR_TAPE_SIG, align 4
  %119 = load i32, i32* @OBDR_SIG_LEN, align 4
  %120 = call i64 @memcmp(i32* %117, i32 %118, i32 %119)
  %121 = icmp eq i64 %120, 0
  br label %122

122:                                              ; preds = %114, %108
  %123 = phi i1 [ false, %108 ], [ %121, %114 ]
  %124 = zext i1 %123 to i32
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %122, %27
  %128 = load i32*, i32** %4, align 8
  %129 = load i32*, i32** %7, align 8
  %130 = bitcast i32* %129 to i8*
  %131 = load i32, i32* @OBDR_TAPE_INQ_SIZE, align 4
  %132 = call i32 @os_mem_free(i32* %128, i8* %130, i32 %131)
  %133 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %127, %15
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32* @os_mem_alloc(i32*, i32) #1

declare dso_local i32 @pqisrc_send_scsi_inquiry(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @pqisrc_sanitize_inquiry_string(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @DBG_DISC(i8*, i32, i32, i32) #1

declare dso_local i64 @pqisrc_is_logical_device(%struct.TYPE_7__*) #1

declare dso_local i64 @pqisrc_is_external_raid_device(%struct.TYPE_7__*) #1

declare dso_local i32 @pqisrc_get_dev_raid_level(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @pqisrc_get_dev_ioaccel_status(i32*, %struct.TYPE_7__*) #1

declare dso_local i64 @pqisrc_get_dev_vol_status(i32*, i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @os_mem_free(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
