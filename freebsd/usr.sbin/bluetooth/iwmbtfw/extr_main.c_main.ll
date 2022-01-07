; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/iwmbtfw/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/iwmbtfw/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwmbt_version = type { i32 }
%struct.iwmbt_boot_params = type { i32 }

@main.ver = internal global %struct.iwmbt_version zeroinitializer, align 4
@main.params = internal global %struct.iwmbt_boot_params zeroinitializer, align 4
@.str = private unnamed_addr constant [14 x i8] c"Dd:f:hIm:p:v:\00", align 1
@optarg = common dso_local global i32 0, align 4
@iwmbt_do_debug = common dso_local global i32 0, align 4
@iwmbt_do_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"libusb_init failed: code %d\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"opening dev %d.%d\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"device not found\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"libusb_open() failed: code %d\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"libusb_kernel_driver_active() failed: code %d\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Firmware has already been downloaded\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"iwmbt_get_version() failedL code %d\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"fw_variant=0x%02x\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"unknown fw_variant 0x%02x\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"iwmbt_get_boot_params() failed!\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"Unsupported Intel firmware loading method (%u)\00", align 1
@_DEFAULT_IWMBT_FIRMWARE_PATH = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"sfi\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"firmware_path = %s\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Firmware download complete\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"iwmbt_intel_reset() failed!\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"Firmware operational\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"ddc\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"ddc_path = %s\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"DDC download complete\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"Intel Event Mask is set\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"libusb_reset_device() failed: %s\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"Firmware download is succesful!\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"Firmware download failed!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i32 1, i32* %17, align 4
  br label %18

18:                                               ; preds = %46, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %14, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %47

23:                                               ; preds = %18
  %24 = load i32, i32* %14, align 4
  switch i32 %24, label %44 [
    i32 100, label %25
    i32 68, label %32
    i32 102, label %33
    i32 73, label %42
    i32 104, label %43
  ]

25:                                               ; preds = %23
  store i32 1, i32* %13, align 4
  %26 = load i32, i32* @optarg, align 4
  %27 = call i32 @parse_ugen_name(i32 %26, i64* %11, i64* %12)
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 (...) @usage()
  br label %31

31:                                               ; preds = %29, %25
  br label %46

32:                                               ; preds = %23
  store i32 1, i32* @iwmbt_do_debug, align 4
  br label %46

33:                                               ; preds = %23
  %34 = load i8*, i8** %15, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i8*, i8** %15, align 8
  %38 = call i32 @free(i8* %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* @optarg, align 4
  %41 = call i8* @strdup(i32 %40)
  store i8* %41, i8** %15, align 8
  br label %46

42:                                               ; preds = %23
  store i32 1, i32* @iwmbt_do_info, align 4
  br label %46

43:                                               ; preds = %23
  br label %44

44:                                               ; preds = %23, %43
  %45 = call i32 (...) @usage()
  br label %46

46:                                               ; preds = %44, %42, %39, %32, %31
  br label %18

47:                                               ; preds = %18
  %48 = load i32, i32* %13, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 (...) @usage()
  br label %52

52:                                               ; preds = %50, %47
  %53 = call i32 @libusb_init(i32** %6)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* %10, align 4
  %58 = call i32 (i8*, ...) @iwmbt_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = call i32 @exit(i32 127) #3
  unreachable

60:                                               ; preds = %52
  %61 = load i64, i64* %11, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i64, i64* %12, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 (i8*, ...) @iwmbt_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %64)
  %66 = load i32*, i32** %6, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %12, align 8
  %69 = call i32* @iwmbt_find_device(i32* %66, i64 %67, i64 %68)
  store i32* %69, i32** %7, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %60
  %73 = call i32 (i8*, ...) @iwmbt_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %207

74:                                               ; preds = %60
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @libusb_open(i32* %75, i32** %8)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* %10, align 4
  %81 = call i32 (i8*, ...) @iwmbt_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  br label %207

82:                                               ; preds = %74
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @libusb_kernel_driver_active(i32* %83, i32 0)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* %10, align 4
  %89 = call i32 (i8*, ...) @iwmbt_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %88)
  br label %207

90:                                               ; preds = %82
  %91 = load i32, i32* %10, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = call i32 @iwmbt_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  br label %207

95:                                               ; preds = %90
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @iwmbt_get_version(i32* %96, %struct.iwmbt_version* @main.ver)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* %10, align 4
  %102 = call i32 (i8*, ...) @iwmbt_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %101)
  br label %207

103:                                              ; preds = %95
  %104 = call i32 @iwmbt_dump_version(%struct.iwmbt_version* @main.ver)
  %105 = load i32, i32* getelementptr inbounds (%struct.iwmbt_version, %struct.iwmbt_version* @main.ver, i32 0, i32 0), align 4
  %106 = call i32 (i8*, ...) @iwmbt_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* getelementptr inbounds (%struct.iwmbt_version, %struct.iwmbt_version* @main.ver, i32 0, i32 0), align 4
  %108 = icmp eq i32 %107, 35
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = call i32 @iwmbt_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  br label %197

111:                                              ; preds = %103
  %112 = load i32, i32* getelementptr inbounds (%struct.iwmbt_version, %struct.iwmbt_version* @main.ver, i32 0, i32 0), align 4
  %113 = icmp ne i32 %112, 6
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* getelementptr inbounds (%struct.iwmbt_version, %struct.iwmbt_version* @main.ver, i32 0, i32 0), align 4
  %116 = call i32 (i8*, ...) @iwmbt_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %115)
  br label %207

117:                                              ; preds = %111
  %118 = load i32*, i32** %8, align 8
  %119 = call i32 @iwmbt_get_boot_params(i32* %118, %struct.iwmbt_boot_params* @main.params)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = call i32 (i8*, ...) @iwmbt_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  br label %207

124:                                              ; preds = %117
  %125 = call i32 @iwmbt_dump_boot_params(%struct.iwmbt_boot_params* @main.params)
  %126 = load i32, i32* getelementptr inbounds (%struct.iwmbt_boot_params, %struct.iwmbt_boot_params* @main.params, i32 0, i32 0), align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i32, i32* getelementptr inbounds (%struct.iwmbt_boot_params, %struct.iwmbt_boot_params* @main.params, i32 0, i32 0), align 4
  %130 = call i32 (i8*, ...) @iwmbt_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i32 %129)
  br label %207

131:                                              ; preds = %124
  %132 = load i8*, i8** %15, align 8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32, i32* @_DEFAULT_IWMBT_FIRMWARE_PATH, align 4
  %136 = call i8* @strdup(i32 %135)
  store i8* %136, i8** %15, align 8
  br label %137

137:                                              ; preds = %134, %131
  %138 = load i8*, i8** %15, align 8
  %139 = call i8* @iwmbt_get_fwname(%struct.iwmbt_version* @main.ver, %struct.iwmbt_boot_params* @main.params, i8* %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  store i8* %139, i8** %16, align 8
  %140 = load i8*, i8** %16, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %207

143:                                              ; preds = %137
  %144 = load i8*, i8** %16, align 8
  %145 = call i32 (i8*, ...) @iwmbt_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8* %144)
  %146 = load i32*, i32** %8, align 8
  %147 = load i8*, i8** %16, align 8
  %148 = call i32 @iwmbt_init_firmware(i32* %146, i8* %147, i32* %9)
  store i32 %148, i32* %10, align 4
  %149 = load i8*, i8** %16, align 8
  %150 = call i32 @free(i8* %149)
  %151 = load i32, i32* %10, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %143
  br label %207

154:                                              ; preds = %143
  %155 = call i32 @iwmbt_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  %156 = load i32*, i32** %8, align 8
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @iwmbt_intel_reset(i32* %156, i32 %157)
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %154
  %162 = call i32 (i8*, ...) @iwmbt_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  br label %207

163:                                              ; preds = %154
  %164 = call i32 @iwmbt_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  %165 = load i32*, i32** %8, align 8
  %166 = call i32 @iwmbt_get_version(i32* %165, %struct.iwmbt_version* @main.ver)
  store i32 %166, i32* %10, align 4
  %167 = load i32, i32* %10, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %163
  %170 = call i32 @iwmbt_dump_version(%struct.iwmbt_version* @main.ver)
  br label %171

171:                                              ; preds = %169, %163
  %172 = load i8*, i8** %15, align 8
  %173 = call i8* @iwmbt_get_fwname(%struct.iwmbt_version* @main.ver, %struct.iwmbt_boot_params* @main.params, i8* %172, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  store i8* %173, i8** %16, align 8
  %174 = load i8*, i8** %16, align 8
  %175 = call i32 (i8*, ...) @iwmbt_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %174)
  %176 = load i8*, i8** %16, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %189

178:                                              ; preds = %171
  %179 = load i32*, i32** %8, align 8
  %180 = load i8*, i8** %16, align 8
  %181 = call i32 @iwmbt_init_ddc(i32* %179, i8* %180)
  store i32 %181, i32* %10, align 4
  %182 = load i32, i32* %10, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %178
  %185 = call i32 @iwmbt_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0))
  br label %186

186:                                              ; preds = %184, %178
  %187 = load i8*, i8** %16, align 8
  %188 = call i32 @free(i8* %187)
  br label %189

189:                                              ; preds = %186, %171
  %190 = load i32*, i32** %8, align 8
  %191 = call i32 @iwmbt_set_event_mask(i32* %190)
  store i32 %191, i32* %10, align 4
  %192 = load i32, i32* %10, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %189
  %195 = call i32 @iwmbt_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0))
  br label %196

196:                                              ; preds = %194, %189
  br label %197

197:                                              ; preds = %196, %109
  %198 = load i32*, i32** %8, align 8
  %199 = call i32 @libusb_reset_device(i32* %198)
  store i32 %199, i32* %10, align 4
  %200 = load i32, i32* %10, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %197
  %203 = load i32, i32* %10, align 4
  %204 = call i32 @libusb_strerror(i32 %203)
  %205 = call i32 (i8*, ...) @iwmbt_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0), i32 %204)
  br label %206

206:                                              ; preds = %202, %197
  br label %207

207:                                              ; preds = %206, %161, %153, %142, %128, %122, %114, %100, %93, %87, %79, %72
  %208 = load i32*, i32** %8, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load i32*, i32** %8, align 8
  %212 = call i32 @libusb_close(i32* %211)
  br label %213

213:                                              ; preds = %210, %207
  %214 = load i32*, i32** %7, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load i32*, i32** %7, align 8
  %218 = call i32 @libusb_unref_device(i32* %217)
  br label %219

219:                                              ; preds = %216, %213
  %220 = load i32*, i32** %6, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load i32*, i32** %6, align 8
  %224 = call i32 @libusb_exit(i32* %223)
  br label %225

225:                                              ; preds = %222, %219
  %226 = load i32, i32* %17, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %225
  %229 = call i32 @iwmbt_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0))
  br label %232

230:                                              ; preds = %225
  %231 = call i32 (i8*, ...) @iwmbt_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0))
  br label %232

232:                                              ; preds = %230, %228
  %233 = load i32, i32* %17, align 4
  ret i32 %233
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @parse_ugen_name(i32, i64*, i64*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @libusb_init(i32**) #1

declare dso_local i32 @iwmbt_err(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @iwmbt_debug(i8*, ...) #1

declare dso_local i32* @iwmbt_find_device(i32*, i64, i64) #1

declare dso_local i32 @libusb_open(i32*, i32**) #1

declare dso_local i32 @libusb_kernel_driver_active(i32*, i32) #1

declare dso_local i32 @iwmbt_info(i8*) #1

declare dso_local i32 @iwmbt_get_version(i32*, %struct.iwmbt_version*) #1

declare dso_local i32 @iwmbt_dump_version(%struct.iwmbt_version*) #1

declare dso_local i32 @iwmbt_get_boot_params(i32*, %struct.iwmbt_boot_params*) #1

declare dso_local i32 @iwmbt_dump_boot_params(%struct.iwmbt_boot_params*) #1

declare dso_local i8* @iwmbt_get_fwname(%struct.iwmbt_version*, %struct.iwmbt_boot_params*, i8*, i8*) #1

declare dso_local i32 @iwmbt_init_firmware(i32*, i8*, i32*) #1

declare dso_local i32 @iwmbt_intel_reset(i32*, i32) #1

declare dso_local i32 @iwmbt_init_ddc(i32*, i8*) #1

declare dso_local i32 @iwmbt_set_event_mask(i32*) #1

declare dso_local i32 @libusb_reset_device(i32*) #1

declare dso_local i32 @libusb_strerror(i32) #1

declare dso_local i32 @libusb_close(i32*) #1

declare dso_local i32 @libusb_unref_device(i32*) #1

declare dso_local i32 @libusb_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
