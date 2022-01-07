; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_install_kld_firmware.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_install_kld_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32 }
%struct.fw_h = type { i32 }
%struct.firmware = type { %struct.fw_h*, i32 }
%struct.fw_hdr = type { i32 }

@t4_fw_install = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [121 x i8] c"failed to load firmware module: %d. cfg %p, fw %p; will use compiled-in firmware version forhw.cxgbe.fw_install checks.\0A\00", align 1
@FW_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"missing\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"incompatible or unusable\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"older than the version bundled with this driver\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"different than the version bundled with this driver\00", align 1
@.str.5 = private unnamed_addr constant [108 x i8] c"firmware on card (%u.%u.%u.%u) is %s, but the driver is prohibited from installing a firmware on the card.\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"failed to load firmware module: %d. cfg %p, fw %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [134 x i8] c"firmware on card (%u.%u.%u.%u) is %s, but the driver cannot take corrective action because it is unable to load the firmware module.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [104 x i8] c"firmware in KLD (%u.%u.%u.%u) is not what the driver was expecting (%u.%u.%u.%u) and will not be used.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [80 x i8] c"firmware on card (%u.%u.%u.%u) is %s, installing firmware %u.%u.%u.%u on card.\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"failed to install firmware: %d\0A\00", align 1
@ERESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.fw_h*, %struct.fw_h*, i8*, i32*)* @install_kld_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @install_kld_firmware(%struct.adapter* %0, %struct.fw_h* %1, %struct.fw_h* %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.fw_h*, align 8
  %8 = alloca %struct.fw_h*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.firmware*, align 8
  %12 = alloca %struct.firmware*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.fw_h, align 4
  %19 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store %struct.fw_h* %1, %struct.fw_h** %7, align 8
  store %struct.fw_h* %2, %struct.fw_h** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %20 = load %struct.fw_h*, %struct.fw_h** %7, align 8
  %21 = getelementptr inbounds %struct.fw_h, %struct.fw_h* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @be32toh(i32 %22)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %13, align 4
  store %struct.firmware* null, %struct.firmware** %12, align 8
  store %struct.firmware* null, %struct.firmware** %11, align 8
  store i32 0, i32* %19, align 4
  %25 = load i32, i32* @t4_fw_install, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32, i32* @t4_fw_install, align 4
  %29 = sub nsw i32 0, %28
  br label %32

30:                                               ; preds = %5
  %31 = load i32, i32* @t4_fw_install, align 4
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi i32 [ %29, %27 ], [ %31, %30 ]
  store i32 %33, i32* %17, align 4
  %34 = load %struct.fw_h*, %struct.fw_h** %8, align 8
  %35 = call i32 @memcpy(%struct.fw_h* %18, %struct.fw_h* %34, i32 4)
  %36 = load i32, i32* @t4_fw_install, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %32
  %39 = load %struct.adapter*, %struct.adapter** %6, align 8
  %40 = call i32 @load_fw_module(%struct.adapter* %39, %struct.firmware** %11, %struct.firmware** %12)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load %struct.firmware*, %struct.firmware** %12, align 8
  %45 = icmp eq %struct.firmware* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %43, %38
  %47 = load %struct.adapter*, %struct.adapter** %6, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load %struct.firmware*, %struct.firmware** %11, align 8
  %52 = load %struct.firmware*, %struct.firmware** %12, align 8
  %53 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %49, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str, i64 0, i64 0), i32 %50, %struct.firmware* %51, %struct.firmware* %52)
  br label %59

54:                                               ; preds = %43
  %55 = load %struct.firmware*, %struct.firmware** %12, align 8
  %56 = getelementptr inbounds %struct.firmware, %struct.firmware* %55, i32 0, i32 0
  %57 = load %struct.fw_h*, %struct.fw_h** %56, align 8
  %58 = call i32 @memcpy(%struct.fw_h* %18, %struct.fw_h* %57, i32 4)
  br label %59

59:                                               ; preds = %54, %46
  store i32 1, i32* %19, align 4
  br label %60

60:                                               ; preds = %59, %32
  %61 = getelementptr inbounds %struct.fw_h, %struct.fw_h* %18, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @be32toh(i32 %62)
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %14, align 4
  %65 = load i8*, i8** %9, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %99

68:                                               ; preds = %60
  %69 = load %struct.adapter*, %struct.adapter** %6, align 8
  %70 = getelementptr inbounds %struct.adapter, %struct.adapter* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @FW_OK, align 4
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load i32, i32* %13, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %99

79:                                               ; preds = %75
  store i32 0, i32* %16, align 4
  br label %268

80:                                               ; preds = %68
  %81 = load %struct.fw_h*, %struct.fw_h** %7, align 8
  %82 = call i32 @fw_compatible(%struct.fw_h* %81, %struct.fw_h* %18)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %99

85:                                               ; preds = %80
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %99

90:                                               ; preds = %85
  %91 = load i32, i32* %17, align 4
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %99

98:                                               ; preds = %93, %90
  store i32 0, i32* %16, align 4
  br label %268

99:                                               ; preds = %97, %89, %84, %78, %67
  store i32 0, i32* %16, align 4
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = icmp ne i32 %101, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %268

105:                                              ; preds = %99
  %106 = load i32, i32* %17, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %105
  %109 = load %struct.adapter*, %struct.adapter** %6, align 8
  %110 = getelementptr inbounds %struct.adapter, %struct.adapter* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @G_FW_HDR_FW_VER_MAJOR(i32 %112)
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @G_FW_HDR_FW_VER_MINOR(i32 %114)
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @G_FW_HDR_FW_VER_MICRO(i32 %116)
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @G_FW_HDR_FW_VER_BUILD(i32 %118)
  %120 = load i8*, i8** %9, align 8
  %121 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %111, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.5, i64 0, i64 0), i32 %113, i32 %115, i32 %117, i32 %119, i8* %120)
  br label %268

122:                                              ; preds = %105
  %123 = load i32, i32* %19, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %142, label %125

125:                                              ; preds = %122
  %126 = load %struct.adapter*, %struct.adapter** %6, align 8
  %127 = call i32 @load_fw_module(%struct.adapter* %126, %struct.firmware** %11, %struct.firmware** %12)
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %16, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %125
  %131 = load %struct.firmware*, %struct.firmware** %12, align 8
  %132 = icmp eq %struct.firmware* %131, null
  br i1 %132, label %133, label %141

133:                                              ; preds = %130, %125
  %134 = load %struct.adapter*, %struct.adapter** %6, align 8
  %135 = getelementptr inbounds %struct.adapter, %struct.adapter* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %16, align 4
  %138 = load %struct.firmware*, %struct.firmware** %11, align 8
  %139 = load %struct.firmware*, %struct.firmware** %12, align 8
  %140 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %136, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %137, %struct.firmware* %138, %struct.firmware* %139)
  br label %141

141:                                              ; preds = %133, %130
  br label %142

142:                                              ; preds = %141, %122
  %143 = load %struct.firmware*, %struct.firmware** %12, align 8
  %144 = icmp eq %struct.firmware* %143, null
  br i1 %144, label %145, label %170

145:                                              ; preds = %142
  %146 = load %struct.adapter*, %struct.adapter** %6, align 8
  %147 = getelementptr inbounds %struct.adapter, %struct.adapter* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %13, align 4
  %150 = call i32 @G_FW_HDR_FW_VER_MAJOR(i32 %149)
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @G_FW_HDR_FW_VER_MINOR(i32 %151)
  %153 = load i32, i32* %13, align 4
  %154 = call i32 @G_FW_HDR_FW_VER_MICRO(i32 %153)
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @G_FW_HDR_FW_VER_BUILD(i32 %155)
  %157 = load i8*, i8** %9, align 8
  %158 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %148, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.7, i64 0, i64 0), i32 %150, i32 %152, i32 %154, i32 %156, i8* %157)
  %159 = load %struct.adapter*, %struct.adapter** %6, align 8
  %160 = getelementptr inbounds %struct.adapter, %struct.adapter* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @FW_OK, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %145
  br label %168

166:                                              ; preds = %145
  %167 = load i32, i32* @ENOENT, align 4
  br label %168

168:                                              ; preds = %166, %165
  %169 = phi i32 [ 0, %165 ], [ %167, %166 ]
  store i32 %169, i32* %16, align 4
  br label %268

170:                                              ; preds = %142
  %171 = load %struct.firmware*, %struct.firmware** %12, align 8
  %172 = getelementptr inbounds %struct.firmware, %struct.firmware* %171, i32 0, i32 0
  %173 = load %struct.fw_h*, %struct.fw_h** %172, align 8
  %174 = bitcast %struct.fw_h* %173 to %struct.fw_hdr*
  %175 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i8* @be32toh(i32 %176)
  %178 = ptrtoint i8* %177 to i32
  store i32 %178, i32* %15, align 4
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* %14, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %218

182:                                              ; preds = %170
  %183 = load i32, i32* @t4_fw_install, align 4
  %184 = icmp sgt i32 %183, 0
  %185 = zext i1 %184 to i32
  %186 = call i32 @MPASS(i32 %185)
  %187 = load %struct.adapter*, %struct.adapter** %6, align 8
  %188 = getelementptr inbounds %struct.adapter, %struct.adapter* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %15, align 4
  %191 = call i32 @G_FW_HDR_FW_VER_MAJOR(i32 %190)
  %192 = load i32, i32* %15, align 4
  %193 = call i32 @G_FW_HDR_FW_VER_MINOR(i32 %192)
  %194 = load i32, i32* %15, align 4
  %195 = call i32 @G_FW_HDR_FW_VER_MICRO(i32 %194)
  %196 = load i32, i32* %15, align 4
  %197 = call i32 @G_FW_HDR_FW_VER_BUILD(i32 %196)
  %198 = load i32, i32* %14, align 4
  %199 = call i32 @G_FW_HDR_FW_VER_MAJOR(i32 %198)
  %200 = load i32, i32* %14, align 4
  %201 = call i32 @G_FW_HDR_FW_VER_MINOR(i32 %200)
  %202 = load i32, i32* %14, align 4
  %203 = call i32 @G_FW_HDR_FW_VER_MICRO(i32 %202)
  %204 = load i32, i32* %14, align 4
  %205 = call i32 @G_FW_HDR_FW_VER_BUILD(i32 %204)
  %206 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %189, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.8, i64 0, i64 0), i32 %191, i32 %193, i32 %195, i32 %197, i32 %199, i32 %201, i32 %203, i32 %205)
  %207 = load %struct.adapter*, %struct.adapter** %6, align 8
  %208 = getelementptr inbounds %struct.adapter, %struct.adapter* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @FW_OK, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %182
  br label %216

214:                                              ; preds = %182
  %215 = load i32, i32* @EINVAL, align 4
  br label %216

216:                                              ; preds = %214, %213
  %217 = phi i32 [ 0, %213 ], [ %215, %214 ]
  store i32 %217, i32* %16, align 4
  br label %268

218:                                              ; preds = %170
  %219 = load %struct.adapter*, %struct.adapter** %6, align 8
  %220 = getelementptr inbounds %struct.adapter, %struct.adapter* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %13, align 4
  %223 = call i32 @G_FW_HDR_FW_VER_MAJOR(i32 %222)
  %224 = load i32, i32* %13, align 4
  %225 = call i32 @G_FW_HDR_FW_VER_MINOR(i32 %224)
  %226 = load i32, i32* %13, align 4
  %227 = call i32 @G_FW_HDR_FW_VER_MICRO(i32 %226)
  %228 = load i32, i32* %13, align 4
  %229 = call i32 @G_FW_HDR_FW_VER_BUILD(i32 %228)
  %230 = load i8*, i8** %9, align 8
  %231 = load i32, i32* %14, align 4
  %232 = call i32 @G_FW_HDR_FW_VER_MAJOR(i32 %231)
  %233 = load i32, i32* %14, align 4
  %234 = call i32 @G_FW_HDR_FW_VER_MINOR(i32 %233)
  %235 = load i32, i32* %14, align 4
  %236 = call i32 @G_FW_HDR_FW_VER_MICRO(i32 %235)
  %237 = load i32, i32* %14, align 4
  %238 = call i32 @G_FW_HDR_FW_VER_BUILD(i32 %237)
  %239 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %221, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.9, i64 0, i64 0), i32 %223, i32 %225, i32 %227, i32 %229, i8* %230, i32 %232, i32 %234, i32 %236, i32 %238)
  %240 = load %struct.adapter*, %struct.adapter** %6, align 8
  %241 = load %struct.adapter*, %struct.adapter** %6, align 8
  %242 = getelementptr inbounds %struct.adapter, %struct.adapter* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.firmware*, %struct.firmware** %12, align 8
  %245 = getelementptr inbounds %struct.firmware, %struct.firmware* %244, i32 0, i32 0
  %246 = load %struct.fw_h*, %struct.fw_h** %245, align 8
  %247 = load %struct.firmware*, %struct.firmware** %12, align 8
  %248 = getelementptr inbounds %struct.firmware, %struct.firmware* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @t4_fw_upgrade(%struct.adapter* %240, i32 %243, %struct.fw_h* %246, i32 %249, i32 0)
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %16, align 4
  %252 = load i32, i32* %16, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %218
  %255 = load %struct.adapter*, %struct.adapter** %6, align 8
  %256 = getelementptr inbounds %struct.adapter, %struct.adapter* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %16, align 4
  %259 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %257, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %258)
  br label %267

260:                                              ; preds = %218
  %261 = load i32, i32* @ERESTART, align 4
  store i32 %261, i32* %16, align 4
  %262 = load %struct.fw_h*, %struct.fw_h** %7, align 8
  %263 = load %struct.firmware*, %struct.firmware** %12, align 8
  %264 = getelementptr inbounds %struct.firmware, %struct.firmware* %263, i32 0, i32 0
  %265 = load %struct.fw_h*, %struct.fw_h** %264, align 8
  %266 = call i32 @memcpy(%struct.fw_h* %262, %struct.fw_h* %265, i32 4)
  br label %267

267:                                              ; preds = %260, %254
  br label %268

268:                                              ; preds = %267, %216, %168, %108, %104, %98, %79
  %269 = load %struct.adapter*, %struct.adapter** %6, align 8
  %270 = load %struct.firmware*, %struct.firmware** %11, align 8
  %271 = load %struct.firmware*, %struct.firmware** %12, align 8
  %272 = call i32 @unload_fw_module(%struct.adapter* %269, %struct.firmware* %270, %struct.firmware* %271)
  %273 = load i32, i32* %16, align 4
  ret i32 %273
}

declare dso_local i8* @be32toh(i32) #1

declare dso_local i32 @memcpy(%struct.fw_h*, %struct.fw_h*, i32) #1

declare dso_local i32 @load_fw_module(%struct.adapter*, %struct.firmware**, %struct.firmware**) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @fw_compatible(%struct.fw_h*, %struct.fw_h*) #1

declare dso_local i32 @G_FW_HDR_FW_VER_MAJOR(i32) #1

declare dso_local i32 @G_FW_HDR_FW_VER_MINOR(i32) #1

declare dso_local i32 @G_FW_HDR_FW_VER_MICRO(i32) #1

declare dso_local i32 @G_FW_HDR_FW_VER_BUILD(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @t4_fw_upgrade(%struct.adapter*, i32, %struct.fw_h*, i32, i32) #1

declare dso_local i32 @unload_fw_module(%struct.adapter*, %struct.firmware*, %struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
