; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_config.c_config_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_config.c_config_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i8*, i8*, i64, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.sbuf = type { i32 }
%struct.config_entry = type { i8*, i8* }
%struct.config_value = type { i8* }

@CONFIG_SIZE = common dso_local global i32 0, align 4
@CONFFILE_PKG = common dso_local global i64 0, align 8
@CONFFILE_REPO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"url\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"PACKAGESITE\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"mirror_type\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"MIRROR_TYPE\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"signature_type\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"SIGNATURE_TYPE\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"fingerprints\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"FINGERPRINTS\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"pubkey\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"PUBKEY\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@UCL_BOOLEAN = common dso_local global i64 0, align 8
@c = common dso_local global %struct.TYPE_10__* null, align 8
@UCL_ARRAY = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [38 x i8] c"Skipping invalid array value for %s.\0A\00", align 1
@UCL_STRING = common dso_local global i64 0, align 8
@next = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i64)* @config_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_parse(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sbuf*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.config_entry*, align 8
  %11 = alloca %struct.config_value*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64 %1, i64* %4, align 8
  %15 = call %struct.sbuf* (...) @sbuf_new_auto()
  store %struct.sbuf* %15, %struct.sbuf** %5, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %16 = load i32, i32* @CONFIG_SIZE, align 4
  %17 = call %struct.config_entry* @calloc(i32 %16, i32 16)
  store %struct.config_entry* %17, %struct.config_entry** %10, align 8
  br label %18

18:                                               ; preds = %238, %166, %152, %143, %108, %27, %2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = call %struct.TYPE_9__* @ucl_iterate_object(%struct.TYPE_9__* %19, i32** %8, i32 1)
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %6, align 8
  %21 = icmp ne %struct.TYPE_9__* %20, null
  br i1 %21, label %22, label %239

22:                                               ; preds = %18
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = call i8* @ucl_object_key(%struct.TYPE_9__* %23)
  store i8* %24, i8** %12, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %18

28:                                               ; preds = %22
  %29 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %30 = call i32 @sbuf_clear(%struct.sbuf* %29)
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @CONFFILE_PKG, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %28
  store i64 0, i64* %14, align 8
  br label %35

35:                                               ; preds = %47, %34
  %36 = load i64, i64* %14, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = icmp ult i64 %36, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i64, i64* %14, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = call i32 @sbuf_putc(%struct.sbuf* %41, i8 signext %45)
  br label %47

47:                                               ; preds = %40
  %48 = load i64, i64* %14, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %14, align 8
  br label %35

50:                                               ; preds = %35
  %51 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %52 = call i32 @sbuf_finish(%struct.sbuf* %51)
  br label %118

53:                                               ; preds = %28
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* @CONFFILE_REPO, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %117

57:                                               ; preds = %53
  %58 = load i8*, i8** %12, align 8
  %59 = call i64 @strcasecmp(i8* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %63 = call i32 @sbuf_cpy(%struct.sbuf* %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %114

64:                                               ; preds = %57
  %65 = load i8*, i8** %12, align 8
  %66 = call i64 @strcasecmp(i8* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %70 = call i32 @sbuf_cpy(%struct.sbuf* %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %113

71:                                               ; preds = %64
  %72 = load i8*, i8** %12, align 8
  %73 = call i64 @strcasecmp(i8* %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %77 = call i32 @sbuf_cpy(%struct.sbuf* %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %112

78:                                               ; preds = %71
  %79 = load i8*, i8** %12, align 8
  %80 = call i64 @strcasecmp(i8* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %84 = call i32 @sbuf_cpy(%struct.sbuf* %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %111

85:                                               ; preds = %78
  %86 = load i8*, i8** %12, align 8
  %87 = call i64 @strcasecmp(i8* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %91 = call i32 @sbuf_cpy(%struct.sbuf* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %110

92:                                               ; preds = %85
  %93 = load i8*, i8** %12, align 8
  %94 = call i64 @strcasecmp(i8* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %92
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @UCL_BOOLEAN, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %96
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %104 = call i64 @ucl_object_toboolean(%struct.TYPE_9__* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102, %96
  br label %302

107:                                              ; preds = %102
  br label %109

108:                                              ; preds = %92
  br label %18

109:                                              ; preds = %107
  br label %110

110:                                              ; preds = %109, %89
  br label %111

111:                                              ; preds = %110, %82
  br label %112

112:                                              ; preds = %111, %75
  br label %113

113:                                              ; preds = %112, %68
  br label %114

114:                                              ; preds = %113, %61
  %115 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %116 = call i32 @sbuf_finish(%struct.sbuf* %115)
  br label %117

117:                                              ; preds = %114, %53
  br label %118

118:                                              ; preds = %117, %50
  store i32 0, i32* %13, align 4
  br label %119

119:                                              ; preds = %136, %118
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* @CONFIG_SIZE, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %139

123:                                              ; preds = %119
  %124 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %125 = call i32 @sbuf_data(%struct.sbuf* %124)
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** @c, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = call i64 @strcmp(i32 %125, i32 %131)
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %123
  br label %139

135:                                              ; preds = %123
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %13, align 4
  br label %119

139:                                              ; preds = %134, %119
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* @CONFIG_SIZE, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  br label %18

144:                                              ; preds = %139
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** @c, align 8
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %144
  br label %18

153:                                              ; preds = %144
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** @c, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  switch i32 %159, label %229 [
    i32 128, label %160
    i32 129, label %217
  ]

160:                                              ; preds = %153
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @UCL_ARRAY, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %174

166:                                              ; preds = %160
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** @c, align 8
  %168 = load i32, i32* %13, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i32 %172)
  br label %18

174:                                              ; preds = %160
  %175 = call i8* @malloc(i32 1)
  %176 = load %struct.config_entry*, %struct.config_entry** %10, align 8
  %177 = load i32, i32* %13, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.config_entry, %struct.config_entry* %176, i64 %178
  %180 = getelementptr inbounds %struct.config_entry, %struct.config_entry* %179, i32 0, i32 1
  store i8* %175, i8** %180, align 8
  %181 = load %struct.config_entry*, %struct.config_entry** %10, align 8
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.config_entry, %struct.config_entry* %181, i64 %183
  %185 = getelementptr inbounds %struct.config_entry, %struct.config_entry* %184, i32 0, i32 1
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @STAILQ_INIT(i8* %186)
  br label %188

188:                                              ; preds = %199, %198, %174
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %190 = call %struct.TYPE_9__* @ucl_iterate_object(%struct.TYPE_9__* %189, i32** %9, i32 1)
  store %struct.TYPE_9__* %190, %struct.TYPE_9__** %7, align 8
  %191 = icmp ne %struct.TYPE_9__* %190, null
  br i1 %191, label %192, label %216

192:                                              ; preds = %188
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @UCL_STRING, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %192
  br label %188

199:                                              ; preds = %192
  %200 = call i8* @malloc(i32 8)
  %201 = bitcast i8* %200 to %struct.config_value*
  store %struct.config_value* %201, %struct.config_value** %11, align 8
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %203 = call i8* @ucl_object_tostring(%struct.TYPE_9__* %202)
  %204 = call i8* @strdup(i8* %203)
  %205 = load %struct.config_value*, %struct.config_value** %11, align 8
  %206 = getelementptr inbounds %struct.config_value, %struct.config_value* %205, i32 0, i32 0
  store i8* %204, i8** %206, align 8
  %207 = load %struct.config_entry*, %struct.config_entry** %10, align 8
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.config_entry, %struct.config_entry* %207, i64 %209
  %211 = getelementptr inbounds %struct.config_entry, %struct.config_entry* %210, i32 0, i32 1
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.config_value*, %struct.config_value** %11, align 8
  %214 = load i32, i32* @next, align 4
  %215 = call i32 @STAILQ_INSERT_TAIL(i8* %212, %struct.config_value* %213, i32 %214)
  br label %188

216:                                              ; preds = %188
  br label %238

217:                                              ; preds = %153
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %219 = call i64 @ucl_object_toboolean(%struct.TYPE_9__* %218)
  %220 = icmp ne i64 %219, 0
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)
  %223 = call i8* @strdup(i8* %222)
  %224 = load %struct.config_entry*, %struct.config_entry** %10, align 8
  %225 = load i32, i32* %13, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.config_entry, %struct.config_entry* %224, i64 %226
  %228 = getelementptr inbounds %struct.config_entry, %struct.config_entry* %227, i32 0, i32 0
  store i8* %223, i8** %228, align 8
  br label %238

229:                                              ; preds = %153
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %231 = call i8* @ucl_object_tostring(%struct.TYPE_9__* %230)
  %232 = call i8* @strdup(i8* %231)
  %233 = load %struct.config_entry*, %struct.config_entry** %10, align 8
  %234 = load i32, i32* %13, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.config_entry, %struct.config_entry* %233, i64 %235
  %237 = getelementptr inbounds %struct.config_entry, %struct.config_entry* %236, i32 0, i32 0
  store i8* %232, i8** %237, align 8
  br label %238

238:                                              ; preds = %229, %217, %216
  br label %18

239:                                              ; preds = %18
  store i32 0, i32* %13, align 4
  br label %240

240:                                              ; preds = %298, %239
  %241 = load i32, i32* %13, align 4
  %242 = load i32, i32* @CONFIG_SIZE, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %301

244:                                              ; preds = %240
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** @c, align 8
  %246 = load i32, i32* %13, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 4
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %244
  br label %298

253:                                              ; preds = %244
  %254 = load i64, i64* %4, align 8
  %255 = load i64, i64* @CONFFILE_PKG, align 8
  %256 = icmp ne i64 %254, %255
  br i1 %256, label %257, label %266

257:                                              ; preds = %253
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** @c, align 8
  %259 = load i32, i32* %13, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = icmp eq i32 %263, 1
  br i1 %264, label %265, label %266

265:                                              ; preds = %257
  br label %298

266:                                              ; preds = %257, %253
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** @c, align 8
  %268 = load i32, i32* %13, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  switch i32 %272, label %285 [
    i32 128, label %273
  ]

273:                                              ; preds = %266
  %274 = load %struct.config_entry*, %struct.config_entry** %10, align 8
  %275 = load i32, i32* %13, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.config_entry, %struct.config_entry* %274, i64 %276
  %278 = getelementptr inbounds %struct.config_entry, %struct.config_entry* %277, i32 0, i32 1
  %279 = load i8*, i8** %278, align 8
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** @c, align 8
  %281 = load i32, i32* %13, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 3
  store i8* %279, i8** %284, align 8
  br label %297

285:                                              ; preds = %266
  %286 = load %struct.config_entry*, %struct.config_entry** %10, align 8
  %287 = load i32, i32* %13, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.config_entry, %struct.config_entry* %286, i64 %288
  %290 = getelementptr inbounds %struct.config_entry, %struct.config_entry* %289, i32 0, i32 0
  %291 = load i8*, i8** %290, align 8
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** @c, align 8
  %293 = load i32, i32* %13, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 2
  store i8* %291, i8** %296, align 8
  br label %297

297:                                              ; preds = %285, %273
  br label %298

298:                                              ; preds = %297, %265, %252
  %299 = load i32, i32* %13, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %13, align 4
  br label %240

301:                                              ; preds = %240
  br label %302

302:                                              ; preds = %301, %106
  %303 = load %struct.config_entry*, %struct.config_entry** %10, align 8
  %304 = call i32 @free(%struct.config_entry* %303)
  %305 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %306 = call i32 @sbuf_delete(%struct.sbuf* %305)
  ret void
}

declare dso_local %struct.sbuf* @sbuf_new_auto(...) #1

declare dso_local %struct.config_entry* @calloc(i32, i32) #1

declare dso_local %struct.TYPE_9__* @ucl_iterate_object(%struct.TYPE_9__*, i32**, i32) #1

declare dso_local i8* @ucl_object_key(%struct.TYPE_9__*) #1

declare dso_local i32 @sbuf_clear(%struct.sbuf*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sbuf_putc(%struct.sbuf*, i8 signext) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @sbuf_cpy(%struct.sbuf*, i8*) #1

declare dso_local i64 @ucl_object_toboolean(%struct.TYPE_9__*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @STAILQ_INIT(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @ucl_object_tostring(%struct.TYPE_9__*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i8*, %struct.config_value*, i32) #1

declare dso_local i32 @free(%struct.config_entry*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
