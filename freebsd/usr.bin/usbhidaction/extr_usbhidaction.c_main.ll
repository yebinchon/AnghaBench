; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/usbhidaction/extr_usbhidaction.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/usbhidaction/extr_usbhidaction.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32, i64, i32, i32, i32, %struct.TYPE_2__, %struct.command* }
%struct.TYPE_2__ = type { i8, i32, i32, i32, i64 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"c:def:ip:r:t:v\00", align 1
@optarg = common dso_local global i8* null, align 8
@pidfile = common dso_local global i8* null, align 8
@verbose = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"/dev/%s%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"uhid\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"hid_get_report_desc() failed\00", align 1
@commands = common dso_local global %struct.command* null, align 8
@hid_input = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"report size %zu\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"report too large\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@sighup = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"daemon()\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@isdemon = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"read %d bytes:\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@HIO_VARIABLE = common dso_local global i32 0, align 4
@reparse = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca [100 x i8], align 16
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.command*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.command*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %28 = load i32, i32* @PATH_MAX, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %22, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %23, align 8
  store i32 -1, i32* %25, align 4
  store i32 1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %32

32:                                               ; preds = %63, %2
  %33 = load i32, i32* %4, align 4
  %34 = load i8**, i8*** %5, align 8
  %35 = call i32 @getopt(i32 %33, i8** %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %35, i32* %11, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %64

37:                                               ; preds = %32
  %38 = load i32, i32* %11, align 4
  switch i32 %38, label %61 [
    i32 99, label %39
    i32 100, label %41
    i32 101, label %44
    i32 105, label %45
    i32 102, label %48
    i32 112, label %50
    i32 114, label %52
    i32 116, label %55
    i32 118, label %57
    i32 63, label %60
  ]

39:                                               ; preds = %37
  %40 = load i8*, i8** @optarg, align 8
  store i8* %40, i8** %6, align 8
  br label %63

41:                                               ; preds = %37
  %42 = load i32, i32* %17, align 4
  %43 = xor i32 %42, 1
  store i32 %43, i32* %17, align 4
  br label %63

44:                                               ; preds = %37
  store i32 1, i32* %19, align 4
  br label %63

45:                                               ; preds = %37
  %46 = load i32, i32* %18, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %18, align 4
  br label %63

48:                                               ; preds = %37
  %49 = load i8*, i8** @optarg, align 8
  store i8* %49, i8** %7, align 8
  br label %63

50:                                               ; preds = %37
  %51 = load i8*, i8** @optarg, align 8
  store i8* %51, i8** @pidfile, align 8
  br label %63

52:                                               ; preds = %37
  %53 = load i8*, i8** @optarg, align 8
  %54 = call i32 @atoi(i8* %53)
  store i32 %54, i32* %25, align 4
  br label %63

55:                                               ; preds = %37
  %56 = load i8*, i8** @optarg, align 8
  store i8* %56, i8** %8, align 8
  br label %63

57:                                               ; preds = %37
  store i32 0, i32* %17, align 4
  %58 = load i32, i32* @verbose, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @verbose, align 4
  br label %63

60:                                               ; preds = %37
  br label %61

61:                                               ; preds = %37, %60
  %62 = call i32 (...) @usage()
  br label %63

63:                                               ; preds = %61, %57, %55, %52, %50, %48, %45, %44, %41, %39
  br label %32

64:                                               ; preds = %32
  %65 = load i64, i64* @optind, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = sub nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %4, align 4
  %70 = load i64, i64* @optind, align 8
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 %70
  store i8** %72, i8*** %5, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %64
  %76 = load i8*, i8** %7, align 8
  %77 = icmp eq i8* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %75, %64
  %79 = call i32 (...) @usage()
  br label %80

80:                                               ; preds = %78, %75
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @hid_init(i8* %81)
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 47
  br i1 %87, label %88, label %99

88:                                               ; preds = %80
  %89 = trunc i64 %29 to i32
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = call i64 @isdigit(i8 signext %92)
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %96, i8* %97)
  store i8* %31, i8** %7, align 8
  br label %99

99:                                               ; preds = %88, %80
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* @O_RDWR, align 4
  %102 = call i32 (i8*, i32, ...) @open(i8* %100, i32 %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i8*, i8** %7, align 8
  %107 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %106)
  br label %108

108:                                              ; preds = %105, %99
  %109 = load i32, i32* %9, align 4
  %110 = call i32* @hid_get_report_desc(i32 %109)
  store i32* %110, i32** %20, align 8
  %111 = load i32*, i32** %20, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %108
  %116 = load i8*, i8** %6, align 8
  %117 = load i32*, i32** %20, align 8
  %118 = load i32, i32* %25, align 4
  %119 = load i32, i32* %18, align 4
  %120 = call i8* @parse_conf(i8* %116, i32* %117, i32 %118, i32 %119)
  %121 = bitcast i8* %120 to %struct.command*
  store %struct.command* %121, %struct.command** @commands, align 8
  %122 = load i32*, i32** %20, align 8
  %123 = load i32, i32* @hid_input, align 4
  %124 = call i64 @hid_report_size(i32* %122, i32 %123, i32 -1)
  store i64 %124, i64* %15, align 8
  %125 = load i32, i32* @verbose, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %115
  %128 = load i64, i64* %15, align 8
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i64 %128)
  br label %130

130:                                              ; preds = %127, %115
  %131 = load i64, i64* %15, align 8
  %132 = icmp ugt i64 %131, 100
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = call i32 @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %130
  %136 = load i32, i32* @SIGHUP, align 4
  %137 = load i32, i32* @sighup, align 4
  %138 = call i32 @signal(i32 %136, i32 %137)
  %139 = load i32, i32* %17, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %179

141:                                              ; preds = %135
  %142 = load i8*, i8** @pidfile, align 8
  %143 = load i32, i32* @O_WRONLY, align 4
  %144 = load i32, i32* @O_CREAT, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @S_IRUSR, align 4
  %147 = load i32, i32* @S_IRGRP, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @S_IROTH, align 4
  %150 = or i32 %148, %149
  %151 = call i32 (i8*, i32, ...) @open(i8* %142, i32 %145, i32 %150)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %141
  %155 = load i8*, i8** @pidfile, align 8
  %156 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %155)
  br label %157

157:                                              ; preds = %154, %141
  %158 = call i64 @daemon(i32 0, i32 0)
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160, %157
  %163 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %164 = call i64 (...) @getpid()
  %165 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %163, i32 100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 %164)
  %166 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %167 = call i64 @strlen(i8* %166)
  store i64 %167, i64* %16, align 8
  %168 = load i32, i32* %10, align 4
  %169 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %170 = load i64, i64* %16, align 8
  %171 = call i64 @write(i32 %168, i8* %169, i64 %170)
  %172 = icmp slt i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %162
  %174 = load i8*, i8** @pidfile, align 8
  %175 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %174)
  br label %176

176:                                              ; preds = %173, %162
  %177 = load i32, i32* %10, align 4
  %178 = call i32 @close(i32 %177)
  store i32 1, i32* @isdemon, align 4
  br label %179

179:                                              ; preds = %176, %135
  br label %180

180:                                              ; preds = %411, %179
  %181 = load i32, i32* %9, align 4
  %182 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %183 = load i64, i64* %15, align 8
  %184 = call i32 @read(i32 %181, i8* %182, i64 %183)
  store i32 %184, i32* %12, align 4
  %185 = load i32, i32* @verbose, align 4
  %186 = icmp sgt i32 %185, 2
  br i1 %186, label %187, label %206

187:                                              ; preds = %180
  %188 = load i32, i32* %12, align 4
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %188)
  store i32 0, i32* %14, align 4
  br label %190

190:                                              ; preds = %201, %187
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* %12, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %204

194:                                              ; preds = %190
  %195 = load i32, i32* %14, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %199)
  br label %201

201:                                              ; preds = %194
  %202 = load i32, i32* %14, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %14, align 4
  br label %190

204:                                              ; preds = %190
  %205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %206

206:                                              ; preds = %204, %180
  %207 = load i32, i32* %12, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %206
  %210 = load i32, i32* @verbose, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %209
  %213 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %216

214:                                              ; preds = %209
  %215 = call i32 @exit(i32 1) #5
  unreachable

216:                                              ; preds = %212
  br label %217

217:                                              ; preds = %216, %206
  %218 = load %struct.command*, %struct.command** @commands, align 8
  store %struct.command* %218, %struct.command** %24, align 8
  br label %219

219:                                              ; preds = %385, %217
  %220 = load %struct.command*, %struct.command** %24, align 8
  %221 = icmp ne %struct.command* %220, null
  br i1 %221, label %222, label %389

222:                                              ; preds = %219
  %223 = load %struct.command*, %struct.command** %24, align 8
  %224 = getelementptr inbounds %struct.command, %struct.command* %223, i32 0, i32 5
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 0
  %226 = load i8, i8* %225, align 8
  %227 = sext i8 %226 to i32
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %240

229:                                              ; preds = %222
  %230 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %231 = load i8, i8* %230, align 16
  %232 = sext i8 %231 to i32
  %233 = load %struct.command*, %struct.command** %24, align 8
  %234 = getelementptr inbounds %struct.command, %struct.command* %233, i32 0, i32 5
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 0
  %236 = load i8, i8* %235, align 8
  %237 = sext i8 %236 to i32
  %238 = icmp ne i32 %232, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %229
  br label %385

240:                                              ; preds = %229, %222
  %241 = load %struct.command*, %struct.command** %24, align 8
  %242 = getelementptr inbounds %struct.command, %struct.command* %241, i32 0, i32 5
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @HIO_VARIABLE, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %240
  %249 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %250 = load %struct.command*, %struct.command** %24, align 8
  %251 = getelementptr inbounds %struct.command, %struct.command* %250, i32 0, i32 5
  %252 = call i32 @hid_get_data(i8* %249, %struct.TYPE_2__* %251)
  store i32 %252, i32* %13, align 4
  br label %309

253:                                              ; preds = %240
  %254 = load %struct.command*, %struct.command** %24, align 8
  %255 = getelementptr inbounds %struct.command, %struct.command* %254, i32 0, i32 5
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  store i32 %257, i32* %26, align 4
  store i32 0, i32* %14, align 4
  br label %258

258:                                              ; preds = %288, %253
  %259 = load i32, i32* %14, align 4
  %260 = load %struct.command*, %struct.command** %24, align 8
  %261 = getelementptr inbounds %struct.command, %struct.command* %260, i32 0, i32 5
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = icmp slt i32 %259, %263
  br i1 %264, label %265, label %291

265:                                              ; preds = %258
  %266 = getelementptr inbounds [100 x i8], [100 x i8]* %21, i64 0, i64 0
  %267 = load %struct.command*, %struct.command** %24, align 8
  %268 = getelementptr inbounds %struct.command, %struct.command* %267, i32 0, i32 5
  %269 = call i32 @hid_get_data(i8* %266, %struct.TYPE_2__* %268)
  store i32 %269, i32* %13, align 4
  %270 = load i32, i32* %13, align 4
  %271 = load %struct.command*, %struct.command** %24, align 8
  %272 = getelementptr inbounds %struct.command, %struct.command* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = icmp eq i32 %270, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %265
  br label %291

276:                                              ; preds = %265
  %277 = load %struct.command*, %struct.command** %24, align 8
  %278 = getelementptr inbounds %struct.command, %struct.command* %277, i32 0, i32 5
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 4
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.command*, %struct.command** %24, align 8
  %282 = getelementptr inbounds %struct.command, %struct.command* %281, i32 0, i32 5
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = sext i32 %284 to i64
  %286 = add nsw i64 %285, %280
  %287 = trunc i64 %286 to i32
  store i32 %287, i32* %283, align 4
  br label %288

288:                                              ; preds = %276
  %289 = load i32, i32* %14, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %14, align 4
  br label %258

291:                                              ; preds = %275, %258
  %292 = load i32, i32* %26, align 4
  %293 = load %struct.command*, %struct.command** %24, align 8
  %294 = getelementptr inbounds %struct.command, %struct.command* %293, i32 0, i32 5
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i32 0, i32 3
  store i32 %292, i32* %295, align 4
  %296 = load i32, i32* %14, align 4
  %297 = load %struct.command*, %struct.command** %24, align 8
  %298 = getelementptr inbounds %struct.command, %struct.command* %297, i32 0, i32 5
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = icmp slt i32 %296, %300
  br i1 %301, label %302, label %306

302:                                              ; preds = %291
  %303 = load %struct.command*, %struct.command** %24, align 8
  %304 = getelementptr inbounds %struct.command, %struct.command* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  br label %307

306:                                              ; preds = %291
  br label %307

307:                                              ; preds = %306, %302
  %308 = phi i32 [ %305, %302 ], [ -1, %306 ]
  store i32 %308, i32* %13, align 4
  br label %309

309:                                              ; preds = %307, %248
  %310 = load %struct.command*, %struct.command** %24, align 8
  %311 = getelementptr inbounds %struct.command, %struct.command* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* %13, align 4
  %314 = icmp ne i32 %312, %313
  br i1 %314, label %315, label %321

315:                                              ; preds = %309
  %316 = load %struct.command*, %struct.command** %24, align 8
  %317 = getelementptr inbounds %struct.command, %struct.command* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %315
  br label %381

321:                                              ; preds = %315, %309
  %322 = load %struct.command*, %struct.command** %24, align 8
  %323 = getelementptr inbounds %struct.command, %struct.command* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %342, label %326

326:                                              ; preds = %321
  %327 = load %struct.command*, %struct.command** %24, align 8
  %328 = getelementptr inbounds %struct.command, %struct.command* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 8
  %330 = icmp eq i32 %329, 1
  br i1 %330, label %331, label %349

331:                                              ; preds = %326
  %332 = load %struct.command*, %struct.command** %24, align 8
  %333 = getelementptr inbounds %struct.command, %struct.command* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 4
  %335 = icmp eq i32 %334, -1
  br i1 %335, label %342, label %336

336:                                              ; preds = %331
  %337 = load %struct.command*, %struct.command** %24, align 8
  %338 = getelementptr inbounds %struct.command, %struct.command* %337, i32 0, i32 3
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* %13, align 4
  %341 = icmp ne i32 %339, %340
  br i1 %341, label %342, label %349

342:                                              ; preds = %336, %331, %321
  %343 = load %struct.command*, %struct.command** %24, align 8
  %344 = load i32, i32* %13, align 4
  %345 = load i8*, i8** %7, align 8
  %346 = load i32, i32* %4, align 4
  %347 = load i8**, i8*** %5, align 8
  %348 = call i32 @docmd(%struct.command* %343, i32 %344, i8* %345, i32 %346, i8** %347)
  br label %381

349:                                              ; preds = %336, %326
  %350 = load %struct.command*, %struct.command** %24, align 8
  %351 = getelementptr inbounds %struct.command, %struct.command* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 8
  %353 = icmp sgt i32 %352, 1
  br i1 %353, label %354, label %380

354:                                              ; preds = %349
  %355 = load %struct.command*, %struct.command** %24, align 8
  %356 = getelementptr inbounds %struct.command, %struct.command* %355, i32 0, i32 4
  %357 = load i32, i32* %356, align 8
  %358 = icmp eq i32 %357, -1
  br i1 %358, label %370, label %359

359:                                              ; preds = %354
  %360 = load %struct.command*, %struct.command** %24, align 8
  %361 = getelementptr inbounds %struct.command, %struct.command* %360, i32 0, i32 4
  %362 = load i32, i32* %361, align 8
  %363 = load i32, i32* %13, align 4
  %364 = sub nsw i32 %362, %363
  %365 = call i32 @abs(i32 %364) #6
  %366 = load %struct.command*, %struct.command** %24, align 8
  %367 = getelementptr inbounds %struct.command, %struct.command* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 8
  %369 = icmp sge i32 %365, %368
  br i1 %369, label %370, label %380

370:                                              ; preds = %359, %354
  %371 = load %struct.command*, %struct.command** %24, align 8
  %372 = load i32, i32* %13, align 4
  %373 = load i8*, i8** %7, align 8
  %374 = load i32, i32* %4, align 4
  %375 = load i8**, i8*** %5, align 8
  %376 = call i32 @docmd(%struct.command* %371, i32 %372, i8* %373, i32 %374, i8** %375)
  %377 = load i32, i32* %13, align 4
  %378 = load %struct.command*, %struct.command** %24, align 8
  %379 = getelementptr inbounds %struct.command, %struct.command* %378, i32 0, i32 4
  store i32 %377, i32* %379, align 8
  br label %381

380:                                              ; preds = %359, %349
  br label %381

381:                                              ; preds = %380, %370, %342, %320
  %382 = load i32, i32* %13, align 4
  %383 = load %struct.command*, %struct.command** %24, align 8
  %384 = getelementptr inbounds %struct.command, %struct.command* %383, i32 0, i32 3
  store i32 %382, i32* %384, align 4
  br label %385

385:                                              ; preds = %381, %239
  %386 = load %struct.command*, %struct.command** %24, align 8
  %387 = getelementptr inbounds %struct.command, %struct.command* %386, i32 0, i32 6
  %388 = load %struct.command*, %struct.command** %387, align 8
  store %struct.command* %388, %struct.command** %24, align 8
  br label %219

389:                                              ; preds = %219
  %390 = load i32, i32* %19, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %394

392:                                              ; preds = %389
  %393 = call i32 @exit(i32 0) #5
  unreachable

394:                                              ; preds = %389
  %395 = load i64, i64* @reparse, align 8
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %411

397:                                              ; preds = %394
  %398 = load i8*, i8** %6, align 8
  %399 = load i32*, i32** %20, align 8
  %400 = load i32, i32* %25, align 4
  %401 = load i32, i32* %18, align 4
  %402 = call i8* @parse_conf(i8* %398, i32* %399, i32 %400, i32 %401)
  %403 = bitcast i8* %402 to %struct.command*
  store %struct.command* %403, %struct.command** %27, align 8
  %404 = load %struct.command*, %struct.command** %27, align 8
  %405 = icmp ne %struct.command* %404, null
  br i1 %405, label %406, label %410

406:                                              ; preds = %397
  %407 = load %struct.command*, %struct.command** @commands, align 8
  %408 = call i32 @freecommands(%struct.command* %407)
  %409 = load %struct.command*, %struct.command** %27, align 8
  store %struct.command* %409, %struct.command** @commands, align 8
  br label %410

410:                                              ; preds = %406, %397
  store i64 0, i64* @reparse, align 8
  br label %411

411:                                              ; preds = %410, %394
  br label %180
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32 @hid_init(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i64 @isdigit(i8 signext) #2

declare dso_local i32 @open(i8*, i32, ...) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i32* @hid_get_report_desc(i32) #2

declare dso_local i8* @parse_conf(i8*, i32*, i32, i32) #2

declare dso_local i64 @hid_report_size(i32*, i32, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @signal(i32, i32) #2

declare dso_local i64 @daemon(i32, i32) #2

declare dso_local i64 @getpid(...) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @write(i32, i8*, i64) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @read(i32, i8*, i64) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @hid_get_data(i8*, %struct.TYPE_2__*) #2

declare dso_local i32 @docmd(%struct.command*, i32, i8*, i32, i8**) #2

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #4

declare dso_local i32 @freecommands(%struct.command*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
