; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptmv/extr_entry.c_MvSataResetChannel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptmv/extr_entry.c_MvSataResetChannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }

@MV_FLUSH_TYPE_CALLBACK = common dso_local global i32 0, align 4
@MV_FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"RR18xx [%d,%d]: failed to perform Software reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"RR18xx [%d,%d] Failed to Hard reser the SATA channel\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"RR18xx [%d,%d] Failed to Connect Device\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"channel %d: perform recalibrate command\00", align 1
@MV_NON_UDMA_PROTOCOL_NON_DATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"channel %d: recalibrate failed\00", align 1
@MV_ATA_SET_FEATURES_TRANSFER = common dso_local global i32 0, align 4
@MV_ATA_TRANSFER_PIO_SLOW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"channel %d: Set Features failed\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to enable DMA, channel=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MvSataResetChannel(%struct.TYPE_15__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %10, %struct.TYPE_16__** %6, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @mvSataDisableChannelDma(%struct.TYPE_15__* %11, i64 %12)
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* @MV_FLUSH_TYPE_CALLBACK, align 4
  %17 = call i32 @mvSataFlushDmaQueue(%struct.TYPE_15__* %14, i64 %15, i32 %16)
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @mvStorageDevATASoftResetDevice(%struct.TYPE_15__* %18, i64 %19)
  %21 = load i64, i64* @MV_FALSE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %5, align 8
  %29 = call i32 (i8*, i64, ...) @MV_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %28)
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @hptmv_free_channel(%struct.TYPE_16__* %30, i64 %31)
  store i32 -1, i32* %3, align 4
  br label %133

33:                                               ; preds = %2
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i64 @mvSataChannelHardReset(%struct.TYPE_15__* %34, i64 %35)
  %37 = load i64, i64* @MV_FALSE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %5, align 8
  %45 = call i32 (i8*, i64, ...) @MV_ERROR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %43, i64 %44)
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @hptmv_free_channel(%struct.TYPE_16__* %46, i64 %47)
  store i32 -1, i32* %3, align 4
  br label %133

49:                                               ; preds = %33
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i64 @mvSataIsStorageDeviceConnected(%struct.TYPE_15__* %50, i64 %51)
  %53 = load i64, i64* @MV_FALSE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %5, align 8
  %61 = call i32 (i8*, i64, ...) @MV_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %59, i64 %60)
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @hptmv_free_channel(%struct.TYPE_16__* %62, i64 %63)
  store i32 -1, i32* %3, align 4
  br label %133

65:                                               ; preds = %49
  %66 = load i64, i64* %5, align 8
  %67 = call i32 (i8*, i64, ...) @MV_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %66)
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %69 = load i64, i64* %5, align 8
  %70 = load i32, i32* @MV_NON_UDMA_PROTOCOL_NON_DATA, align 4
  %71 = load i64, i64* @MV_FALSE, align 8
  %72 = call i32 @mvStorageDevATAExecuteNonUDMACommand(%struct.TYPE_15__* %68, i64 %69, i32 %70, i64 %71, i32* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %65
  %75 = load i64, i64* %5, align 8
  %76 = call i32 (i8*, i64, ...) @MV_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %75)
  br label %77

77:                                               ; preds = %74, %65
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %79 = load i64, i64* %5, align 8
  %80 = load i32, i32* @MV_ATA_SET_FEATURES_TRANSFER, align 4
  %81 = load i32, i32* @MV_ATA_TRANSFER_PIO_SLOW, align 4
  %82 = call i64 @mvStorageDevATASetFeatures(%struct.TYPE_15__* %78, i64 %79, i32 %80, i32 %81, i32 0, i32 0, i32 0)
  %83 = load i64, i64* @MV_FALSE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %113, label %85

85:                                               ; preds = %77
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %87 = load i64, i64* %5, align 8
  %88 = load i32, i32* @MV_ATA_SET_FEATURES_TRANSFER, align 4
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = load i64, i64* %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @mvStorageDevATASetFeatures(%struct.TYPE_15__* %86, i64 %87, i32 %88, i32 %95, i32 0, i32 0, i32 0)
  %97 = load i64, i64* @MV_FALSE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %113, label %99

99:                                               ; preds = %85
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %101 = load i64, i64* %5, align 8
  %102 = load i32, i32* @MV_ATA_SET_FEATURES_TRANSFER, align 4
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = load i64, i64* %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @mvStorageDevATASetFeatures(%struct.TYPE_15__* %100, i64 %101, i32 %102, i32 %109, i32 0, i32 0, i32 0)
  %111 = load i64, i64* @MV_FALSE, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %99, %85, %77
  %114 = load i64, i64* %5, align 8
  %115 = call i32 (i8*, i64, ...) @MV_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %114)
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %117 = load i64, i64* %5, align 8
  %118 = call i32 @hptmv_free_channel(%struct.TYPE_16__* %116, i64 %117)
  store i32 -1, i32* %3, align 4
  br label %133

119:                                              ; preds = %99
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %121 = load i64, i64* %5, align 8
  %122 = call i64 @mvSataEnableChannelDma(%struct.TYPE_15__* %120, i64 %121)
  %123 = load i64, i64* @MV_FALSE, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = load i64, i64* %5, align 8
  %127 = call i32 (i8*, i64, ...) @MV_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %126)
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %129 = load i64, i64* %5, align 8
  %130 = call i32 @hptmv_free_channel(%struct.TYPE_16__* %128, i64 %129)
  store i32 -1, i32* %3, align 4
  br label %133

131:                                              ; preds = %119
  br label %132

132:                                              ; preds = %131
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %132, %125, %113, %55, %39, %23
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @mvSataDisableChannelDma(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @mvSataFlushDmaQueue(%struct.TYPE_15__*, i64, i32) #1

declare dso_local i64 @mvStorageDevATASoftResetDevice(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @MV_ERROR(i8*, i64, ...) #1

declare dso_local i32 @hptmv_free_channel(%struct.TYPE_16__*, i64) #1

declare dso_local i64 @mvSataChannelHardReset(%struct.TYPE_15__*, i64) #1

declare dso_local i64 @mvSataIsStorageDeviceConnected(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @mvStorageDevATAExecuteNonUDMACommand(%struct.TYPE_15__*, i64, i32, i64, i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @mvStorageDevATASetFeatures(%struct.TYPE_15__*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i64 @mvSataEnableChannelDma(%struct.TYPE_15__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
