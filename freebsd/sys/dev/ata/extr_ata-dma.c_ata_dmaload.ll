; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-dma.c_ata_dmaload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-dma.c_ata_dmaload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_request = type { i32, i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i8* }
%struct.ata_channel = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.ata_dmasetprd_args = type { i32, i32, i8* }

@.str = private unnamed_addr constant [8 x i8] c"dmaload\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"FAILURE - already active DMA on this device\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"FAILURE - zero length DMA transfer attempted\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"FAILURE - odd-sized DMA transfer attempt %d %% %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"FAILURE - oversized DMA transfer attempt %d > %d\0A\00", align 1
@ATA_R_DATA_IN_CCB = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"FAILURE - load data\0A\00", align 1
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@ATA_R_READ = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_request*, i8*, i32*)* @ata_dmaload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_dmaload(%struct.ata_request* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_request*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ata_channel*, align 8
  %9 = alloca %struct.ata_dmasetprd_args, align 8
  %10 = alloca i32, align 4
  store %struct.ata_request* %0, %struct.ata_request** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %12 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.ata_channel* @device_get_softc(i32 %13)
  store %struct.ata_channel* %14, %struct.ata_channel** %8, align 8
  %15 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %16 = call i32 @ATA_DEBUG_RQ(%struct.ata_request* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %18 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %23 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i32, i8*, ...) @device_printf(i32 %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EIO, align 4
  store i32 %26, i32* %4, align 4
  br label %213

27:                                               ; preds = %3
  %28 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %29 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %34 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32, i8*, ...) @device_printf(i32 %35, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @EIO, align 4
  store i32 %37, i32* %4, align 4
  br label %213

38:                                               ; preds = %27
  %39 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %40 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %43 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = and i32 %41, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %38
  %50 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %51 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %54 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %57 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32, i8*, ...) @device_printf(i32 %52, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %55, i32 %59)
  %61 = load i32, i32* @EIO, align 4
  store i32 %61, i32* %4, align 4
  br label %213

62:                                               ; preds = %38
  %63 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %64 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %67 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %65, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %62
  %72 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %73 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %76 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %79 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i8*, ...) @device_printf(i32 %74, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %77, i32 %81)
  %83 = load i32, i32* @EIO, align 4
  store i32 %83, i32* %4, align 4
  br label %213

84:                                               ; preds = %62
  %85 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %86 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 0
  %90 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %91 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %90, i32 0, i32 2
  store %struct.TYPE_4__* %89, %struct.TYPE_4__** %91, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr inbounds %struct.ata_dmasetprd_args, %struct.ata_dmasetprd_args* %9, i32 0, i32 2
  store i8* %95, i8** %96, align 8
  br label %104

97:                                               ; preds = %84
  %98 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %99 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 4
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds %struct.ata_dmasetprd_args, %struct.ata_dmasetprd_args* %9, i32 0, i32 2
  store i8* %102, i8** %103, align 8
  br label %104

104:                                              ; preds = %97, %94
  %105 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %106 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @ATA_R_DATA_IN_CCB, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %131

111:                                              ; preds = %104
  %112 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %113 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %112, i32 0, i32 2
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %118 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %117, i32 0, i32 2
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %123 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %126 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %130 = call i32 @bus_dmamap_load_ccb(i32 %116, i32 %121, i32 %124, i32 %128, %struct.ata_dmasetprd_args* %9, i32 %129)
  store i32 %130, i32* %10, align 4
  br label %154

131:                                              ; preds = %104
  %132 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %133 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %132, i32 0, i32 2
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %138 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %137, i32 0, i32 2
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %143 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %146 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %149 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %153 = call i32 @bus_dmamap_load(i32 %136, i32 %141, i32 %144, i32 %147, i32 %151, %struct.ata_dmasetprd_args* %9, i32 %152)
  store i32 %153, i32* %10, align 4
  br label %154

154:                                              ; preds = %131, %111
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.ata_dmasetprd_args, %struct.ata_dmasetprd_args* %9, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  store i32 %159, i32* %10, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %157, %154
  %162 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %163 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = call i32 (i32, i8*, ...) @device_printf(i32 %164, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %209

166:                                              ; preds = %157
  %167 = load i32*, i32** %7, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.ata_dmasetprd_args, %struct.ata_dmasetprd_args* %9, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %7, align 8
  store i32 %171, i32* %172, align 4
  br label %173

173:                                              ; preds = %169, %166
  %174 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %175 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %174, i32 0, i32 2
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %180 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %179, i32 0, i32 2
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %185 = call i32 @bus_dmamap_sync(i32 %178, i32 %183, i32 %184)
  %186 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %187 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %186, i32 0, i32 2
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %192 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %191, i32 0, i32 2
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %197 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @ATA_R_READ, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %173
  %203 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  br label %206

204:                                              ; preds = %173
  %205 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  br label %206

206:                                              ; preds = %204, %202
  %207 = phi i32 [ %203, %202 ], [ %205, %204 ]
  %208 = call i32 @bus_dmamap_sync(i32 %190, i32 %195, i32 %207)
  store i32 0, i32* %4, align 4
  br label %213

209:                                              ; preds = %161
  %210 = load %struct.ata_request*, %struct.ata_request** %5, align 8
  %211 = call i32 @ata_dmaunload(%struct.ata_request* %210)
  %212 = load i32, i32* @EIO, align 4
  store i32 %212, i32* %4, align 4
  br label %213

213:                                              ; preds = %209, %206, %71, %49, %32, %21
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_DEBUG_RQ(%struct.ata_request*, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bus_dmamap_load_ccb(i32, i32, i32, i32, %struct.ata_dmasetprd_args*, i32) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.ata_dmasetprd_args*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @ata_dmaunload(%struct.ata_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
