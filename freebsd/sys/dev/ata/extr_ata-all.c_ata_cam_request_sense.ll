; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_cam_request_sense.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_cam_request_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_request = type { i64, i32, %union.ccb*, i32, i64, i32, i32, i32, %struct.TYPE_8__, i8*, i32, i32* }
%union.ccb = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.ata_channel = type { i32, i32, %struct.ata_request*, %struct.TYPE_12__, i32, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i64 (%struct.ata_request*)* }
%struct.TYPE_10__ = type { i32, i64, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@ATAPI_REQUEST_SENSE = common dso_local global i32 0, align 4
@ATA_R_ATAPI = common dso_local global i32 0, align 4
@ATA_R_ATAPI16 = common dso_local global i32 0, align 4
@ATA_DMA = common dso_local global i64 0, align 8
@ATA_R_DMA = common dso_local global i32 0, align 4
@ATA_R_READ = common dso_local global i32 0, align 4
@CALLOUT_RETURNUNLOCKED = common dso_local global i32 0, align 4
@ATA_ACTIVE = common dso_local global i32 0, align 4
@ATA_OP_FINISHED = common dso_local global i64 0, align 8
@ATA_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ata_request*)* @ata_cam_request_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_cam_request_sense(i32 %0, %struct.ata_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_request*, align 8
  %5 = alloca %struct.ata_channel*, align 8
  %6 = alloca %union.ccb*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ata_request* %1, %struct.ata_request** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.ata_channel* @device_get_softc(i32 %7)
  store %struct.ata_channel* %8, %struct.ata_channel** %5, align 8
  %9 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %10 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %9, i32 0, i32 2
  %11 = load %union.ccb*, %union.ccb** %10, align 8
  store %union.ccb* %11, %union.ccb** %6, align 8
  %12 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %13 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %15 = call i32 @bzero(%struct.ata_request* %14, i32 88)
  %16 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %17 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %16, i32 0, i32 11
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %20 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %19, i32 0, i32 10
  store i32 %18, i32* %20, align 8
  %21 = load %union.ccb*, %union.ccb** %6, align 8
  %22 = bitcast %union.ccb* %21 to %struct.TYPE_11__*
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %26 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %union.ccb*, %union.ccb** %6, align 8
  %28 = bitcast %union.ccb* %27 to %struct.TYPE_9__*
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = bitcast i32* %29 to i8*
  %31 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %32 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %31, i32 0, i32 9
  store i8* %30, i8** %32, align 8
  %33 = load %union.ccb*, %union.ccb** %6, align 8
  %34 = bitcast %union.ccb* %33 to %struct.TYPE_9__*
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %38 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @ATAPI_REQUEST_SENSE, align 4
  %40 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %41 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %40, i32 0, i32 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %39, i32* %45, align 4
  %46 = load %union.ccb*, %union.ccb** %6, align 8
  %47 = bitcast %union.ccb* %46 to %struct.TYPE_9__*
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %51 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %50, i32 0, i32 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  store i32 %49, i32* %55, align 4
  %56 = load i32, i32* @ATA_R_ATAPI, align 4
  %57 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %58 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %62 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %61, i32 0, i32 5
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = load %union.ccb*, %union.ccb** %6, align 8
  %65 = bitcast %union.ccb* %64 to %struct.TYPE_11__*
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 16
  br i1 %71, label %72, label %78

72:                                               ; preds = %2
  %73 = load i32, i32* @ATA_R_ATAPI16, align 4
  %74 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %75 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %72, %2
  %79 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %80 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %79, i32 0, i32 5
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = load %union.ccb*, %union.ccb** %6, align 8
  %83 = bitcast %union.ccb* %82 to %struct.TYPE_11__*
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ATA_DMA, align 8
  %90 = icmp sge i64 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %78
  %92 = load i32, i32* @ATA_R_DMA, align 4
  %93 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %94 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %91, %78
  %98 = load i32, i32* @ATA_R_READ, align 4
  %99 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %100 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %104 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %107 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %106, i32 0, i32 5
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = load %union.ccb*, %union.ccb** %6, align 8
  %110 = bitcast %union.ccb* %109 to %struct.TYPE_11__*
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @min(i32 %105, i32 %115)
  %117 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %118 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %117, i32 0, i32 6
  store i32 %116, i32* %118, align 4
  %119 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %120 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %119, i32 0, i32 4
  store i64 0, i64* %120, align 8
  %121 = load %union.ccb*, %union.ccb** %6, align 8
  %122 = bitcast %union.ccb* %121 to %struct.TYPE_11__*
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 999
  %126 = sdiv i32 %125, 1000
  %127 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %128 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 8
  %129 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %130 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %129, i32 0, i32 3
  %131 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %132 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %131, i32 0, i32 4
  %133 = load i32, i32* @CALLOUT_RETURNUNLOCKED, align 4
  %134 = call i32 @callout_init_mtx(i32* %130, i32* %132, i32 %133)
  %135 = load %union.ccb*, %union.ccb** %6, align 8
  %136 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %137 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %136, i32 0, i32 2
  store %union.ccb* %135, %union.ccb** %137, align 8
  %138 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %139 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %140 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %139, i32 0, i32 2
  store %struct.ata_request* %138, %struct.ata_request** %140, align 8
  %141 = load i32, i32* @ATA_ACTIVE, align 4
  %142 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %143 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %145 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i64 (%struct.ata_request*)*, i64 (%struct.ata_request*)** %146, align 8
  %148 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %149 = call i64 %147(%struct.ata_request* %148)
  %150 = load i64, i64* @ATA_OP_FINISHED, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %161

152:                                              ; preds = %97
  %153 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %154 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %153, i32 0, i32 2
  store %struct.ata_request* null, %struct.ata_request** %154, align 8
  %155 = load i32, i32* @ATA_IDLE, align 4
  %156 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %157 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* %3, align 4
  %159 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %160 = call i32 @ata_cam_end_transaction(i32 %158, %struct.ata_request* %159)
  br label %161

161:                                              ; preds = %152, %97
  ret void
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.ata_request*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @ata_cam_end_transaction(i32, %struct.ata_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
