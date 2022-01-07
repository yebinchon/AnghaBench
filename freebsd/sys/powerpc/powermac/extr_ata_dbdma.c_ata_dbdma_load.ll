; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_ata_dbdma.c_ata_dbdma_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_ata_dbdma.c_ata_dbdma_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_request = type { i32, i32, %struct.TYPE_3__*, i32, i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.ata_channel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 (%struct.ata_request*)*, %struct.TYPE_3__* }
%struct.ata_dbdma_dmaload_args = type { i32, i32, i8* }

@ATA_R_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"FAILURE - zero length DMA transfer attempted\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"FAILURE - non aligned DMA transfer attempted\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"FAILURE - oversized DMA transfer attempt %d > %d\0A\00", align 1
@ata_dbdma_setprd = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"FAILURE - load data\0A\00", align 1
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_request*, i8*, i32*)* @ata_dbdma_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_dbdma_load(%struct.ata_request* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_request*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ata_channel*, align 8
  %9 = alloca %struct.ata_dbdma_dmaload_args, align 8
  %10 = alloca i32, align 4
  store %struct.ata_request* %0, %struct.ata_request** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %12 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = call i8* @device_get_softc(i32 %13)
  %15 = bitcast i8* %14 to %struct.ata_channel*
  store %struct.ata_channel* %15, %struct.ata_channel** %8, align 8
  %16 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %17 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call i8* @device_get_softc(i32 %18)
  %20 = getelementptr inbounds %struct.ata_dbdma_dmaload_args, %struct.ata_dbdma_dmaload_args* %9, i32 0, i32 2
  store i8* %19, i8** %20, align 8
  %21 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %22 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ATA_R_READ, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = getelementptr inbounds %struct.ata_dbdma_dmaload_args, %struct.ata_dbdma_dmaload_args* %9, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %31 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %3
  %35 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %36 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i32, i8*, ...) @device_printf(i32 %37, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EIO, align 4
  store i32 %39, i32* %4, align 4
  br label %174

40:                                               ; preds = %3
  %41 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %42 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %45 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = and i64 %43, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %40
  %53 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %54 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %57 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = and i32 %55, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %52, %40
  %64 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %65 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i32, i8*, ...) @device_printf(i32 %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @EIO, align 4
  store i32 %68, i32* %4, align 4
  br label %174

69:                                               ; preds = %52
  %70 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %71 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %74 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %72, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %69
  %79 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %80 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %83 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %86 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32, i8*, ...) @device_printf(i32 %81, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %88)
  %90 = load i32, i32* @EIO, align 4
  store i32 %90, i32* %4, align 4
  br label %174

91:                                               ; preds = %69
  %92 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %93 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 0
  %97 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %98 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %97, i32 0, i32 2
  store %struct.TYPE_3__* %96, %struct.TYPE_3__** %98, align 8
  %99 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %100 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %99, i32 0, i32 2
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %105 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %104, i32 0, i32 2
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %110 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %113 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %116 = call i32 @bus_dmamap_load(i32 %103, i32 %108, i64 %111, i32 %114, i32* @ata_dbdma_setprd, %struct.ata_dbdma_dmaload_args* %9, i32 %115)
  store i32 %116, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %91
  %119 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %120 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i32, i8*, ...) @device_printf(i32 %121, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %166

123:                                              ; preds = %91
  %124 = load i32*, i32** %7, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.ata_dbdma_dmaload_args, %struct.ata_dbdma_dmaload_args* %9, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %7, align 8
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %126, %123
  %131 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %132 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %131, i32 0, i32 2
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %137 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %136, i32 0, i32 2
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %142 = call i32 @bus_dmamap_sync(i32 %135, i32 %140, i32 %141)
  %143 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %144 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %143, i32 0, i32 2
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %149 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %148, i32 0, i32 2
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %154 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @ATA_R_READ, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %130
  %160 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  br label %163

161:                                              ; preds = %130
  %162 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi i32 [ %160, %159 ], [ %162, %161 ]
  %165 = call i32 @bus_dmamap_sync(i32 %147, i32 %152, i32 %164)
  store i32 0, i32* %4, align 4
  br label %174

166:                                              ; preds = %118
  %167 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %168 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 2
  %170 = load i32 (%struct.ata_request*)*, i32 (%struct.ata_request*)** %169, align 8
  %171 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %172 = call i32 %170(%struct.ata_request* %171)
  %173 = load i32, i32* @EIO, align 4
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %166, %163, %78, %63, %34
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i64, i32, i32*, %struct.ata_dbdma_dmaload_args*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
