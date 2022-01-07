; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_setup_fis.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_setup_fis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sata_channel = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.fsl_sata_cmd_tab = type { i32*, i32* }
%union.ccb = type { %struct.TYPE_8__, [32 x i8] }
%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@XPT_SCSI_IO = common dso_local global i64 0, align 8
@ATA_PACKET_CMD = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@ATA_DMA = common dso_local global i64 0, align 8
@ATA_F_DMA = common dso_local global i32 0, align 4
@ATA_D_LBA = common dso_local global i32 0, align 4
@ATA_A_4BIT = common dso_local global i32 0, align 4
@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@CAM_ATAIO_CONTROL = common dso_local global i32 0, align 4
@CAM_ATAIO_FPDMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_sata_channel*, %struct.fsl_sata_cmd_tab*, %union.ccb*, i32)* @fsl_sata_setup_fis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_sata_setup_fis(%struct.fsl_sata_channel* %0, %struct.fsl_sata_cmd_tab* %1, %union.ccb* %2, i32 %3) #0 {
  %5 = alloca %struct.fsl_sata_channel*, align 8
  %6 = alloca %struct.fsl_sata_cmd_tab*, align 8
  %7 = alloca %union.ccb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.fsl_sata_channel* %0, %struct.fsl_sata_channel** %5, align 8
  store %struct.fsl_sata_cmd_tab* %1, %struct.fsl_sata_cmd_tab** %6, align 8
  store %union.ccb* %2, %union.ccb** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.fsl_sata_cmd_tab*, %struct.fsl_sata_cmd_tab** %6, align 8
  %11 = getelementptr inbounds %struct.fsl_sata_cmd_tab, %struct.fsl_sata_cmd_tab* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call i32 @bzero(i32* %14, i32 32)
  %16 = load i32*, i32** %9, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 39, i32* %17, align 4
  %18 = load %union.ccb*, %union.ccb** %7, align 8
  %19 = bitcast %union.ccb* %18 to %struct.TYPE_8__*
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 15
  %23 = load i32*, i32** %9, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %22, i32* %24, align 4
  %25 = load %union.ccb*, %union.ccb** %7, align 8
  %26 = bitcast %union.ccb* %25 to %struct.TYPE_8__*
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @XPT_SCSI_IO, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %130

31:                                               ; preds = %4
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, 128
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @ATA_PACKET_CMD, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32 %36, i32* %38, align 4
  %39 = load %union.ccb*, %union.ccb** %7, align 8
  %40 = bitcast %union.ccb* %39 to %struct.TYPE_8__*
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @CAM_DIR_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @CAM_DIR_NONE, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %31
  %48 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %49 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = load %union.ccb*, %union.ccb** %7, align 8
  %52 = bitcast %union.ccb* %51 to %struct.TYPE_8__*
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ATA_DMA, align 8
  %60 = icmp sge i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %47
  %62 = load i32, i32* @ATA_F_DMA, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  store i32 %62, i32* %64, align 4
  br label %79

65:                                               ; preds = %47, %31
  %66 = load %union.ccb*, %union.ccb** %7, align 8
  %67 = bitcast %union.ccb* %66 to %struct.TYPE_10__*
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 5
  store i32 %69, i32* %71, align 4
  %72 = load %union.ccb*, %union.ccb** %7, align 8
  %73 = bitcast %union.ccb* %72 to %struct.TYPE_10__*
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = ashr i32 %75, 8
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 6
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %65, %61
  %80 = load i32, i32* @ATA_D_LBA, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 7
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @ATA_A_4BIT, align 4
  %84 = load i32*, i32** %9, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 15
  store i32 %83, i32* %85, align 4
  %86 = load %union.ccb*, %union.ccb** %7, align 8
  %87 = bitcast %union.ccb* %86 to %struct.TYPE_8__*
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @CAM_CDB_POINTER, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %79
  %94 = load %union.ccb*, %union.ccb** %7, align 8
  %95 = bitcast %union.ccb* %94 to %struct.TYPE_10__*
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  br label %105

99:                                               ; preds = %79
  %100 = load %union.ccb*, %union.ccb** %7, align 8
  %101 = bitcast %union.ccb* %100 to %struct.TYPE_10__*
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  br label %105

105:                                              ; preds = %99, %93
  %106 = phi i32 [ %98, %93 ], [ %104, %99 ]
  %107 = load %struct.fsl_sata_cmd_tab*, %struct.fsl_sata_cmd_tab** %6, align 8
  %108 = getelementptr inbounds %struct.fsl_sata_cmd_tab, %struct.fsl_sata_cmd_tab* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load %union.ccb*, %union.ccb** %7, align 8
  %111 = bitcast %union.ccb* %110 to %struct.TYPE_10__*
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @bcopy(i32 %106, i32* %109, i32 %113)
  %115 = load %struct.fsl_sata_cmd_tab*, %struct.fsl_sata_cmd_tab** %6, align 8
  %116 = getelementptr inbounds %struct.fsl_sata_cmd_tab, %struct.fsl_sata_cmd_tab* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load %union.ccb*, %union.ccb** %7, align 8
  %119 = bitcast %union.ccb* %118 to %struct.TYPE_10__*
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %117, i64 %122
  %124 = load %union.ccb*, %union.ccb** %7, align 8
  %125 = bitcast %union.ccb* %124 to %struct.TYPE_10__*
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 32, %127
  %129 = call i32 @bzero(i32* %123, i32 %128)
  br label %257

130:                                              ; preds = %4
  %131 = load %union.ccb*, %union.ccb** %7, align 8
  %132 = bitcast %union.ccb* %131 to %struct.TYPE_12__*
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @CAM_ATAIO_CONTROL, align 4
  %137 = and i32 %135, %136
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %248

139:                                              ; preds = %130
  %140 = load i32*, i32** %9, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, 128
  store i32 %143, i32* %141, align 4
  %144 = load %union.ccb*, %union.ccb** %7, align 8
  %145 = bitcast %union.ccb* %144 to %struct.TYPE_12__*
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32*, i32** %9, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 2
  store i32 %148, i32* %150, align 4
  %151 = load %union.ccb*, %union.ccb** %7, align 8
  %152 = bitcast %union.ccb* %151 to %struct.TYPE_12__*
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i32*, i32** %9, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 3
  store i32 %155, i32* %157, align 4
  %158 = load %union.ccb*, %union.ccb** %7, align 8
  %159 = bitcast %union.ccb* %158 to %struct.TYPE_12__*
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %9, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 4
  store i32 %162, i32* %164, align 4
  %165 = load %union.ccb*, %union.ccb** %7, align 8
  %166 = bitcast %union.ccb* %165 to %struct.TYPE_12__*
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = load i32*, i32** %9, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 5
  store i32 %169, i32* %171, align 4
  %172 = load %union.ccb*, %union.ccb** %7, align 8
  %173 = bitcast %union.ccb* %172 to %struct.TYPE_12__*
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %9, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 6
  store i32 %176, i32* %178, align 4
  %179 = load %union.ccb*, %union.ccb** %7, align 8
  %180 = bitcast %union.ccb* %179 to %struct.TYPE_12__*
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = load i32*, i32** %9, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 7
  store i32 %183, i32* %185, align 4
  %186 = load %union.ccb*, %union.ccb** %7, align 8
  %187 = bitcast %union.ccb* %186 to %struct.TYPE_12__*
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 4
  %191 = load i32*, i32** %9, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 8
  store i32 %190, i32* %192, align 4
  %193 = load %union.ccb*, %union.ccb** %7, align 8
  %194 = bitcast %union.ccb* %193 to %struct.TYPE_12__*
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 8
  %197 = load i32, i32* %196, align 8
  %198 = load i32*, i32** %9, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 9
  store i32 %197, i32* %199, align 4
  %200 = load %union.ccb*, %union.ccb** %7, align 8
  %201 = bitcast %union.ccb* %200 to %struct.TYPE_12__*
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 9
  %204 = load i32, i32* %203, align 4
  %205 = load i32*, i32** %9, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 10
  store i32 %204, i32* %206, align 4
  %207 = load %union.ccb*, %union.ccb** %7, align 8
  %208 = bitcast %union.ccb* %207 to %struct.TYPE_12__*
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 10
  %211 = load i32, i32* %210, align 8
  %212 = load i32*, i32** %9, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 11
  store i32 %211, i32* %213, align 4
  %214 = load %union.ccb*, %union.ccb** %7, align 8
  %215 = bitcast %union.ccb* %214 to %struct.TYPE_12__*
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @CAM_ATAIO_FPDMA, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %139
  %223 = load i32, i32* %8, align 4
  %224 = shl i32 %223, 3
  %225 = load i32*, i32** %9, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 12
  store i32 %224, i32* %226, align 4
  %227 = load i32*, i32** %9, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 13
  store i32 0, i32* %228, align 4
  br label %244

229:                                              ; preds = %139
  %230 = load %union.ccb*, %union.ccb** %7, align 8
  %231 = bitcast %union.ccb* %230 to %struct.TYPE_12__*
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 11
  %234 = load i32, i32* %233, align 4
  %235 = load i32*, i32** %9, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 12
  store i32 %234, i32* %236, align 4
  %237 = load %union.ccb*, %union.ccb** %7, align 8
  %238 = bitcast %union.ccb* %237 to %struct.TYPE_12__*
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 12
  %241 = load i32, i32* %240, align 8
  %242 = load i32*, i32** %9, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 13
  store i32 %241, i32* %243, align 4
  br label %244

244:                                              ; preds = %229, %222
  %245 = load i32, i32* @ATA_A_4BIT, align 4
  %246 = load i32*, i32** %9, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 15
  store i32 %245, i32* %247, align 4
  br label %256

248:                                              ; preds = %130
  %249 = load %union.ccb*, %union.ccb** %7, align 8
  %250 = bitcast %union.ccb* %249 to %struct.TYPE_12__*
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 13
  %253 = load i32, i32* %252, align 4
  %254 = load i32*, i32** %9, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 15
  store i32 %253, i32* %255, align 4
  br label %256

256:                                              ; preds = %248, %244
  br label %257

257:                                              ; preds = %256, %105
  ret i32 20
}

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
