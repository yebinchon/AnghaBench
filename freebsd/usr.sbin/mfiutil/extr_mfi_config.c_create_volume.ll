; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_config.c_create_volume.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_config.c_create_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32* }
%struct.mfi_config_data = type { i32, i32, i32, i32, i64, i32, %struct.mfi_config_data*, i64, i64, i32 }
%struct.mfi_array = type { %struct.mfi_config_data }
%struct.mfi_ld_config = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.mfi_config_data }
%struct.config_id_state = type { i32, i32, i32, i32, %struct.mfi_config_data*, %struct.mfi_config_data* }
%struct.array_info = type { i32, i32, i32, i32, i64, i32, %struct.array_info*, i64, i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"spare\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"create volume: volume type required\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mfi_unit = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"mfi_open\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"The current mfi(4) driver does not support configuration changes.\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@raid_type_table = common dso_local global %struct.TYPE_8__* null, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"Unknown or unsupported volume type %s\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"ds:v\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"At least one drive list is required\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Only one drive list can be specified\00", align 1
@.str.9 = private unnamed_addr constant [60 x i8] c"RAID10, RAID50, and RAID60 require at least two drive lists\00", align 1
@MFI_MAX_SPAN_DEPTH = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"Volume spans more than %d arrays\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [50 x i8] c"All arrays must contain the same number of drives\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Failed to read configuration\00", align 1
@compare_int = common dso_local global i32 0, align 4
@MFI_ARRAY_SIZE = common dso_local global i32 0, align 4
@MFI_DCMD_CFG_ADD = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [21 x i8] c"Failed to add volume\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @create_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_volume(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mfi_config_data*, align 8
  %7 = alloca %struct.mfi_array*, align 8
  %8 = alloca %struct.mfi_ld_config*, align 8
  %9 = alloca %struct.config_id_state, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.array_info*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %54

27:                                               ; preds = %2
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %35, i8*** %5, align 8
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %4, align 4
  br label %53

38:                                               ; preds = %27
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i32 1
  store i8** %46, i8*** %5, align 8
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i8**, i8*** %5, align 8
  %51 = call i32 @add_spare(i32 %49, i8** %50)
  store i32 %51, i32* %3, align 4
  br label %537

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %33
  br label %54

54:                                               ; preds = %53, %2
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 2
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* %3, align 4
  br label %537

60:                                               ; preds = %54
  %61 = call i32 @bzero(%struct.config_id_state* %9, i32 32)
  store %struct.mfi_config_data* null, %struct.mfi_config_data** %6, align 8
  store %struct.array_info* null, %struct.array_info** %21, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %14, align 4
  %62 = load i32, i32* @mfi_unit, align 4
  %63 = load i32, i32* @O_RDWR, align 4
  %64 = call i32 @mfi_open(i32 %62, i32 %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* @errno, align 4
  store i32 %68, i32* %14, align 4
  %69 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %3, align 4
  br label %537

71:                                               ; preds = %60
  %72 = call i32 (...) @mfi_reconfig_supported()
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %76, i32* %14, align 4
  br label %501

77:                                               ; preds = %71
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %78

78:                                               ; preds = %106, %77
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** @raid_type_table, align 8
  %80 = load i32, i32* %16, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %109

86:                                               ; preds = %78
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** @raid_type_table, align 8
  %88 = load i32, i32* %16, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i8**, i8*** %5, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @strcasecmp(i32* %92, i8* %95)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %86
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** @raid_type_table, align 8
  %100 = load i32, i32* %16, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %17, align 4
  br label %109

105:                                              ; preds = %86
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %16, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %16, align 4
  br label %78

109:                                              ; preds = %98, %78
  %110 = load i32, i32* %17, align 4
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i8**, i8*** %5, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 1
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %115)
  %117 = load i32, i32* @EINVAL, align 4
  store i32 %117, i32* %14, align 4
  br label %501

118:                                              ; preds = %109
  store i32 2, i32* @optind, align 4
  store i32 0, i32* %24, align 4
  store i64 65536, i64* %22, align 8
  br label %119

119:                                              ; preds = %141, %118
  %120 = load i32, i32* %4, align 4
  %121 = load i8**, i8*** %5, align 8
  %122 = call i32 @getopt(i32 %120, i8** %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i32 %122, i32* %23, align 4
  %123 = icmp ne i32 %122, -1
  br i1 %123, label %124, label %142

124:                                              ; preds = %119
  %125 = load i32, i32* %23, align 4
  switch i32 %125, label %139 [
    i32 115, label %126
    i32 118, label %137
    i32 63, label %138
  ]

126:                                              ; preds = %124
  %127 = load i32, i32* @optarg, align 4
  %128 = call i64 @dehumanize(i32 %127)
  store i64 %128, i64* %22, align 8
  %129 = load i64, i64* %22, align 8
  %130 = icmp slt i64 %129, 512
  br i1 %130, label %135, label %131

131:                                              ; preds = %126
  %132 = load i64, i64* %22, align 8
  %133 = call i32 @powerof2(i64 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %131, %126
  store i64 65536, i64* %22, align 8
  br label %136

136:                                              ; preds = %135, %131
  br label %141

137:                                              ; preds = %124
  store i32 1, i32* %24, align 4
  br label %141

138:                                              ; preds = %124
  br label %139

139:                                              ; preds = %124, %138
  %140 = load i32, i32* @EINVAL, align 4
  store i32 %140, i32* %14, align 4
  br label %501

141:                                              ; preds = %137, %136
  br label %119

142:                                              ; preds = %119
  %143 = load i32, i32* @optind, align 4
  %144 = load i32, i32* %4, align 4
  %145 = sub nsw i32 %144, %143
  store i32 %145, i32* %4, align 4
  %146 = load i32, i32* @optind, align 4
  %147 = load i8**, i8*** %5, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i8*, i8** %147, i64 %148
  store i8** %149, i8*** %5, align 8
  %150 = load i32, i32* %4, align 4
  store i32 %150, i32* %18, align 4
  %151 = load i32, i32* %18, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %142
  %154 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %155 = load i32, i32* @EINVAL, align 4
  store i32 %155, i32* %14, align 4
  br label %501

156:                                              ; preds = %142
  %157 = load i32, i32* %17, align 4
  switch i32 %157, label %180 [
    i32 134, label %158
    i32 133, label %158
    i32 131, label %158
    i32 129, label %158
    i32 136, label %158
    i32 132, label %165
    i32 130, label %165
    i32 128, label %165
  ]

158:                                              ; preds = %156, %156, %156, %156, %156
  %159 = load i32, i32* %18, align 4
  %160 = icmp ne i32 %159, 1
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %163 = load i32, i32* @EINVAL, align 4
  store i32 %163, i32* %14, align 4
  br label %501

164:                                              ; preds = %158
  br label %180

165:                                              ; preds = %156, %156, %156
  %166 = load i32, i32* %18, align 4
  %167 = icmp slt i32 %166, 1
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.9, i64 0, i64 0))
  %170 = load i32, i32* @EINVAL, align 4
  store i32 %170, i32* %14, align 4
  br label %501

171:                                              ; preds = %165
  %172 = load i32, i32* %18, align 4
  %173 = load i32, i32* @MFI_MAX_SPAN_DEPTH, align 4
  %174 = icmp sgt i32 %172, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %171
  %176 = load i32, i32* @MFI_MAX_SPAN_DEPTH, align 4
  %177 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* @EINVAL, align 4
  store i32 %178, i32* %14, align 4
  br label %501

179:                                              ; preds = %171
  br label %180

180:                                              ; preds = %156, %179, %164
  %181 = load i32, i32* %18, align 4
  %182 = call i8* @calloc(i32 %181, i64 64)
  %183 = bitcast i8* %182 to %struct.array_info*
  store %struct.array_info* %183, %struct.array_info** %21, align 8
  %184 = load %struct.array_info*, %struct.array_info** %21, align 8
  %185 = icmp eq %struct.array_info* %184, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %180
  %187 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %188 = load i32, i32* @ENOMEM, align 4
  store i32 %188, i32* %14, align 4
  br label %501

189:                                              ; preds = %180
  store i32 0, i32* %16, align 4
  br label %190

190:                                              ; preds = %212, %189
  %191 = load i32, i32* %16, align 4
  %192 = load i32, i32* %18, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %215

194:                                              ; preds = %190
  %195 = load i32, i32* %15, align 4
  %196 = load i32, i32* %17, align 4
  %197 = load i8**, i8*** %5, align 8
  %198 = load i32, i32* %16, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8*, i8** %197, i64 %199
  %201 = load i8*, i8** %200, align 8
  %202 = load %struct.array_info*, %struct.array_info** %21, align 8
  %203 = load i32, i32* %16, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.array_info, %struct.array_info* %202, i64 %204
  %206 = bitcast %struct.array_info* %205 to %struct.mfi_config_data*
  %207 = call i32 @parse_array(i32 %195, i32 %196, i8* %201, %struct.mfi_config_data* %206)
  store i32 %207, i32* %14, align 4
  %208 = load i32, i32* %14, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %194
  br label %501

211:                                              ; preds = %194
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %16, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %16, align 4
  br label %190

215:                                              ; preds = %190
  %216 = load i32, i32* %17, align 4
  switch i32 %216, label %242 [
    i32 132, label %217
    i32 130, label %217
    i32 128, label %217
  ]

217:                                              ; preds = %215, %215, %215
  store i32 1, i32* %16, align 4
  br label %218

218:                                              ; preds = %238, %217
  %219 = load i32, i32* %16, align 4
  %220 = load i32, i32* %18, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %241

222:                                              ; preds = %218
  %223 = load %struct.array_info*, %struct.array_info** %21, align 8
  %224 = load i32, i32* %16, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.array_info, %struct.array_info* %223, i64 %225
  %227 = getelementptr inbounds %struct.array_info, %struct.array_info* %226, i32 0, i32 9
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.array_info*, %struct.array_info** %21, align 8
  %230 = getelementptr inbounds %struct.array_info, %struct.array_info* %229, i64 0
  %231 = getelementptr inbounds %struct.array_info, %struct.array_info* %230, i32 0, i32 9
  %232 = load i32, i32* %231, align 8
  %233 = icmp ne i32 %228, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %222
  %235 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0))
  %236 = load i32, i32* @EINVAL, align 4
  store i32 %236, i32* %14, align 4
  br label %501

237:                                              ; preds = %222
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %16, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %16, align 4
  br label %218

241:                                              ; preds = %218
  br label %242

242:                                              ; preds = %215, %241
  %243 = load i32, i32* %15, align 4
  %244 = call i64 @mfi_config_read(i32 %243, %struct.mfi_config_data** %6)
  %245 = icmp slt i64 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %242
  %247 = load i32, i32* @errno, align 4
  store i32 %247, i32* %14, align 4
  %248 = call i32 @warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  br label %501

249:                                              ; preds = %242
  %250 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %251 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %250, i32 0, i32 7
  %252 = load i64, i64* %251, align 8
  %253 = inttoptr i64 %252 to i8*
  store i8* %253, i8** %11, align 8
  %254 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %9, i32 0, i32 0
  store i32 65535, i32* %254, align 8
  %255 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %9, i32 0, i32 1
  store i32 255, i32* %255, align 4
  %256 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %257 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %9, i32 0, i32 2
  store i32 %258, i32* %259, align 8
  %260 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %261 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = icmp sgt i32 %262, 0
  br i1 %263, label %264, label %313

264:                                              ; preds = %249
  %265 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %266 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = call i8* @calloc(i32 %267, i64 4)
  %269 = bitcast i8* %268 to %struct.mfi_config_data*
  %270 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %9, i32 0, i32 4
  store %struct.mfi_config_data* %269, %struct.mfi_config_data** %270, align 8
  %271 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %9, i32 0, i32 4
  %272 = load %struct.mfi_config_data*, %struct.mfi_config_data** %271, align 8
  %273 = icmp eq %struct.mfi_config_data* %272, null
  br i1 %273, label %274, label %277

274:                                              ; preds = %264
  %275 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %276 = load i32, i32* @ENOMEM, align 4
  store i32 %276, i32* %14, align 4
  br label %501

277:                                              ; preds = %264
  store i32 0, i32* %16, align 4
  br label %278

278:                                              ; preds = %302, %277
  %279 = load i32, i32* %16, align 4
  %280 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %281 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = icmp slt i32 %279, %282
  br i1 %283, label %284, label %305

284:                                              ; preds = %278
  %285 = load i8*, i8** %11, align 8
  %286 = bitcast i8* %285 to %struct.mfi_array*
  store %struct.mfi_array* %286, %struct.mfi_array** %7, align 8
  %287 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %9, i32 0, i32 4
  %288 = load %struct.mfi_config_data*, %struct.mfi_config_data** %287, align 8
  %289 = load i32, i32* %16, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %288, i64 %290
  %292 = load %struct.mfi_array*, %struct.mfi_array** %7, align 8
  %293 = getelementptr inbounds %struct.mfi_array, %struct.mfi_array* %292, i32 0, i32 0
  %294 = bitcast %struct.mfi_config_data* %291 to i8*
  %295 = bitcast %struct.mfi_config_data* %293 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %294, i8* align 8 %295, i64 64, i1 false)
  %296 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %297 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load i8*, i8** %11, align 8
  %300 = sext i32 %298 to i64
  %301 = getelementptr inbounds i8, i8* %299, i64 %300
  store i8* %301, i8** %11, align 8
  br label %302

302:                                              ; preds = %284
  %303 = load i32, i32* %16, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %16, align 4
  br label %278

305:                                              ; preds = %278
  %306 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %9, i32 0, i32 4
  %307 = load %struct.mfi_config_data*, %struct.mfi_config_data** %306, align 8
  %308 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %309 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @compare_int, align 4
  %312 = call i32 @qsort(%struct.mfi_config_data* %307, i32 %310, i32 4, i32 %311)
  br label %315

313:                                              ; preds = %249
  %314 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %9, i32 0, i32 4
  store %struct.mfi_config_data* null, %struct.mfi_config_data** %314, align 8
  br label %315

315:                                              ; preds = %313, %305
  %316 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %317 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 8
  %319 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %9, i32 0, i32 3
  store i32 %318, i32* %319, align 4
  %320 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %321 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 8
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %376

324:                                              ; preds = %315
  %325 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %326 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = call i8* @calloc(i32 %327, i64 4)
  %329 = bitcast i8* %328 to %struct.mfi_config_data*
  %330 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %9, i32 0, i32 5
  store %struct.mfi_config_data* %329, %struct.mfi_config_data** %330, align 8
  %331 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %9, i32 0, i32 5
  %332 = load %struct.mfi_config_data*, %struct.mfi_config_data** %331, align 8
  %333 = icmp eq %struct.mfi_config_data* %332, null
  br i1 %333, label %334, label %337

334:                                              ; preds = %324
  %335 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %336 = load i32, i32* @ENOMEM, align 4
  store i32 %336, i32* %14, align 4
  br label %501

337:                                              ; preds = %324
  store i32 0, i32* %16, align 4
  br label %338

338:                                              ; preds = %365, %337
  %339 = load i32, i32* %16, align 4
  %340 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %341 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = icmp slt i32 %339, %342
  br i1 %343, label %344, label %368

344:                                              ; preds = %338
  %345 = load i8*, i8** %11, align 8
  %346 = bitcast i8* %345 to %struct.mfi_ld_config*
  store %struct.mfi_ld_config* %346, %struct.mfi_ld_config** %8, align 8
  %347 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %9, i32 0, i32 5
  %348 = load %struct.mfi_config_data*, %struct.mfi_config_data** %347, align 8
  %349 = load i32, i32* %16, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %348, i64 %350
  %352 = load %struct.mfi_ld_config*, %struct.mfi_ld_config** %8, align 8
  %353 = getelementptr inbounds %struct.mfi_ld_config, %struct.mfi_ld_config* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i32 0, i32 0
  %357 = bitcast %struct.mfi_config_data* %351 to i8*
  %358 = bitcast %struct.mfi_config_data* %356 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %357, i8* align 8 %358, i64 64, i1 false)
  %359 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %360 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 4
  %362 = load i8*, i8** %11, align 8
  %363 = sext i32 %361 to i64
  %364 = getelementptr inbounds i8, i8* %362, i64 %363
  store i8* %364, i8** %11, align 8
  br label %365

365:                                              ; preds = %344
  %366 = load i32, i32* %16, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %16, align 4
  br label %338

368:                                              ; preds = %338
  %369 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %9, i32 0, i32 5
  %370 = load %struct.mfi_config_data*, %struct.mfi_config_data** %369, align 8
  %371 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %372 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 8
  %374 = load i32, i32* @compare_int, align 4
  %375 = call i32 @qsort(%struct.mfi_config_data* %370, i32 %373, i32 4, i32 %374)
  br label %378

376:                                              ; preds = %315
  %377 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %9, i32 0, i32 5
  store %struct.mfi_config_data* null, %struct.mfi_config_data** %377, align 8
  br label %378

378:                                              ; preds = %376, %368
  %379 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %380 = call i32 @free(%struct.mfi_config_data* %379)
  %381 = load i32, i32* %17, align 4
  switch i32 %381, label %385 [
    i32 134, label %382
    i32 133, label %382
    i32 131, label %382
    i32 129, label %382
    i32 136, label %382
    i32 135, label %382
    i32 132, label %384
    i32 130, label %384
    i32 128, label %384
  ]

382:                                              ; preds = %378, %378, %378, %378, %378, %378
  %383 = load i32, i32* %18, align 4
  store i32 %383, i32* %19, align 4
  br label %387

384:                                              ; preds = %378, %378, %378
  store i32 1, i32* %19, align 4
  br label %387

385:                                              ; preds = %378
  %386 = call i32 (...) @abort() #4
  unreachable

387:                                              ; preds = %384, %382
  %388 = load i32, i32* %19, align 4
  %389 = sext i32 %388 to i64
  %390 = mul i64 64, %389
  %391 = add i64 64, %390
  %392 = load i32, i32* @MFI_ARRAY_SIZE, align 4
  %393 = load i32, i32* %18, align 4
  %394 = mul nsw i32 %392, %393
  %395 = sext i32 %394 to i64
  %396 = add i64 %391, %395
  store i64 %396, i64* %10, align 8
  %397 = load i64, i64* %10, align 8
  %398 = call i8* @calloc(i32 1, i64 %397)
  %399 = bitcast i8* %398 to %struct.mfi_config_data*
  store %struct.mfi_config_data* %399, %struct.mfi_config_data** %6, align 8
  %400 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %401 = icmp eq %struct.mfi_config_data* %400, null
  br i1 %401, label %402, label %405

402:                                              ; preds = %387
  %403 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %404 = load i32, i32* @ENOMEM, align 4
  store i32 %404, i32* %14, align 4
  br label %501

405:                                              ; preds = %387
  %406 = load i64, i64* %10, align 8
  %407 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %408 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %407, i32 0, i32 4
  store i64 %406, i64* %408, align 8
  %409 = load i32, i32* %18, align 4
  %410 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %411 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %410, i32 0, i32 0
  store i32 %409, i32* %411, align 8
  %412 = load i32, i32* @MFI_ARRAY_SIZE, align 4
  %413 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %414 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %413, i32 0, i32 1
  store i32 %412, i32* %414, align 4
  %415 = load i32, i32* %19, align 4
  %416 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %417 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %416, i32 0, i32 2
  store i32 %415, i32* %417, align 8
  %418 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %419 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %418, i32 0, i32 3
  store i32 64, i32* %419, align 4
  %420 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %421 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %420, i32 0, i32 8
  store i64 0, i64* %421, align 8
  %422 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %423 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %422, i32 0, i32 5
  store i32 40, i32* %423, align 8
  %424 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %425 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %424, i32 0, i32 7
  %426 = load i64, i64* %425, align 8
  %427 = inttoptr i64 %426 to i8*
  store i8* %427, i8** %12, align 8
  %428 = load i8*, i8** %12, align 8
  %429 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %430 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = load i32, i32* %18, align 4
  %433 = mul nsw i32 %431, %432
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i8, i8* %428, i64 %434
  store i8* %435, i8** %13, align 8
  store i32 0, i32* %16, align 4
  br label %436

436:                                              ; preds = %456, %405
  %437 = load i32, i32* %16, align 4
  %438 = load i32, i32* %18, align 4
  %439 = icmp slt i32 %437, %438
  br i1 %439, label %440, label %459

440:                                              ; preds = %436
  %441 = load i32, i32* %15, align 4
  %442 = load i8*, i8** %12, align 8
  %443 = load %struct.array_info*, %struct.array_info** %21, align 8
  %444 = load i32, i32* %16, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds %struct.array_info, %struct.array_info* %443, i64 %445
  %447 = bitcast %struct.array_info* %446 to %struct.mfi_config_data*
  %448 = load i32, i32* %24, align 4
  %449 = call i32 @build_array(i32 %441, i8* %442, %struct.mfi_config_data* %447, %struct.config_id_state* %9, i32 %448)
  %450 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %451 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %450, i32 0, i32 1
  %452 = load i32, i32* %451, align 4
  %453 = load i8*, i8** %12, align 8
  %454 = sext i32 %452 to i64
  %455 = getelementptr inbounds i8, i8* %453, i64 %454
  store i8* %455, i8** %12, align 8
  br label %456

456:                                              ; preds = %440
  %457 = load i32, i32* %16, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %16, align 4
  br label %436

459:                                              ; preds = %436
  %460 = load i32, i32* %18, align 4
  %461 = load i32, i32* %19, align 4
  %462 = sdiv i32 %460, %461
  store i32 %462, i32* %20, align 4
  store i32 0, i32* %16, align 4
  br label %463

463:                                              ; preds = %487, %459
  %464 = load i32, i32* %16, align 4
  %465 = load i32, i32* %19, align 4
  %466 = icmp slt i32 %464, %465
  br i1 %466, label %467, label %490

467:                                              ; preds = %463
  %468 = load i8*, i8** %13, align 8
  %469 = load i32, i32* %20, align 4
  %470 = load %struct.array_info*, %struct.array_info** %21, align 8
  %471 = load i32, i32* %16, align 4
  %472 = load i32, i32* %20, align 4
  %473 = mul nsw i32 %471, %472
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds %struct.array_info, %struct.array_info* %470, i64 %474
  %476 = bitcast %struct.array_info* %475 to %struct.mfi_config_data*
  %477 = load i32, i32* %17, align 4
  %478 = load i64, i64* %22, align 8
  %479 = load i32, i32* %24, align 4
  %480 = call i32 @build_volume(i8* %468, i32 %469, %struct.mfi_config_data* %476, i32 %477, i64 %478, %struct.config_id_state* %9, i32 %479)
  %481 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %482 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %481, i32 0, i32 3
  %483 = load i32, i32* %482, align 4
  %484 = load i8*, i8** %13, align 8
  %485 = sext i32 %483 to i64
  %486 = getelementptr inbounds i8, i8* %484, i64 %485
  store i8* %486, i8** %13, align 8
  br label %487

487:                                              ; preds = %467
  %488 = load i32, i32* %16, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %16, align 4
  br label %463

490:                                              ; preds = %463
  %491 = load i32, i32* %15, align 4
  %492 = load i32, i32* @MFI_DCMD_CFG_ADD, align 4
  %493 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %494 = load i64, i64* %10, align 8
  %495 = call i64 @mfi_dcmd_command(i32 %491, i32 %492, %struct.mfi_config_data* %493, i64 %494, i32* null, i32 0, i32* null)
  %496 = icmp slt i64 %495, 0
  br i1 %496, label %497, label %500

497:                                              ; preds = %490
  %498 = load i32, i32* @errno, align 4
  store i32 %498, i32* %14, align 4
  %499 = call i32 @warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  br label %500

500:                                              ; preds = %497, %490
  br label %501

501:                                              ; preds = %500, %402, %334, %274, %246, %234, %210, %186, %175, %168, %161, %153, %139, %112, %74
  %502 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %503 = call i32 @free(%struct.mfi_config_data* %502)
  %504 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %9, i32 0, i32 5
  %505 = load %struct.mfi_config_data*, %struct.mfi_config_data** %504, align 8
  %506 = call i32 @free(%struct.mfi_config_data* %505)
  %507 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %9, i32 0, i32 4
  %508 = load %struct.mfi_config_data*, %struct.mfi_config_data** %507, align 8
  %509 = call i32 @free(%struct.mfi_config_data* %508)
  %510 = load %struct.array_info*, %struct.array_info** %21, align 8
  %511 = icmp ne %struct.array_info* %510, null
  br i1 %511, label %512, label %533

512:                                              ; preds = %501
  store i32 0, i32* %16, align 4
  br label %513

513:                                              ; preds = %526, %512
  %514 = load i32, i32* %16, align 4
  %515 = load i32, i32* %18, align 4
  %516 = icmp slt i32 %514, %515
  br i1 %516, label %517, label %529

517:                                              ; preds = %513
  %518 = load %struct.array_info*, %struct.array_info** %21, align 8
  %519 = load i32, i32* %16, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds %struct.array_info, %struct.array_info* %518, i64 %520
  %522 = getelementptr inbounds %struct.array_info, %struct.array_info* %521, i32 0, i32 6
  %523 = load %struct.array_info*, %struct.array_info** %522, align 8
  %524 = bitcast %struct.array_info* %523 to %struct.mfi_config_data*
  %525 = call i32 @free(%struct.mfi_config_data* %524)
  br label %526

526:                                              ; preds = %517
  %527 = load i32, i32* %16, align 4
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %16, align 4
  br label %513

529:                                              ; preds = %513
  %530 = load %struct.array_info*, %struct.array_info** %21, align 8
  %531 = bitcast %struct.array_info* %530 to %struct.mfi_config_data*
  %532 = call i32 @free(%struct.mfi_config_data* %531)
  br label %533

533:                                              ; preds = %529, %501
  %534 = load i32, i32* %15, align 4
  %535 = call i32 @close(i32 %534)
  %536 = load i32, i32* %14, align 4
  store i32 %536, i32* %3, align 4
  br label %537

537:                                              ; preds = %533, %67, %57, %44
  %538 = load i32, i32* %3, align 4
  ret i32 %538
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @add_spare(i32, i8**) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @bzero(%struct.config_id_state*, i32) #1

declare dso_local i32 @mfi_open(i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @mfi_reconfig_supported(...) #1

declare dso_local i64 @strcasecmp(i32*, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @dehumanize(i32) #1

declare dso_local i32 @powerof2(i64) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i32 @parse_array(i32, i32, i8*, %struct.mfi_config_data*) #1

declare dso_local i64 @mfi_config_read(i32, %struct.mfi_config_data**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @qsort(%struct.mfi_config_data*, i32, i32, i32) #1

declare dso_local i32 @free(%struct.mfi_config_data*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i32 @build_array(i32, i8*, %struct.mfi_config_data*, %struct.config_id_state*, i32) #1

declare dso_local i32 @build_volume(i8*, i32, %struct.mfi_config_data*, i32, i64, %struct.config_id_state*, i32) #1

declare dso_local i64 @mfi_dcmd_command(i32, i32, %struct.mfi_config_data*, i64, i32*, i32, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
