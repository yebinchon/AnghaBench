; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_discovery.c_pqisrc_update_log_dev_qdepth.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_discovery.c_pqisrc_update_log_dev_qdepth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_14__*** }
%struct.TYPE_14__ = type { i64, i32, i32, i32, %struct.TYPE_13__*, i32* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@PQI_MAX_DEVICES = common dso_local global i32 0, align 4
@PQI_MAX_MULTILUN = common dso_local global i32 0, align 4
@DISK_DEVICE = common dso_local global i64 0, align 8
@PQI_LOGICAL_DISK_DEFAULT_MAX_QUEUE_DEPTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Failed to find physical disk handle for logical drive %016llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @pqisrc_update_log_dev_qdepth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqisrc_update_log_dev_qdepth(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %13 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %153, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @PQI_MAX_DEVICES, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %156

18:                                               ; preds = %14
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %149, %18
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @PQI_MAX_MULTILUN, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %152

23:                                               ; preds = %19
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_14__***, %struct.TYPE_14__**** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_14__**, %struct.TYPE_14__*** %26, i64 %28
  %30 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %30, i64 %32
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = icmp eq %struct.TYPE_14__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  br label %149

37:                                               ; preds = %23
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_14__***, %struct.TYPE_14__**** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_14__**, %struct.TYPE_14__*** %40, i64 %42
  %44 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %44, i64 %46
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  store %struct.TYPE_14__* %48, %struct.TYPE_14__** %8, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DISK_DEVICE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %37
  br label %149

55:                                               ; preds = %37
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %57 = call i32 @pqisrc_is_logical_device(%struct.TYPE_14__* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  br label %149

60:                                               ; preds = %55
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %62 = call i64 @pqisrc_is_external_raid_device(%struct.TYPE_14__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %149

65:                                               ; preds = %60
  %66 = load i32, i32* @PQI_LOGICAL_DISK_DEFAULT_MAX_QUEUE_DEPTH, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  store %struct.TYPE_13__* %71, %struct.TYPE_13__** %7, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %73 = icmp ne %struct.TYPE_13__* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %65
  br label %158

75:                                               ; preds = %65
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  store %struct.TYPE_11__* %78, %struct.TYPE_11__** %9, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @LE_16(i32 %81)
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @LE_16(i32 %85)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @LE_16(i32 %89)
  %91 = add i32 %86, %90
  %92 = mul i32 %82, %91
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @LE_16(i32 %96)
  %98 = mul i32 %93, %97
  store i32 %98, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %12, align 4
  br label %99

99:                                               ; preds = %142, %75
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %103, label %145

103:                                              ; preds = %99
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %106 = load i32, i32* %12, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call %struct.TYPE_14__* @pqisrc_identify_device_via_ioaccel(%struct.TYPE_12__* %104, i32 %110)
  store %struct.TYPE_14__* %111, %struct.TYPE_14__** %10, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %113 = icmp ne %struct.TYPE_14__* %112, null
  br i1 %113, label %136, label %114

114:                                              ; preds = %103
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 5
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @BE_64(i32 %119)
  %121 = call i32 @DBG_WARN(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i64 %120)
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 2
  store i32 0, i32* %123, align 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 3
  store i32 0, i32* %125, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %127 = icmp ne %struct.TYPE_13__* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %114
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %131 = bitcast %struct.TYPE_13__* %130 to i8*
  %132 = call i32 @os_mem_free(%struct.TYPE_12__* %129, i8* %131, i32 24)
  br label %133

133:                                              ; preds = %128, %114
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %135, align 8
  br label %158

136:                                              ; preds = %103
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = add i32 %140, %139
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %136
  %143 = load i32, i32* %12, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %12, align 4
  br label %99

145:                                              ; preds = %99
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  br label %149

149:                                              ; preds = %145, %64, %59, %54, %36
  %150 = load i32, i32* %11, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %11, align 4
  br label %19

152:                                              ; preds = %19
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %3, align 4
  %155 = add i32 %154, 1
  store i32 %155, i32* %3, align 4
  br label %14

156:                                              ; preds = %14
  %157 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %133, %74
  ret void
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @pqisrc_is_logical_device(%struct.TYPE_14__*) #1

declare dso_local i64 @pqisrc_is_external_raid_device(%struct.TYPE_14__*) #1

declare dso_local i32 @LE_16(i32) #1

declare dso_local %struct.TYPE_14__* @pqisrc_identify_device_via_ioaccel(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @DBG_WARN(i8*, i64) #1

declare dso_local i64 @BE_64(i32) #1

declare dso_local i32 @os_mem_free(%struct.TYPE_12__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
