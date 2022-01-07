; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/usbhidaction/extr_usbhidaction.c_parse_conf.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/usbhidaction/extr_usbhidaction.c_parse_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32, i32, i32, i32, i32, i32, i8*, i8*, %struct.hid_item, %struct.command* }
%struct.hid_item = type { i32, i32, i32, i32, i32 }
%struct.hid_data = type { i32 }

@SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s %s %s %[^\0A]\00", align 1
@isdemon = common dso_local global i64 0, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"config file `%s', line %d, syntax error: %s\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"config file `%s', line %d,, syntax error: %s\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"config file `%s', line %d, bad value: %s (should be * or a number)\0A\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"config file `%s', line %d, bad value: %s (should be a number >= 0)\0A\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"kind=%d usage=%x\0A\00", align 1
@HIO_CONST = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"%s.%s:%s\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"usage %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c".%s:%s\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"ignore item '%s'\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"config file `%s', line %d, HID item not found: `%s'\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"PARSE:%d %s, %d, '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.command* @parse_conf(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.command*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.command*, align 8
  %23 = alloca %struct.command*, align 8
  %24 = alloca %struct.hid_data*, align 8
  %25 = alloca %struct.hid_item, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %34 = load i32, i32* @SIZE, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %13, align 8
  %37 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %14, align 8
  %38 = load i32, i32* @SIZE, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %15, align 8
  %41 = load i32, i32* @SIZE, align 4
  %42 = zext i32 %41 to i64
  %43 = alloca i8, i64 %42, align 16
  store i64 %42, i64* %16, align 8
  %44 = load i32, i32* @SIZE, align 4
  %45 = zext i32 %44 to i64
  %46 = alloca i8, i64 %45, align 16
  store i64 %45, i64* %17, align 8
  %47 = load i32, i32* @SIZE, align 4
  %48 = zext i32 %47 to i64
  %49 = alloca i8, i64 %48, align 16
  store i64 %48, i64* %18, align 8
  %50 = load i32, i32* @SIZE, align 4
  %51 = zext i32 %50 to i64
  %52 = alloca i8, i64 %51, align 16
  store i64 %51, i64* %19, align 8
  %53 = load i32, i32* @SIZE, align 4
  %54 = zext i32 %53 to i64
  %55 = alloca i8, i64 %54, align 16
  store i64 %54, i64* %20, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i32* @fopen(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %57, i32** %10, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %4
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %60, %4
  store %struct.command* null, %struct.command** %23, align 8
  store i32 1, i32* %12, align 4
  br label %64

64:                                               ; preds = %415, %63
  %65 = trunc i64 %35 to i32
  %66 = load i32*, i32** %10, align 8
  %67 = call i32* @fgets(i8* %37, i32 %65, i32* %66)
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %418

70:                                               ; preds = %64
  %71 = getelementptr inbounds i8, i8* %37, i64 0
  %72 = load i8, i8* %71, align 16
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 35
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds i8, i8* %37, i64 0
  %77 = load i8, i8* %76, align 16
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 10
  br i1 %79, label %80, label %81

80:                                               ; preds = %75, %70
  br label %415

81:                                               ; preds = %75
  %82 = call i8* @strchr(i8* %37, i8 signext 10)
  store i8* %82, i8** %11, align 8
  br label %83

83:                                               ; preds = %103, %81
  %84 = load i8*, i8** %11, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @peek(i32* %87)
  %89 = call i64 @isspace(i32 %88)
  %90 = icmp ne i64 %89, 0
  br label %91

91:                                               ; preds = %86, %83
  %92 = phi i1 [ false, %83 ], [ %90, %86 ]
  br i1 %92, label %93, label %105

93:                                               ; preds = %91
  %94 = load i8*, i8** %11, align 8
  %95 = call i32 @strlen(i8* %37)
  %96 = sext i32 %95 to i64
  %97 = sub i64 %35, %96
  %98 = trunc i64 %97 to i32
  %99 = load i32*, i32** %10, align 8
  %100 = call i32* @fgets(i8* %94, i32 %98, i32* %99)
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %105

103:                                              ; preds = %93
  %104 = call i8* @strchr(i8* %37, i8 signext 10)
  store i8* %104, i8** %11, align 8
  br label %83

105:                                              ; preds = %102, %91
  %106 = load i8*, i8** %11, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i8*, i8** %11, align 8
  store i8 0, i8* %109, align 1
  br label %110

110:                                              ; preds = %108, %105
  %111 = call i32 (i8*, i8*, ...) @sscanf(i8* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %40, i8* %43, i8* %46, i8* %49)
  %112 = icmp ne i32 %111, 4
  br i1 %112, label %113, label %128

113:                                              ; preds = %110
  %114 = load i64, i64* @isdemon, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load i32, i32* @LOG_WARNING, align 4
  %118 = load i8*, i8** %6, align 8
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @syslog(i32 %117, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %118, i32 %119, i8* %37)
  %121 = load %struct.command*, %struct.command** %23, align 8
  %122 = call i32 @freecommands(%struct.command* %121)
  store %struct.command* null, %struct.command** %5, align 8
  store i32 1, i32* %33, align 4
  br label %422

123:                                              ; preds = %113
  %124 = load i8*, i8** %6, align 8
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @errx(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %124, i32 %125, i8* %37)
  br label %127

127:                                              ; preds = %123
  br label %128

128:                                              ; preds = %127, %110
  %129 = call i8* @strchr(i8* %40, i8 signext 35)
  store i8* %129, i8** %21, align 8
  %130 = load i8*, i8** %21, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load i8*, i8** %21, align 8
  store i8 0, i8* %133, align 1
  %134 = load i8*, i8** %21, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  %136 = call i32 @atoi(i8* %135)
  store i32 %136, i32* %26, align 4
  br label %138

137:                                              ; preds = %128
  store i32 0, i32* %26, align 4
  br label %138

138:                                              ; preds = %137, %132
  %139 = call %struct.command* @malloc(i32 72)
  store %struct.command* %139, %struct.command** %22, align 8
  %140 = load %struct.command*, %struct.command** %22, align 8
  %141 = icmp eq %struct.command* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %138
  %145 = load %struct.command*, %struct.command** %23, align 8
  %146 = load %struct.command*, %struct.command** %22, align 8
  %147 = getelementptr inbounds %struct.command, %struct.command* %146, i32 0, i32 9
  store %struct.command* %145, %struct.command** %147, align 8
  %148 = load %struct.command*, %struct.command** %22, align 8
  store %struct.command* %148, %struct.command** %23, align 8
  %149 = load i32, i32* %12, align 4
  %150 = load %struct.command*, %struct.command** %22, align 8
  %151 = getelementptr inbounds %struct.command, %struct.command* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %144
  %155 = load %struct.command*, %struct.command** %22, align 8
  %156 = getelementptr inbounds %struct.command, %struct.command* %155, i32 0, i32 1
  store i32 1, i32* %156, align 4
  br label %180

157:                                              ; preds = %144
  %158 = load %struct.command*, %struct.command** %22, align 8
  %159 = getelementptr inbounds %struct.command, %struct.command* %158, i32 0, i32 1
  store i32 0, i32* %159, align 4
  %160 = load %struct.command*, %struct.command** %22, align 8
  %161 = getelementptr inbounds %struct.command, %struct.command* %160, i32 0, i32 2
  %162 = call i32 (i8*, i8*, ...) @sscanf(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32* %161)
  %163 = icmp ne i32 %162, 1
  br i1 %163, label %164, label %179

164:                                              ; preds = %157
  %165 = load i64, i64* @isdemon, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %164
  %168 = load i32, i32* @LOG_WARNING, align 4
  %169 = load i8*, i8** %6, align 8
  %170 = load i32, i32* %12, align 4
  %171 = call i32 @syslog(i32 %168, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i64 0, i64 0), i8* %169, i32 %170, i8* %43)
  %172 = load %struct.command*, %struct.command** %23, align 8
  %173 = call i32 @freecommands(%struct.command* %172)
  store %struct.command* null, %struct.command** %5, align 8
  store i32 1, i32* %33, align 4
  br label %422

174:                                              ; preds = %164
  %175 = load i8*, i8** %6, align 8
  %176 = load i32, i32* %12, align 4
  %177 = call i32 @errx(i32 1, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i64 0, i64 0), i8* %175, i32 %176, i8* %43)
  br label %178

178:                                              ; preds = %174
  br label %179

179:                                              ; preds = %178, %157
  br label %180

180:                                              ; preds = %179, %154
  %181 = load %struct.command*, %struct.command** %22, align 8
  %182 = getelementptr inbounds %struct.command, %struct.command* %181, i32 0, i32 3
  %183 = call i32 (i8*, i8*, ...) @sscanf(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32* %182)
  %184 = icmp ne i32 %183, 1
  br i1 %184, label %185, label %200

185:                                              ; preds = %180
  %186 = load i64, i64* @isdemon, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %185
  %189 = load i32, i32* @LOG_WARNING, align 4
  %190 = load i8*, i8** %6, align 8
  %191 = load i32, i32* %12, align 4
  %192 = call i32 @syslog(i32 %189, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0), i8* %190, i32 %191, i8* %46)
  %193 = load %struct.command*, %struct.command** %23, align 8
  %194 = call i32 @freecommands(%struct.command* %193)
  store %struct.command* null, %struct.command** %5, align 8
  store i32 1, i32* %33, align 4
  br label %422

195:                                              ; preds = %185
  %196 = load i8*, i8** %6, align 8
  %197 = load i32, i32* %12, align 4
  %198 = call i32 @errx(i32 1, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0), i8* %196, i32 %197, i8* %46)
  br label %199

199:                                              ; preds = %195
  br label %200

200:                                              ; preds = %199, %180
  %201 = getelementptr inbounds i8, i8* %55, i64 0
  store i8 0, i8* %201, align 16
  store i32 0, i32* %27, align 4
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* %8, align 4
  %204 = call %struct.hid_data* @hid_start_parse(i32 %202, i32 undef, i32 %203)
  store %struct.hid_data* %204, %struct.hid_data** %24, align 8
  br label %205

205:                                              ; preds = %341, %224, %200
  %206 = load %struct.hid_data*, %struct.hid_data** %24, align 8
  %207 = call i64 @hid_get_item(%struct.hid_data* %206, %struct.hid_item* %25)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %342

209:                                              ; preds = %205
  %210 = load i32, i32* @verbose, align 4
  %211 = icmp sgt i32 %210, 2
  br i1 %211, label %212, label %218

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %25, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %25, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %214, i32 %216)
  br label %218

218:                                              ; preds = %212, %209
  %219 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %25, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @HIO_CONST, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %218
  br label %205

225:                                              ; preds = %218
  %226 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %25, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  switch i32 %227, label %340 [
    i32 128, label %228
    i32 130, label %317
    i32 129, label %333
  ]

228:                                              ; preds = %225
  %229 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %25, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %236, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %25, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %232, %228
  %237 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %25, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  store i32 %238, i32* %29, align 4
  %239 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %25, i32 0, i32 4
  %240 = load i32, i32* %239, align 4
  store i32 %240, i32* %30, align 4
  store i32 1, i32* %31, align 4
  br label %246

241:                                              ; preds = %232
  %242 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %25, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  store i32 %243, i32* %29, align 4
  %244 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %25, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  store i32 %245, i32* %30, align 4
  store i32 0, i32* %31, align 4
  br label %246

246:                                              ; preds = %241, %236
  %247 = load i32, i32* %29, align 4
  store i32 %247, i32* %28, align 4
  br label %248

248:                                              ; preds = %313, %246
  %249 = load i32, i32* %28, align 4
  %250 = load i32, i32* %30, align 4
  %251 = icmp sle i32 %249, %250
  br i1 %251, label %252, label %316

252:                                              ; preds = %248
  %253 = getelementptr inbounds i8, i8* %55, i64 0
  %254 = load i8, i8* %253, align 16
  %255 = icmp ne i8 %254, 0
  br i1 %255, label %256, label %265

256:                                              ; preds = %252
  %257 = trunc i64 %51 to i32
  %258 = getelementptr inbounds i8, i8* %55, i64 1
  %259 = load i32, i32* %28, align 4
  %260 = call i32 @HID_PAGE(i32 %259)
  %261 = call i8* @hid_usage_page(i32 %260)
  %262 = load i32, i32* %28, align 4
  %263 = call i8* @hid_usage_in_page(i32 %262)
  %264 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %52, i32 %257, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %258, i8* %261, i8* %263)
  br label %273

265:                                              ; preds = %252
  %266 = trunc i64 %51 to i32
  %267 = load i32, i32* %28, align 4
  %268 = call i32 @HID_PAGE(i32 %267)
  %269 = call i8* @hid_usage_page(i32 %268)
  %270 = load i32, i32* %28, align 4
  %271 = call i8* @hid_usage_in_page(i32 %270)
  %272 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %52, i32 %266, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %269, i8* %271)
  br label %273

273:                                              ; preds = %265, %256
  %274 = load i32, i32* @verbose, align 4
  %275 = icmp sgt i32 %274, 2
  br i1 %275, label %276, label %278

276:                                              ; preds = %273
  %277 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* %52)
  br label %278

278:                                              ; preds = %276, %273
  %279 = call i32 @strlen(i8* %52)
  %280 = call i32 @strlen(i8* %40)
  %281 = sub nsw i32 %279, %280
  store i32 %281, i32* %32, align 4
  %282 = load i32, i32* %32, align 4
  %283 = icmp sgt i32 %282, 0
  br i1 %283, label %284, label %301

284:                                              ; preds = %278
  %285 = load i32, i32* %32, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8, i8* %52, i64 %286
  %288 = call i64 @strcmp(i8* %287, i8* %40)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %284
  br label %313

291:                                              ; preds = %284
  %292 = load i32, i32* %32, align 4
  %293 = sub nsw i32 %292, 1
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i8, i8* %52, i64 %294
  %296 = load i8, i8* %295, align 1
  %297 = sext i8 %296 to i32
  %298 = icmp ne i32 %297, 46
  br i1 %298, label %299, label %300

299:                                              ; preds = %291
  br label %313

300:                                              ; preds = %291
  br label %306

301:                                              ; preds = %278
  %302 = call i64 @strcmp(i8* %52, i8* %40)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %301
  br label %313

305:                                              ; preds = %301
  br label %306

306:                                              ; preds = %305, %300
  %307 = load i32, i32* %26, align 4
  %308 = load i32, i32* %27, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %27, align 4
  %310 = icmp eq i32 %307, %308
  br i1 %310, label %311, label %312

311:                                              ; preds = %306
  br label %366

312:                                              ; preds = %306
  br label %313

313:                                              ; preds = %312, %304, %299, %290
  %314 = load i32, i32* %28, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %28, align 4
  br label %248

316:                                              ; preds = %248
  br label %341

317:                                              ; preds = %225
  %318 = call i32 @strlen(i8* %55)
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8, i8* %55, i64 %319
  %321 = call i32 @strlen(i8* %55)
  %322 = sext i32 %321 to i64
  %323 = sub i64 %54, %322
  %324 = trunc i64 %323 to i32
  %325 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %25, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @HID_PAGE(i32 %326)
  %328 = call i8* @hid_usage_page(i32 %327)
  %329 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %25, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = call i8* @hid_usage_in_page(i32 %330)
  %332 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %320, i32 %324, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* %328, i8* %331)
  br label %341

333:                                              ; preds = %225
  %334 = getelementptr inbounds i8, i8* %55, i64 0
  %335 = load i8, i8* %334, align 16
  %336 = icmp ne i8 %335, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %333
  %338 = call i32* @strrchr(i8* %55, i8 signext 46)
  store i32 0, i32* %338, align 4
  br label %339

339:                                              ; preds = %337, %333
  br label %341

340:                                              ; preds = %225
  br label %341

341:                                              ; preds = %340, %339, %317, %316
  br label %205

342:                                              ; preds = %205
  %343 = load i32, i32* %9, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %351

345:                                              ; preds = %342
  %346 = load i32, i32* @verbose, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %345
  %349 = call i32 @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8* %40)
  br label %350

350:                                              ; preds = %348, %345
  br label %415

351:                                              ; preds = %342
  %352 = load i64, i64* @isdemon, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %361

354:                                              ; preds = %351
  %355 = load i32, i32* @LOG_WARNING, align 4
  %356 = load i8*, i8** %6, align 8
  %357 = load i32, i32* %12, align 4
  %358 = call i32 @syslog(i32 %355, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i64 0, i64 0), i8* %356, i32 %357, i8* %40)
  %359 = load %struct.command*, %struct.command** %23, align 8
  %360 = call i32 @freecommands(%struct.command* %359)
  store %struct.command* null, %struct.command** %5, align 8
  store i32 1, i32* %33, align 4
  br label %422

361:                                              ; preds = %351
  %362 = load i8*, i8** %6, align 8
  %363 = load i32, i32* %12, align 4
  %364 = call i32 @errx(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i64 0, i64 0), i8* %362, i32 %363, i8* %40)
  br label %365

365:                                              ; preds = %361
  br label %366

366:                                              ; preds = %365, %311
  %367 = load %struct.hid_data*, %struct.hid_data** %24, align 8
  %368 = call i32 @hid_end_parse(%struct.hid_data* %367)
  %369 = load %struct.command*, %struct.command** %22, align 8
  %370 = getelementptr inbounds %struct.command, %struct.command* %369, i32 0, i32 4
  store i32 -1, i32* %370, align 8
  %371 = load %struct.command*, %struct.command** %22, align 8
  %372 = getelementptr inbounds %struct.command, %struct.command* %371, i32 0, i32 5
  store i32 -1, i32* %372, align 4
  %373 = load %struct.command*, %struct.command** %22, align 8
  %374 = getelementptr inbounds %struct.command, %struct.command* %373, i32 0, i32 8
  %375 = bitcast %struct.hid_item* %374 to i8*
  %376 = bitcast %struct.hid_item* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %375, i8* align 4 %376, i64 20, i1 false)
  %377 = call i8* @strdup(i8* %40)
  %378 = load %struct.command*, %struct.command** %22, align 8
  %379 = getelementptr inbounds %struct.command, %struct.command* %378, i32 0, i32 7
  store i8* %377, i8** %379, align 8
  %380 = call i8* @strdup(i8* %49)
  %381 = load %struct.command*, %struct.command** %22, align 8
  %382 = getelementptr inbounds %struct.command, %struct.command* %381, i32 0, i32 6
  store i8* %380, i8** %382, align 8
  %383 = load i32, i32* %31, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %400

385:                                              ; preds = %366
  %386 = load %struct.command*, %struct.command** %22, align 8
  %387 = getelementptr inbounds %struct.command, %struct.command* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 8
  %389 = icmp eq i32 %388, 1
  br i1 %389, label %390, label %396

390:                                              ; preds = %385
  %391 = load i32, i32* %28, align 4
  %392 = load i32, i32* %29, align 4
  %393 = sub nsw i32 %391, %392
  %394 = load %struct.command*, %struct.command** %22, align 8
  %395 = getelementptr inbounds %struct.command, %struct.command* %394, i32 0, i32 2
  store i32 %393, i32* %395, align 8
  br label %399

396:                                              ; preds = %385
  %397 = load %struct.command*, %struct.command** %22, align 8
  %398 = getelementptr inbounds %struct.command, %struct.command* %397, i32 0, i32 2
  store i32 -1, i32* %398, align 8
  br label %399

399:                                              ; preds = %396, %390
  br label %400

400:                                              ; preds = %399, %366
  %401 = load i32, i32* @verbose, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %414

403:                                              ; preds = %400
  %404 = load %struct.command*, %struct.command** %22, align 8
  %405 = getelementptr inbounds %struct.command, %struct.command* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = load %struct.command*, %struct.command** %22, align 8
  %408 = getelementptr inbounds %struct.command, %struct.command* %407, i32 0, i32 2
  %409 = load i32, i32* %408, align 8
  %410 = load %struct.command*, %struct.command** %22, align 8
  %411 = getelementptr inbounds %struct.command, %struct.command* %410, i32 0, i32 6
  %412 = load i8*, i8** %411, align 8
  %413 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i32 %406, i8* %40, i32 %409, i8* %412)
  br label %414

414:                                              ; preds = %403, %400
  br label %415

415:                                              ; preds = %414, %350, %80
  %416 = load i32, i32* %12, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %12, align 4
  br label %64

418:                                              ; preds = %69
  %419 = load i32*, i32** %10, align 8
  %420 = call i32 @fclose(i32* %419)
  %421 = load %struct.command*, %struct.command** %23, align 8
  store %struct.command* %421, %struct.command** %5, align 8
  store i32 1, i32* %33, align 4
  br label %422

422:                                              ; preds = %418, %354, %188, %167, %116
  %423 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %423)
  %424 = load %struct.command*, %struct.command** %5, align 8
  ret %struct.command* %424
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @isspace(i32) #2

declare dso_local i32 @peek(i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, ...) #2

declare dso_local i32 @syslog(i32, i8*, i8*, i32, i8*) #2

declare dso_local i32 @freecommands(%struct.command*) #2

declare dso_local i32 @errx(i32, i8*, i8*, i32, i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local %struct.command* @malloc(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local %struct.hid_data* @hid_start_parse(i32, i32, i32) #2

declare dso_local i64 @hid_get_item(%struct.hid_data*, %struct.hid_item*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, ...) #2

declare dso_local i8* @hid_usage_page(i32) #2

declare dso_local i32 @HID_PAGE(i32) #2

declare dso_local i8* @hid_usage_in_page(i32) #2

declare dso_local i32* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local i32 @hid_end_parse(%struct.hid_data*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
