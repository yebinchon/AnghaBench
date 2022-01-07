; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmcsd.c_mmcsd_ioctl_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmcsd.c_mmcsd_ioctl_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmcsd_part = type { i64, i32, i32, %struct.mmcsd_softc*, i32 }
%struct.mmcsd_softc = type { i32, i32, i32, i32, i32 }
%struct.mmc_ioc_cmd = type { i32, i32, i32, i32, i32, i64, i64, i32, i32 }
%struct.mmc_command = type { i32, i32, i32, i32, i32, %struct.mmc_command*, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, %struct.mmc_data*, i32 }

@FWRITE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@EROFS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"mmcsd IOCTL\00", align 1
@MMC_IOC_MAX_BYTES = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@MMC_SWITCH_FUNC = common dso_local global i32 0, align 4
@EXT_CSD_PART_CONFIG = common dso_local global i64 0, align 8
@EXT_CSD_PART_CONFIG_ACC_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MMC_ERR_NONE = common dso_local global i32 0, align 4
@EXT_CSD_PART_CONFIG_ACC_RPMB = common dso_local global i32 0, align 4
@MMCSD_DIRTY = common dso_local global i32 0, align 4
@MMCSD_CMD_RETRIES = common dso_local global i32 0, align 4
@R1_STATE_PRG = common dso_local global i64 0, align 8
@EXT_CSD_PART_CONFIG_ACC_DEFAULT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmcsd_part*, %struct.mmc_ioc_cmd*, i32)* @mmcsd_ioctl_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmcsd_ioctl_cmd(%struct.mmcsd_part* %0, %struct.mmc_ioc_cmd* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmcsd_part*, align 8
  %6 = alloca %struct.mmc_ioc_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmc_command, align 8
  %9 = alloca %struct.mmc_data, align 8
  %10 = alloca %struct.mmcsd_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.mmcsd_part* %0, %struct.mmcsd_part** %5, align 8
  store %struct.mmc_ioc_cmd* %1, %struct.mmc_ioc_cmd** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @FWRITE, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.mmc_ioc_cmd*, %struct.mmc_ioc_cmd** %6, align 8
  %25 = getelementptr inbounds %struct.mmc_ioc_cmd, %struct.mmc_ioc_cmd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @EBADF, align 4
  store i32 %29, i32* %4, align 4
  br label %402

30:                                               ; preds = %23, %3
  %31 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %32 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TRUE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.mmc_ioc_cmd*, %struct.mmc_ioc_cmd** %6, align 8
  %38 = getelementptr inbounds %struct.mmc_ioc_cmd, %struct.mmc_ioc_cmd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @EROFS, align 4
  store i32 %42, i32* %4, align 4
  br label %402

43:                                               ; preds = %36, %30
  %44 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %45 = call i32 @MMCSD_IOCTL_LOCK(%struct.mmcsd_part* %44)
  br label %46

46:                                               ; preds = %60, %43
  %47 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %48 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %53 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %58 = call i32 @MMCSD_IOCTL_UNLOCK(%struct.mmcsd_part* %57)
  %59 = load i32, i32* @ENXIO, align 4
  store i32 %59, i32* %4, align 4
  br label %402

60:                                               ; preds = %51
  %61 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %62 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %63 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %62, i32 0, i32 4
  %64 = call i32 @msleep(%struct.mmcsd_part* %61, i32* %63, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %46

65:                                               ; preds = %46
  %66 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %67 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %66, i32 0, i32 1
  store i32 1, i32* %67, align 8
  %68 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %69 = call i32 @MMCSD_IOCTL_UNLOCK(%struct.mmcsd_part* %68)
  store i32 0, i32* %15, align 4
  store i8* null, i8** %13, align 8
  %70 = load %struct.mmc_ioc_cmd*, %struct.mmc_ioc_cmd** %6, align 8
  %71 = getelementptr inbounds %struct.mmc_ioc_cmd, %struct.mmc_ioc_cmd* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mmc_ioc_cmd*, %struct.mmc_ioc_cmd** %6, align 8
  %74 = getelementptr inbounds %struct.mmc_ioc_cmd, %struct.mmc_ioc_cmd* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %72, %75
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @MMC_IOC_MAX_BYTES, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %65
  %81 = load i32, i32* @EOVERFLOW, align 4
  store i32 %81, i32* %15, align 4
  br label %385

82:                                               ; preds = %65
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %82
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @M_TEMP, align 4
  %88 = load i32, i32* @M_WAITOK, align 4
  %89 = call i8* @malloc(i32 %86, i32 %87, i32 %88)
  store i8* %89, i8** %13, align 8
  %90 = load %struct.mmc_ioc_cmd*, %struct.mmc_ioc_cmd** %6, align 8
  %91 = getelementptr inbounds %struct.mmc_ioc_cmd, %struct.mmc_ioc_cmd* %90, i32 0, i32 6
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = load i8*, i8** %13, align 8
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @copyin(i8* %93, i8* %94, i32 %95)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %85
  br label %385

100:                                              ; preds = %85
  br label %101

101:                                              ; preds = %100, %82
  %102 = bitcast %struct.mmc_command* %8 to %struct.mmc_data*
  %103 = call i32 @memset(%struct.mmc_data* %102, i32 0, i32 40)
  %104 = call i32 @memset(%struct.mmc_data* %9, i32 0, i32 40)
  %105 = load %struct.mmc_ioc_cmd*, %struct.mmc_ioc_cmd** %6, align 8
  %106 = getelementptr inbounds %struct.mmc_ioc_cmd, %struct.mmc_ioc_cmd* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %8, i32 0, i32 0
  store i32 %107, i32* %108, align 8
  %109 = load %struct.mmc_ioc_cmd*, %struct.mmc_ioc_cmd** %6, align 8
  %110 = getelementptr inbounds %struct.mmc_ioc_cmd, %struct.mmc_ioc_cmd* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %8, i32 0, i32 1
  store i32 %111, i32* %112, align 4
  %113 = load %struct.mmc_ioc_cmd*, %struct.mmc_ioc_cmd** %6, align 8
  %114 = getelementptr inbounds %struct.mmc_ioc_cmd, %struct.mmc_ioc_cmd* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %8, i32 0, i32 6
  store i32 %115, i32* %116, align 8
  %117 = load i32, i32* %14, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %138

119:                                              ; preds = %101
  %120 = load i32, i32* %14, align 4
  %121 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %9, i32 0, i32 2
  store i32 %120, i32* %121, align 8
  %122 = load i8*, i8** %13, align 8
  %123 = bitcast i8* %122 to %struct.mmc_data*
  %124 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %9, i32 0, i32 5
  store %struct.mmc_data* %123, %struct.mmc_data** %124, align 8
  %125 = load %struct.mmc_ioc_cmd*, %struct.mmc_ioc_cmd** %6, align 8
  %126 = getelementptr inbounds %struct.mmc_ioc_cmd, %struct.mmc_ioc_cmd* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %119
  %130 = load i32, i32* @MMC_DATA_WRITE, align 4
  br label %133

131:                                              ; preds = %119
  %132 = load i32, i32* @MMC_DATA_READ, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  %135 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %9, i32 0, i32 6
  store i32 %134, i32* %135, align 8
  %136 = bitcast %struct.mmc_data* %9 to %struct.mmc_command*
  %137 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %8, i32 0, i32 5
  store %struct.mmc_command* %136, %struct.mmc_command** %137, align 8
  br label %138

138:                                              ; preds = %133, %101
  %139 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %140 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %139, i32 0, i32 3
  %141 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %140, align 8
  store %struct.mmcsd_softc* %141, %struct.mmcsd_softc** %10, align 8
  %142 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %10, align 8
  %143 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %18, align 4
  %145 = load %struct.mmc_ioc_cmd*, %struct.mmc_ioc_cmd** %6, align 8
  %146 = getelementptr inbounds %struct.mmc_ioc_cmd, %struct.mmc_ioc_cmd* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %193

149:                                              ; preds = %138
  %150 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %8, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  switch i32 %151, label %169 [
    i32 130, label %152
    i32 134, label %152
    i32 128, label %154
    i32 129, label %161
    i32 132, label %161
    i32 133, label %161
    i32 131, label %161
    i32 135, label %161
    i32 136, label %161
    i32 141, label %161
  ]

152:                                              ; preds = %149, %149
  %153 = load i32, i32* @EPERM, align 4
  store i32 %153, i32* %15, align 4
  br label %385

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %8, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, 1
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %170

160:                                              ; preds = %154
  br label %161

161:                                              ; preds = %149, %149, %149, %149, %149, %149, %149, %160
  %162 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %8, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, 65535
  %165 = load i32, i32* %18, align 4
  %166 = shl i32 %165, 16
  %167 = or i32 %164, %166
  %168 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %8, i32 0, i32 1
  store i32 %167, i32* %168, align 4
  br label %170

169:                                              ; preds = %149
  br label %170

170:                                              ; preds = %169, %161, %159
  %171 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %8, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @MMC_SWITCH_FUNC, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %192

175:                                              ; preds = %170
  %176 = load i8*, i8** %13, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %192

178:                                              ; preds = %175
  %179 = load i8*, i8** %13, align 8
  %180 = bitcast i8* %179 to i32*
  %181 = load i64, i64* @EXT_CSD_PART_CONFIG, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @EXT_CSD_PART_CONFIG_ACC_MASK, align 4
  %185 = and i32 %183, %184
  %186 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %187 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %185, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %178
  %191 = load i32, i32* @EINVAL, align 4
  store i32 %191, i32* %15, align 4
  br label %385

192:                                              ; preds = %178, %175, %170
  br label %193

193:                                              ; preds = %192, %138
  %194 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %10, align 8
  %195 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %11, align 4
  %197 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %10, align 8
  %198 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* %12, align 4
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* %11, align 4
  %202 = call i32 @MMCBUS_ACQUIRE_BUS(i32 %200, i32 %201)
  %203 = load i32, i32* %12, align 4
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* %18, align 4
  %206 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %207 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @mmcsd_switch_part(i32 %203, i32 %204, i32 %205, i32 %208)
  store i32 %209, i32* %15, align 4
  %210 = load i32, i32* %15, align 4
  %211 = load i32, i32* @MMC_ERR_NONE, align 4
  %212 = icmp ne i32 %210, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %193
  br label %380

214:                                              ; preds = %193
  %215 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %216 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @EXT_CSD_PART_CONFIG_ACC_RPMB, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %235

220:                                              ; preds = %214
  %221 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %10, align 8
  %222 = load %struct.mmc_ioc_cmd*, %struct.mmc_ioc_cmd** %6, align 8
  %223 = getelementptr inbounds %struct.mmc_ioc_cmd, %struct.mmc_ioc_cmd* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.mmc_ioc_cmd*, %struct.mmc_ioc_cmd** %6, align 8
  %226 = getelementptr inbounds %struct.mmc_ioc_cmd, %struct.mmc_ioc_cmd* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = and i32 %227, -2147483648
  %229 = call i32 @mmcsd_set_blockcount(%struct.mmcsd_softc* %221, i32 %224, i32 %228)
  store i32 %229, i32* %15, align 4
  %230 = load i32, i32* %15, align 4
  %231 = load i32, i32* @MMC_ERR_NONE, align 4
  %232 = icmp ne i32 %230, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %220
  br label %314

234:                                              ; preds = %220
  br label %235

235:                                              ; preds = %234, %214
  %236 = load %struct.mmc_ioc_cmd*, %struct.mmc_ioc_cmd** %6, align 8
  %237 = getelementptr inbounds %struct.mmc_ioc_cmd, %struct.mmc_ioc_cmd* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %235
  %241 = load i32, i32* @MMCSD_DIRTY, align 4
  %242 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %10, align 8
  %243 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 4
  br label %246

246:                                              ; preds = %240, %235
  %247 = load %struct.mmc_ioc_cmd*, %struct.mmc_ioc_cmd** %6, align 8
  %248 = getelementptr inbounds %struct.mmc_ioc_cmd, %struct.mmc_ioc_cmd* %247, i32 0, i32 5
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %246
  %252 = load i32, i32* %12, align 4
  %253 = load i32, i32* %11, align 4
  %254 = load i32, i32* %18, align 4
  %255 = bitcast %struct.mmc_command* %8 to %struct.mmc_data*
  %256 = call i32 @mmc_wait_for_app_cmd(i32 %252, i32 %253, i32 %254, %struct.mmc_data* %255, i32 0)
  br label %262

257:                                              ; preds = %246
  %258 = load i32, i32* %12, align 4
  %259 = load i32, i32* %11, align 4
  %260 = bitcast %struct.mmc_command* %8 to %struct.mmc_data*
  %261 = call i32 @mmc_wait_for_cmd(i32 %258, i32 %259, %struct.mmc_data* %260, i32 0)
  br label %262

262:                                              ; preds = %257, %251
  %263 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %264 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @EXT_CSD_PART_CONFIG_ACC_RPMB, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %296

268:                                              ; preds = %262
  %269 = load i32, i32* @MMCSD_CMD_RETRIES, align 4
  store i32 %269, i32* %16, align 4
  br label %270

270:                                              ; preds = %291, %268
  %271 = load i32, i32* %12, align 4
  %272 = load i32, i32* %11, align 4
  %273 = load i32, i32* %18, align 4
  %274 = call i32 @mmc_send_status(i32 %271, i32 %272, i32 %273, i32* %17)
  store i32 %274, i32* %15, align 4
  %275 = load i32, i32* %15, align 4
  %276 = load i32, i32* @MMC_ERR_NONE, align 4
  %277 = icmp ne i32 %275, %276
  br i1 %277, label %278, label %279

278:                                              ; preds = %270
  br label %295

279:                                              ; preds = %270
  %280 = load i32, i32* %17, align 4
  %281 = call i64 @R1_STATUS(i32 %280)
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %279
  %284 = load i32, i32* %17, align 4
  %285 = call i64 @R1_CURRENT_STATE(i32 %284)
  %286 = load i64, i64* @R1_STATE_PRG, align 8
  %287 = icmp ne i64 %285, %286
  br i1 %287, label %288, label %289

288:                                              ; preds = %283
  br label %295

289:                                              ; preds = %283, %279
  %290 = call i32 @DELAY(i32 1000)
  br label %291

291:                                              ; preds = %289
  %292 = load i32, i32* %16, align 4
  %293 = add nsw i32 %292, -1
  store i32 %293, i32* %16, align 4
  %294 = icmp sgt i32 %292, 0
  br i1 %294, label %270, label %295

295:                                              ; preds = %291, %288, %278
  br label %296

296:                                              ; preds = %295, %262
  %297 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %8, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @MMC_SWITCH_FUNC, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %313

301:                                              ; preds = %296
  %302 = load i32, i32* %12, align 4
  %303 = load i32, i32* %11, align 4
  %304 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %10, align 8
  %305 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @mmc_send_ext_csd(i32 %302, i32 %303, i32 %306)
  store i32 %307, i32* %15, align 4
  %308 = load i32, i32* %15, align 4
  %309 = load i32, i32* @MMC_ERR_NONE, align 4
  %310 = icmp ne i32 %308, %309
  br i1 %310, label %311, label %312

311:                                              ; preds = %301
  br label %380

312:                                              ; preds = %301
  br label %313

313:                                              ; preds = %312, %296
  br label %314

314:                                              ; preds = %313, %233
  %315 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %316 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @EXT_CSD_PART_CONFIG_ACC_RPMB, align 4
  %319 = icmp eq i32 %317, %318
  br i1 %319, label %320, label %331

320:                                              ; preds = %314
  %321 = load i32, i32* %12, align 4
  %322 = load i32, i32* %11, align 4
  %323 = load i32, i32* %18, align 4
  %324 = load i32, i32* @EXT_CSD_PART_CONFIG_ACC_DEFAULT, align 4
  %325 = call i32 @mmcsd_switch_part(i32 %321, i32 %322, i32 %323, i32 %324)
  store i32 %325, i32* %15, align 4
  %326 = load i32, i32* %15, align 4
  %327 = load i32, i32* @MMC_ERR_NONE, align 4
  %328 = icmp ne i32 %326, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %320
  br label %380

330:                                              ; preds = %320
  br label %331

331:                                              ; preds = %330, %314
  %332 = load i32, i32* %12, align 4
  %333 = load i32, i32* %11, align 4
  %334 = call i32 @MMCBUS_RELEASE_BUS(i32 %332, i32 %333)
  %335 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %8, i32 0, i32 3
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* @MMC_ERR_NONE, align 4
  %338 = icmp ne i32 %336, %337
  br i1 %338, label %339, label %353

339:                                              ; preds = %331
  %340 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %8, i32 0, i32 3
  %341 = load i32, i32* %340, align 4
  switch i32 %341, label %350 [
    i32 137, label %342
    i32 140, label %344
    i32 139, label %346
    i32 138, label %348
  ]

342:                                              ; preds = %339
  %343 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %343, i32* %15, align 4
  br label %352

344:                                              ; preds = %339
  %345 = load i32, i32* @EILSEQ, align 4
  store i32 %345, i32* %15, align 4
  br label %352

346:                                              ; preds = %339
  %347 = load i32, i32* @EINVAL, align 4
  store i32 %347, i32* %15, align 4
  br label %352

348:                                              ; preds = %339
  %349 = load i32, i32* @ENOMEM, align 4
  store i32 %349, i32* %15, align 4
  br label %352

350:                                              ; preds = %339
  %351 = load i32, i32* @EIO, align 4
  store i32 %351, i32* %15, align 4
  br label %352

352:                                              ; preds = %350, %348, %346, %344, %342
  br label %385

353:                                              ; preds = %331
  %354 = load %struct.mmc_ioc_cmd*, %struct.mmc_ioc_cmd** %6, align 8
  %355 = getelementptr inbounds %struct.mmc_ioc_cmd, %struct.mmc_ioc_cmd* %354, i32 0, i32 7
  %356 = load i32, i32* %355, align 8
  %357 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %8, i32 0, i32 4
  %358 = load i32, i32* %357, align 8
  %359 = call i32 @memcpy(i32 %356, i32 %358, i32 16)
  %360 = load %struct.mmc_ioc_cmd*, %struct.mmc_ioc_cmd** %6, align 8
  %361 = getelementptr inbounds %struct.mmc_ioc_cmd, %struct.mmc_ioc_cmd* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %379

364:                                              ; preds = %353
  %365 = load i32, i32* %14, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %379

367:                                              ; preds = %364
  %368 = load i8*, i8** %13, align 8
  %369 = load %struct.mmc_ioc_cmd*, %struct.mmc_ioc_cmd** %6, align 8
  %370 = getelementptr inbounds %struct.mmc_ioc_cmd, %struct.mmc_ioc_cmd* %369, i32 0, i32 6
  %371 = load i64, i64* %370, align 8
  %372 = inttoptr i64 %371 to i8*
  %373 = load i32, i32* %14, align 4
  %374 = call i32 @copyout(i8* %368, i8* %372, i32 %373)
  store i32 %374, i32* %15, align 4
  %375 = load i32, i32* %15, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %378

377:                                              ; preds = %367
  br label %385

378:                                              ; preds = %367
  br label %379

379:                                              ; preds = %378, %364, %353
  br label %385

380:                                              ; preds = %329, %311, %213
  %381 = load i32, i32* %12, align 4
  %382 = load i32, i32* %11, align 4
  %383 = call i32 @MMCBUS_RELEASE_BUS(i32 %381, i32 %382)
  %384 = load i32, i32* @EIO, align 4
  store i32 %384, i32* %15, align 4
  br label %385

385:                                              ; preds = %380, %379, %377, %352, %190, %152, %99, %80
  %386 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %387 = call i32 @MMCSD_IOCTL_LOCK(%struct.mmcsd_part* %386)
  %388 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %389 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %388, i32 0, i32 1
  store i32 0, i32* %389, align 8
  %390 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %391 = call i32 @MMCSD_IOCTL_UNLOCK(%struct.mmcsd_part* %390)
  %392 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %393 = call i32 @wakeup(%struct.mmcsd_part* %392)
  %394 = load i8*, i8** %13, align 8
  %395 = icmp ne i8* %394, null
  br i1 %395, label %396, label %400

396:                                              ; preds = %385
  %397 = load i8*, i8** %13, align 8
  %398 = load i32, i32* @M_TEMP, align 4
  %399 = call i32 @free(i8* %397, i32 %398)
  br label %400

400:                                              ; preds = %396, %385
  %401 = load i32, i32* %15, align 4
  store i32 %401, i32* %4, align 4
  br label %402

402:                                              ; preds = %400, %56, %41, %28
  %403 = load i32, i32* %4, align 4
  ret i32 %403
}

declare dso_local i32 @MMCSD_IOCTL_LOCK(%struct.mmcsd_part*) #1

declare dso_local i32 @MMCSD_IOCTL_UNLOCK(%struct.mmcsd_part*) #1

declare dso_local i32 @msleep(%struct.mmcsd_part*, i32*, i32, i8*, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyin(i8*, i8*, i32) #1

declare dso_local i32 @memset(%struct.mmc_data*, i32, i32) #1

declare dso_local i32 @MMCBUS_ACQUIRE_BUS(i32, i32) #1

declare dso_local i32 @mmcsd_switch_part(i32, i32, i32, i32) #1

declare dso_local i32 @mmcsd_set_blockcount(%struct.mmcsd_softc*, i32, i32) #1

declare dso_local i32 @mmc_wait_for_app_cmd(i32, i32, i32, %struct.mmc_data*, i32) #1

declare dso_local i32 @mmc_wait_for_cmd(i32, i32, %struct.mmc_data*, i32) #1

declare dso_local i32 @mmc_send_status(i32, i32, i32, i32*) #1

declare dso_local i64 @R1_STATUS(i32) #1

declare dso_local i64 @R1_CURRENT_STATE(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @mmc_send_ext_csd(i32, i32, i32) #1

declare dso_local i32 @MMCBUS_RELEASE_BUS(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @copyout(i8*, i8*, i32) #1

declare dso_local i32 @wakeup(%struct.mmcsd_part*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
