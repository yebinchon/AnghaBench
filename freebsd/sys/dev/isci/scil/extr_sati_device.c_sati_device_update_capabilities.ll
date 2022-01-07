; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_device.c_sati_device_update_capabilities.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_device.c_sati_device_update_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i64, i32, i32, i32 }

@ATA_IDENTIFY_CAPABILITIES1_NORMAL_DMA_ENABLE = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_UDMA_ENABLE = common dso_local global i32 0, align 4
@ATA_IDENTIFY_COMMAND_SET_SUPPORTED1_48BIT_ENABLE = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_48BIT_ENABLE = common dso_local global i32 0, align 4
@ATA_IDENTIFY_COMMAND_SET_SUPPORTED0_SMART_ENABLE = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_SMART_SUPPORT = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_SMART_ENABLE = common dso_local global i32 0, align 4
@ATA_IDENTIFY_SATA_CAPABILITIES_NCQ_ENABLE = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_NCQ_REQUESTED_ENABLE = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_NCQ_SUPPORTED_ENABLE = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_DMA_FUA_ENABLE = common dso_local global i32 0, align 4
@ATA_IDENTIFY_NCQ_QUEUE_DEPTH_ENABLE = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_IGNORE_FUA = common dso_local global i32 0, align 4
@ATA_IDENTIFY_REMOVABLE_MEDIA_ENABLE = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_REMOVABLE_MEDIA = common dso_local global i32 0, align 4
@ATA_IDENTIFY_WRITE_UNCORRECTABLE_SUPPORT = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_WRITE_UNCORRECTABLE_ENABLE = common dso_local global i32 0, align 4
@ATA_IDENTIFY_LOGICAL_SECTOR_PER_PHYSICAL_SECTOR_ENABLE = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_MULTIPLE_SECTORS_PER_PHYSCIAL_SECTOR = common dso_local global i32 0, align 4
@ATA_IDENTIFY_COMMAND_SET_SMART_SELF_TEST_SUPPORTED = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_SMART_SELF_TEST_SUPPORT = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_SSD = common dso_local global i32 0, align 4
@ATA_IDENTIFY_COMMAND_SET_DSM_TRIM_SUPPORTED = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_DSM_TRIM_SUPPORT = common dso_local global i32 0, align 4
@ATA_IDENTIFY_COMMAND_ADDL_SUPPORTED_DETERMINISTIC_READ = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_DETERMINISTIC_READ_AFTER_TRIM = common dso_local global i32 0, align 4
@ATA_IDENTIFY_COMMAND_ADDL_SUPPORTED_READ_ZERO = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_READ_ZERO_AFTER_TRIM = common dso_local global i32 0, align 4
@ATA_IDENTIFY_CAPABILITIES1_STANDBY_ENABLE = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_STANDBY_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sati_device_update_capabilities(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @ATA_IDENTIFY_CAPABILITIES1_NORMAL_DMA_ENABLE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @SATI_DEVICE_CAP_UDMA_ENABLE, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ATA_IDENTIFY_COMMAND_SET_SUPPORTED1_48BIT_ENABLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32, i32* @SATI_DEVICE_CAP_48BIT_ENABLE, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %23, %16
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ATA_IDENTIFY_COMMAND_SET_SUPPORTED0_SMART_ENABLE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @SATI_DEVICE_CAP_SMART_SUPPORT, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %34, %27
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ATA_IDENTIFY_COMMAND_SET_SUPPORTED0_SMART_ENABLE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @SATI_DEVICE_CAP_SMART_ENABLE, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %45, %38
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @ATA_IDENTIFY_SATA_CAPABILITIES_NCQ_ENABLE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %87

56:                                               ; preds = %49
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @SATI_DEVICE_CAP_NCQ_REQUESTED_ENABLE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %86

63:                                               ; preds = %56
  %64 = load i32, i32* @SATI_DEVICE_CAP_NCQ_REQUESTED_ENABLE, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* @SATI_DEVICE_CAP_NCQ_SUPPORTED_ENABLE, align 4
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* @SATI_DEVICE_CAP_DMA_FUA_ENABLE, align 4
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ATA_IDENTIFY_NCQ_QUEUE_DEPTH_ENABLE, align 4
  %80 = and i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, 1
  %83 = call i32 @MIN(i32 %75, i64 %82)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %63, %56
  br label %87

87:                                               ; preds = %86, %49
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @SATI_DEVICE_CAP_IGNORE_FUA, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load i32, i32* @SATI_DEVICE_CAP_IGNORE_FUA, align 4
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %94, %87
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @ATA_IDENTIFY_REMOVABLE_MEDIA_ENABLE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load i32, i32* @SATI_DEVICE_CAP_REMOVABLE_MEDIA, align 4
  %107 = load i32, i32* %5, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %105, %98
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @ATA_IDENTIFY_WRITE_UNCORRECTABLE_SUPPORT, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = load i32, i32* @SATI_DEVICE_CAP_WRITE_UNCORRECTABLE_ENABLE, align 4
  %118 = load i32, i32* %5, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %116, %109
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @ATA_IDENTIFY_LOGICAL_SECTOR_PER_PHYSICAL_SECTOR_ENABLE, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %120
  %128 = load i32, i32* @SATI_DEVICE_CAP_MULTIPLE_SECTORS_PER_PHYSCIAL_SECTOR, align 4
  %129 = load i32, i32* %5, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %127, %120
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 9
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @ATA_IDENTIFY_COMMAND_SET_SMART_SELF_TEST_SUPPORTED, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %131
  %139 = load i32, i32* @SATI_DEVICE_CAP_SMART_SELF_TEST_SUPPORT, align 4
  %140 = load i32, i32* %5, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %138, %131
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 10
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load i32, i32* @SATI_DEVICE_CAP_SSD, align 4
  %149 = load i32, i32* %5, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %147, %142
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 8
  %154 = load i32, i32* %153, align 8
  %155 = and i32 %154, 20480
  %156 = icmp eq i32 %155, 20480
  br i1 %156, label %157, label %186

157:                                              ; preds = %151
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 11
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 3
  %162 = load i32, i32* %161, align 4
  %163 = shl i32 %162, 24
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 11
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 2
  %168 = load i32, i32* %167, align 4
  %169 = shl i32 %168, 16
  %170 = or i32 %163, %169
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 11
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  %175 = load i32, i32* %174, align 4
  %176 = shl i32 %175, 8
  %177 = or i32 %170, %176
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 11
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %177, %182
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 4
  br label %189

186:                                              ; preds = %151
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  store i32 512, i32* %188, align 4
  br label %189

189:                                              ; preds = %186, %157
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 12
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @ATA_IDENTIFY_COMMAND_SET_DSM_TRIM_SUPPORTED, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %210

196:                                              ; preds = %189
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 13
  %199 = load i64, i64* %198, align 8
  %200 = icmp sgt i64 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %196
  %202 = load i32, i32* @SATI_DEVICE_CAP_DSM_TRIM_SUPPORT, align 4
  %203 = load i32, i32* %5, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %5, align 4
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 13
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 2
  store i64 %207, i64* %209, align 8
  br label %210

210:                                              ; preds = %201, %196, %189
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 14
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @ATA_IDENTIFY_COMMAND_ADDL_SUPPORTED_DETERMINISTIC_READ, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %210
  %218 = load i32, i32* @SATI_DEVICE_CAP_DETERMINISTIC_READ_AFTER_TRIM, align 4
  %219 = load i32, i32* %5, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %5, align 4
  br label %221

221:                                              ; preds = %217, %210
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 14
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @ATA_IDENTIFY_COMMAND_ADDL_SUPPORTED_READ_ZERO, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %221
  %229 = load i32, i32* @SATI_DEVICE_CAP_READ_ZERO_AFTER_TRIM, align 4
  %230 = load i32, i32* %5, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %5, align 4
  br label %232

232:                                              ; preds = %228, %221
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @ATA_IDENTIFY_CAPABILITIES1_STANDBY_ENABLE, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %232
  %240 = load i32, i32* @SATI_DEVICE_CAP_STANDBY_ENABLE, align 4
  %241 = load i32, i32* %5, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %5, align 4
  br label %243

243:                                              ; preds = %239, %232
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 16
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 4
  store i32 %246, i32* %248, align 4
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 15
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 3
  store i32 %251, i32* %253, align 8
  %254 = load i32, i32* %5, align 4
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 0
  store i32 %254, i32* %256, align 8
  ret void
}

declare dso_local i32 @MIN(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
