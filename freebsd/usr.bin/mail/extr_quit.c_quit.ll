; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_quit.c_quit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_quit.c_quit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32 }
%struct.stat = type { i64 }

@PATHSIZE = common dso_local global i32 0, align 4
@readonly = common dso_local global i64 0, align 8
@edit = common dso_local global i64 0, align 8
@mailname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@LOCK_EX = common dso_local global i32 0, align 4
@mailsize = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"New mail has arrived.\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%s/mail.RqXXXXXXXXXX\00", align 1
@tmpdir = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"hold\00", align 1
@MPRESERVE = common dso_local global i32 0, align 4
@MBOX = common dso_local global i32 0, align 4
@MSAVED = common dso_local global i32 0, align 4
@MDELETED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"keepsave\00", align 1
@message = common dso_local global %struct.message* null, align 8
@msgCount = common dso_local global i64 0, align 8
@MNEW = common dso_local global i32 0, align 4
@MSTATUS = common dso_local global i32 0, align 4
@MTOUCH = common dso_local global i32 0, align 4
@Tflag = common dso_local global i8* null, align 8
@MODIFY = common dso_local global i32 0, align 4
@MREAD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"article-id\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Held %d message%s in %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"%s/mail.RmXXXXXXXXXX\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@saveignore = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [25 x i8] c"Saved 1 message in mbox\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"Saved %d messages in mbox\0A\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"Thou hast new mail.\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.message*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.stat, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = load i32, i32* @PATHSIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %19, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %20, align 8
  %27 = load i64, i64* @readonly, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %0
  store i32 1, i32* %21, align 4
  br label %541

30:                                               ; preds = %0
  %31 = load i64, i64* @edit, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 (...) @edstop()
  store i32 1, i32* %21, align 4
  br label %541

35:                                               ; preds = %30
  %36 = load i8*, i8** @mailname, align 8
  %37 = call i32* @Fopen(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %533

41:                                               ; preds = %35
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @fileno(i32* %42)
  %44 = load i32, i32* @LOCK_EX, align 4
  %45 = call i32 @flock(i32 %43, i32 %44)
  store i32* null, i32** %11, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @fileno(i32* %46)
  %48 = call i64 @fstat(i32 %47, %struct.stat* %17)
  %49 = icmp sge i64 %48, 0
  br i1 %49, label %50, label %96

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @mailsize, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %96

55:                                               ; preds = %50
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %57 = trunc i64 %24 to i32
  %58 = load i8*, i8** @tmpdir, align 8
  %59 = call i32 @snprintf(i8* %26, i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  %60 = call i32 @mkstemp(i8* %26)
  store i32 %60, i32* %16, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %66, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %16, align 4
  %64 = call i32* @Fdopen(i32 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %64, i32** %11, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %62, %55
  br label %533

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @mailsize, align 8
  %71 = sub nsw i64 %69, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %84, %67
  %74 = load i32, i32* %2, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %2, align 4
  %76 = icmp sgt i32 %74, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %73
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @getc(i32* %78)
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @EOF, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %533

84:                                               ; preds = %77
  %85 = load i32, i32* %15, align 4
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 @putc(i32 %85, i32* %86)
  br label %73

88:                                               ; preds = %73
  %89 = load i32*, i32** %11, align 8
  %90 = call i32 @Fclose(i32* %89)
  %91 = call i32* @Fopen(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %91, i32** %11, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %533

94:                                               ; preds = %88
  %95 = call i32 @rm(i8* %26)
  br label %96

96:                                               ; preds = %94, %50, %41
  store i32 0, i32* %5, align 4
  %97 = call i32* @value(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %98 = icmp ne i32* %97, null
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* @MPRESERVE, align 4
  br label %106

104:                                              ; preds = %96
  %105 = load i32, i32* @MBOX, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* @MBOX, align 4
  %109 = load i32, i32* @MSAVED, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @MDELETED, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @MPRESERVE, align 4
  %114 = or i32 %112, %113
  store i32 %114, i32* %7, align 4
  %115 = call i32* @value(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %106
  %118 = load i32, i32* @MSAVED, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %7, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %117, %106
  %123 = load %struct.message*, %struct.message** @message, align 8
  %124 = getelementptr inbounds %struct.message, %struct.message* %123, i64 0
  store %struct.message* %124, %struct.message** %14, align 8
  br label %125

125:                                              ; preds = %187, %122
  %126 = load %struct.message*, %struct.message** %14, align 8
  %127 = load %struct.message*, %struct.message** @message, align 8
  %128 = load i64, i64* @msgCount, align 8
  %129 = getelementptr inbounds %struct.message, %struct.message* %127, i64 %128
  %130 = icmp ult %struct.message* %126, %129
  br i1 %130, label %131, label %190

131:                                              ; preds = %125
  %132 = load %struct.message*, %struct.message** %14, align 8
  %133 = getelementptr inbounds %struct.message, %struct.message* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @MNEW, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %131
  %139 = load i32, i32* @MNEW, align 4
  %140 = xor i32 %139, -1
  %141 = load %struct.message*, %struct.message** %14, align 8
  %142 = getelementptr inbounds %struct.message, %struct.message* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, %140
  store i32 %144, i32* %142, align 4
  %145 = load i32, i32* @MSTATUS, align 4
  %146 = load %struct.message*, %struct.message** %14, align 8
  %147 = getelementptr inbounds %struct.message, %struct.message* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %138, %131
  %151 = load %struct.message*, %struct.message** %14, align 8
  %152 = getelementptr inbounds %struct.message, %struct.message* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @MSTATUS, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %150
  %158 = load i32, i32* %5, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %5, align 4
  br label %160

160:                                              ; preds = %157, %150
  %161 = load %struct.message*, %struct.message** %14, align 8
  %162 = getelementptr inbounds %struct.message, %struct.message* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @MTOUCH, align 4
  %165 = and i32 %163, %164
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %160
  %168 = load i32, i32* @MPRESERVE, align 4
  %169 = load %struct.message*, %struct.message** %14, align 8
  %170 = getelementptr inbounds %struct.message, %struct.message* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %167, %160
  %174 = load %struct.message*, %struct.message** %14, align 8
  %175 = getelementptr inbounds %struct.message, %struct.message* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %7, align 4
  %178 = and i32 %176, %177
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %173
  %181 = load i32, i32* %6, align 4
  %182 = load %struct.message*, %struct.message** %14, align 8
  %183 = getelementptr inbounds %struct.message, %struct.message* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %180, %173
  br label %187

187:                                              ; preds = %186
  %188 = load %struct.message*, %struct.message** %14, align 8
  %189 = getelementptr inbounds %struct.message, %struct.message* %188, i32 1
  store %struct.message* %189, %struct.message** %14, align 8
  br label %125

190:                                              ; preds = %125
  store i32 0, i32* %3, align 4
  %191 = load i8*, i8** @Tflag, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %199

193:                                              ; preds = %190
  %194 = load i8*, i8** @Tflag, align 8
  %195 = call i32* @Fopen(i8* %194, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %195, i32** %12, align 8
  %196 = icmp eq i32* %195, null
  br i1 %196, label %197, label %198

197:                                              ; preds = %193
  store i8* null, i8** @Tflag, align 8
  br label %198

198:                                              ; preds = %197, %193
  br label %199

199:                                              ; preds = %198, %190
  store i32 0, i32* %15, align 4
  store i32 0, i32* %2, align 4
  %200 = load %struct.message*, %struct.message** @message, align 8
  %201 = getelementptr inbounds %struct.message, %struct.message* %200, i64 0
  store %struct.message* %201, %struct.message** %14, align 8
  br label %202

202:                                              ; preds = %260, %199
  %203 = load %struct.message*, %struct.message** %14, align 8
  %204 = load %struct.message*, %struct.message** @message, align 8
  %205 = load i64, i64* @msgCount, align 8
  %206 = getelementptr inbounds %struct.message, %struct.message* %204, i64 %205
  %207 = icmp ult %struct.message* %203, %206
  br i1 %207, label %208, label %263

208:                                              ; preds = %202
  %209 = load %struct.message*, %struct.message** %14, align 8
  %210 = getelementptr inbounds %struct.message, %struct.message* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @MBOX, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %208
  %216 = load i32, i32* %15, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %15, align 4
  br label %218

218:                                              ; preds = %215, %208
  %219 = load %struct.message*, %struct.message** %14, align 8
  %220 = getelementptr inbounds %struct.message, %struct.message* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @MPRESERVE, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %218
  %226 = load i32, i32* %2, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %2, align 4
  br label %228

228:                                              ; preds = %225, %218
  %229 = load %struct.message*, %struct.message** %14, align 8
  %230 = getelementptr inbounds %struct.message, %struct.message* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @MODIFY, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %228
  %236 = load i32, i32* %3, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %3, align 4
  br label %238

238:                                              ; preds = %235, %228
  %239 = load i8*, i8** @Tflag, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %241, label %259

241:                                              ; preds = %238
  %242 = load %struct.message*, %struct.message** %14, align 8
  %243 = getelementptr inbounds %struct.message, %struct.message* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @MREAD, align 4
  %246 = load i32, i32* @MDELETED, align 4
  %247 = or i32 %245, %246
  %248 = and i32 %244, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %259

250:                                              ; preds = %241
  %251 = load %struct.message*, %struct.message** %14, align 8
  %252 = call i8* @hfield(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), %struct.message* %251)
  store i8* %252, i8** %22, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %254, label %258

254:                                              ; preds = %250
  %255 = load i32*, i32** %12, align 8
  %256 = load i8*, i8** %22, align 8
  %257 = call i32 @fprintf(i32* %255, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %256)
  br label %258

258:                                              ; preds = %254, %250
  br label %259

259:                                              ; preds = %258, %241, %238
  br label %260

260:                                              ; preds = %259
  %261 = load %struct.message*, %struct.message** %14, align 8
  %262 = getelementptr inbounds %struct.message, %struct.message* %261, i32 1
  store %struct.message* %262, %struct.message** %14, align 8
  br label %202

263:                                              ; preds = %202
  %264 = load i8*, i8** @Tflag, align 8
  %265 = icmp ne i8* %264, null
  br i1 %265, label %266, label %269

266:                                              ; preds = %263
  %267 = load i32*, i32** %12, align 8
  %268 = call i32 @Fclose(i32* %267)
  br label %269

269:                                              ; preds = %266, %263
  %270 = load i32, i32* %2, align 4
  %271 = sext i32 %270 to i64
  %272 = load i64, i64* @msgCount, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %290

274:                                              ; preds = %269
  %275 = load i32, i32* %3, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %290, label %277

277:                                              ; preds = %274
  %278 = load i32, i32* %5, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %290, label %280

280:                                              ; preds = %277
  %281 = load i32, i32* %2, align 4
  %282 = load i32, i32* %2, align 4
  %283 = icmp eq i32 %282, 1
  %284 = zext i1 %283 to i64
  %285 = select i1 %283, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)
  %286 = load i8*, i8** @mailname, align 8
  %287 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %281, i8* %285, i8* %286)
  %288 = load i32*, i32** %10, align 8
  %289 = call i32 @Fclose(i32* %288)
  store i32 1, i32* %21, align 4
  br label %541

290:                                              ; preds = %277, %274, %269
  %291 = load i32, i32* %15, align 4
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %302

293:                                              ; preds = %290
  %294 = load i32, i32* %2, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %301

296:                                              ; preds = %293
  %297 = load i32*, i32** %11, align 8
  %298 = call i32 @writeback(i32* %297)
  %299 = load i32*, i32** %10, align 8
  %300 = call i32 @Fclose(i32* %299)
  store i32 1, i32* %21, align 4
  br label %541

301:                                              ; preds = %293
  br label %499

302:                                              ; preds = %290
  %303 = call i8* @expand(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store i8* %303, i8** %18, align 8
  %304 = load i32, i32* %15, align 4
  store i32 %304, i32* %1, align 4
  %305 = call i32* @value(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %306 = icmp eq i32* %305, null
  br i1 %306, label %307, label %387

307:                                              ; preds = %302
  %308 = trunc i64 %24 to i32
  %309 = load i8*, i8** @tmpdir, align 8
  %310 = call i32 @snprintf(i8* %26, i32 %308, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8* %309)
  %311 = call i32 @mkstemp(i8* %26)
  store i32 %311, i32* %16, align 4
  %312 = icmp eq i32 %311, -1
  br i1 %312, label %317, label %313

313:                                              ; preds = %307
  %314 = load i32, i32* %16, align 4
  %315 = call i32* @Fdopen(i32 %314, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %315, i32** %9, align 8
  %316 = icmp eq i32* %315, null
  br i1 %316, label %317, label %321

317:                                              ; preds = %313, %307
  %318 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %26)
  %319 = load i32*, i32** %10, align 8
  %320 = call i32 @Fclose(i32* %319)
  store i32 1, i32* %21, align 4
  br label %541

321:                                              ; preds = %313
  %322 = call i32* @Fopen(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %322, i32** %8, align 8
  %323 = icmp eq i32* %322, null
  br i1 %323, label %324, label %331

324:                                              ; preds = %321
  %325 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %26)
  %326 = call i32 @rm(i8* %26)
  %327 = load i32*, i32** %9, align 8
  %328 = call i32 @Fclose(i32* %327)
  %329 = load i32*, i32** %10, align 8
  %330 = call i32 @Fclose(i32* %329)
  store i32 1, i32* %21, align 4
  br label %541

331:                                              ; preds = %321
  %332 = call i32 @rm(i8* %26)
  %333 = load i8*, i8** %18, align 8
  %334 = call i32* @Fopen(i8* %333, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %334, i32** %13, align 8
  %335 = icmp ne i32* %334, null
  br i1 %335, label %336, label %349

336:                                              ; preds = %331
  br label %337

337:                                              ; preds = %342, %336
  %338 = load i32*, i32** %13, align 8
  %339 = call i32 @getc(i32* %338)
  store i32 %339, i32* %15, align 4
  %340 = load i32, i32* @EOF, align 4
  %341 = icmp ne i32 %339, %340
  br i1 %341, label %342, label %346

342:                                              ; preds = %337
  %343 = load i32, i32* %15, align 4
  %344 = load i32*, i32** %9, align 8
  %345 = call i32 @putc(i32 %343, i32* %344)
  br label %337

346:                                              ; preds = %337
  %347 = load i32*, i32** %13, align 8
  %348 = call i32 @Fclose(i32* %347)
  br label %349

349:                                              ; preds = %346, %331
  %350 = load i32*, i32** %9, align 8
  %351 = call i64 @ferror(i32* %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %361

353:                                              ; preds = %349
  %354 = call i32 @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %26)
  %355 = load i32*, i32** %8, align 8
  %356 = call i32 @Fclose(i32* %355)
  %357 = load i32*, i32** %9, align 8
  %358 = call i32 @Fclose(i32* %357)
  %359 = load i32*, i32** %10, align 8
  %360 = call i32 @Fclose(i32* %359)
  store i32 1, i32* %21, align 4
  br label %541

361:                                              ; preds = %349
  %362 = load i32*, i32** %9, align 8
  %363 = call i32 @Fclose(i32* %362)
  %364 = load i8*, i8** %18, align 8
  %365 = load i32, i32* @O_CREAT, align 4
  %366 = load i32, i32* @O_TRUNC, align 4
  %367 = or i32 %365, %366
  %368 = load i32, i32* @O_WRONLY, align 4
  %369 = or i32 %367, %368
  %370 = call i32 @open(i8* %364, i32 %369, i32 384)
  store i32 %370, i32* %16, align 4
  %371 = icmp sge i32 %370, 0
  br i1 %371, label %372, label %375

372:                                              ; preds = %361
  %373 = load i32, i32* %16, align 4
  %374 = call i32 @close(i32 %373)
  br label %375

375:                                              ; preds = %372, %361
  %376 = load i8*, i8** %18, align 8
  %377 = call i32* @Fopen(i8* %376, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  store i32* %377, i32** %9, align 8
  %378 = icmp eq i32* %377, null
  br i1 %378, label %379, label %386

379:                                              ; preds = %375
  %380 = load i8*, i8** %18, align 8
  %381 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %380)
  %382 = load i32*, i32** %8, align 8
  %383 = call i32 @Fclose(i32* %382)
  %384 = load i32*, i32** %10, align 8
  %385 = call i32 @Fclose(i32* %384)
  store i32 1, i32* %21, align 4
  br label %541

386:                                              ; preds = %375
  br label %387

387:                                              ; preds = %386, %302
  %388 = call i32* @value(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %389 = icmp ne i32* %388, null
  br i1 %389, label %390, label %403

390:                                              ; preds = %387
  %391 = load i8*, i8** %18, align 8
  %392 = call i32* @Fopen(i8* %391, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  store i32* %392, i32** %9, align 8
  %393 = icmp eq i32* %392, null
  br i1 %393, label %394, label %399

394:                                              ; preds = %390
  %395 = load i8*, i8** %18, align 8
  %396 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %395)
  %397 = load i32*, i32** %10, align 8
  %398 = call i32 @Fclose(i32* %397)
  store i32 1, i32* %21, align 4
  br label %541

399:                                              ; preds = %390
  %400 = load i32*, i32** %9, align 8
  %401 = call i32 @fileno(i32* %400)
  %402 = call i32 @fchmod(i32 %401, i32 384)
  br label %403

403:                                              ; preds = %399, %387
  %404 = load %struct.message*, %struct.message** @message, align 8
  %405 = getelementptr inbounds %struct.message, %struct.message* %404, i64 0
  store %struct.message* %405, %struct.message** %14, align 8
  br label %406

406:                                              ; preds = %436, %403
  %407 = load %struct.message*, %struct.message** %14, align 8
  %408 = load %struct.message*, %struct.message** @message, align 8
  %409 = load i64, i64* @msgCount, align 8
  %410 = getelementptr inbounds %struct.message, %struct.message* %408, i64 %409
  %411 = icmp ult %struct.message* %407, %410
  br i1 %411, label %412, label %439

412:                                              ; preds = %406
  %413 = load %struct.message*, %struct.message** %14, align 8
  %414 = getelementptr inbounds %struct.message, %struct.message* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* @MBOX, align 4
  %417 = and i32 %415, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %435

419:                                              ; preds = %412
  %420 = load %struct.message*, %struct.message** %14, align 8
  %421 = load i32*, i32** %9, align 8
  %422 = load i32, i32* @saveignore, align 4
  %423 = call i64 @sendmessage(%struct.message* %420, i32* %421, i32 %422, i32* null)
  %424 = icmp slt i64 %423, 0
  br i1 %424, label %425, label %434

425:                                              ; preds = %419
  %426 = load i8*, i8** %18, align 8
  %427 = call i32 @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %426)
  %428 = load i32*, i32** %8, align 8
  %429 = call i32 @Fclose(i32* %428)
  %430 = load i32*, i32** %9, align 8
  %431 = call i32 @Fclose(i32* %430)
  %432 = load i32*, i32** %10, align 8
  %433 = call i32 @Fclose(i32* %432)
  store i32 1, i32* %21, align 4
  br label %541

434:                                              ; preds = %419
  br label %435

435:                                              ; preds = %434, %412
  br label %436

436:                                              ; preds = %435
  %437 = load %struct.message*, %struct.message** %14, align 8
  %438 = getelementptr inbounds %struct.message, %struct.message* %437, i32 1
  store %struct.message* %438, %struct.message** %14, align 8
  br label %406

439:                                              ; preds = %406
  %440 = call i32* @value(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %441 = icmp eq i32* %440, null
  br i1 %441, label %442, label %465

442:                                              ; preds = %439
  %443 = load i32*, i32** %8, align 8
  %444 = call i32 @rewind(i32* %443)
  %445 = load i32*, i32** %8, align 8
  %446 = call i32 @getc(i32* %445)
  store i32 %446, i32* %15, align 4
  br label %447

447:                                              ; preds = %459, %442
  %448 = load i32, i32* %15, align 4
  %449 = load i32, i32* @EOF, align 4
  %450 = icmp ne i32 %448, %449
  br i1 %450, label %451, label %462

451:                                              ; preds = %447
  %452 = load i32, i32* %15, align 4
  %453 = load i32*, i32** %9, align 8
  %454 = call i32 @putc(i32 %452, i32* %453)
  %455 = load i32*, i32** %9, align 8
  %456 = call i64 @ferror(i32* %455)
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %458, label %459

458:                                              ; preds = %451
  br label %462

459:                                              ; preds = %451
  %460 = load i32*, i32** %8, align 8
  %461 = call i32 @getc(i32* %460)
  store i32 %461, i32* %15, align 4
  br label %447

462:                                              ; preds = %458, %447
  %463 = load i32*, i32** %8, align 8
  %464 = call i32 @Fclose(i32* %463)
  br label %465

465:                                              ; preds = %462, %439
  %466 = load i32*, i32** %9, align 8
  %467 = call i32 @fflush(i32* %466)
  %468 = load i32*, i32** %9, align 8
  %469 = call i32 @trunc(i32* %468)
  %470 = load i32*, i32** %9, align 8
  %471 = call i64 @ferror(i32* %470)
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %473, label %480

473:                                              ; preds = %465
  %474 = load i8*, i8** %18, align 8
  %475 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %474)
  %476 = load i32*, i32** %9, align 8
  %477 = call i32 @Fclose(i32* %476)
  %478 = load i32*, i32** %10, align 8
  %479 = call i32 @Fclose(i32* %478)
  store i32 1, i32* %21, align 4
  br label %541

480:                                              ; preds = %465
  %481 = load i32*, i32** %9, align 8
  %482 = call i32 @Fclose(i32* %481)
  %483 = load i32, i32* %1, align 4
  %484 = icmp eq i32 %483, 1
  br i1 %484, label %485, label %487

485:                                              ; preds = %480
  %486 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0))
  br label %490

487:                                              ; preds = %480
  %488 = load i32, i32* %1, align 4
  %489 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i32 %488)
  br label %490

490:                                              ; preds = %487, %485
  %491 = load i32, i32* %2, align 4
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %498

493:                                              ; preds = %490
  %494 = load i32*, i32** %11, align 8
  %495 = call i32 @writeback(i32* %494)
  %496 = load i32*, i32** %10, align 8
  %497 = call i32 @Fclose(i32* %496)
  store i32 1, i32* %21, align 4
  br label %541

498:                                              ; preds = %490
  br label %499

499:                                              ; preds = %498, %301
  %500 = load i32*, i32** %11, align 8
  %501 = icmp ne i32* %500, null
  br i1 %501, label %502, label %529

502:                                              ; preds = %499
  %503 = load i8*, i8** @mailname, align 8
  %504 = call i32* @Fopen(i8* %503, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  store i32* %504, i32** %13, align 8
  %505 = load i32*, i32** %13, align 8
  %506 = icmp eq i32* %505, null
  br i1 %506, label %507, label %508

507:                                              ; preds = %502
  br label %533

508:                                              ; preds = %502
  br label %509

509:                                              ; preds = %514, %508
  %510 = load i32*, i32** %11, align 8
  %511 = call i32 @getc(i32* %510)
  store i32 %511, i32* %15, align 4
  %512 = load i32, i32* @EOF, align 4
  %513 = icmp ne i32 %511, %512
  br i1 %513, label %514, label %518

514:                                              ; preds = %509
  %515 = load i32, i32* %15, align 4
  %516 = load i32*, i32** %13, align 8
  %517 = call i32 @putc(i32 %515, i32* %516)
  br label %509

518:                                              ; preds = %509
  %519 = load i32*, i32** %11, align 8
  %520 = call i32 @Fclose(i32* %519)
  %521 = load i32*, i32** %13, align 8
  %522 = call i32 @trunc(i32* %521)
  %523 = load i32*, i32** %13, align 8
  %524 = call i32 @Fclose(i32* %523)
  %525 = load i8*, i8** @mailname, align 8
  %526 = call i32 @alter(i8* %525)
  %527 = load i32*, i32** %10, align 8
  %528 = call i32 @Fclose(i32* %527)
  store i32 1, i32* %21, align 4
  br label %541

529:                                              ; preds = %499
  %530 = call i32 (...) @demail()
  %531 = load i32*, i32** %10, align 8
  %532 = call i32 @Fclose(i32* %531)
  store i32 1, i32* %21, align 4
  br label %541

533:                                              ; preds = %507, %93, %83, %66, %40
  %534 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0))
  %535 = load i32*, i32** %10, align 8
  %536 = icmp ne i32* %535, null
  br i1 %536, label %537, label %540

537:                                              ; preds = %533
  %538 = load i32*, i32** %10, align 8
  %539 = call i32 @Fclose(i32* %538)
  br label %540

540:                                              ; preds = %537, %533
  store i32 0, i32* %21, align 4
  br label %541

541:                                              ; preds = %540, %529, %518, %493, %473, %425, %394, %379, %353, %324, %317, %296, %280, %33, %29
  %542 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %542)
  %543 = load i32, i32* %21, align 4
  switch i32 %543, label %545 [
    i32 0, label %544
    i32 1, label %544
  ]

544:                                              ; preds = %541, %541
  ret void

545:                                              ; preds = %541
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @edstop(...) #2

declare dso_local i32* @Fopen(i8*, i8*) #2

declare dso_local i32 @flock(i32, i32) #2

declare dso_local i32 @fileno(i32*) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @mkstemp(i8*) #2

declare dso_local i32* @Fdopen(i32, i8*) #2

declare dso_local i32 @getc(i32*) #2

declare dso_local i32 @putc(i32, i32*) #2

declare dso_local i32 @Fclose(i32*) #2

declare dso_local i32 @rm(i8*) #2

declare dso_local i32* @value(i8*) #2

declare dso_local i8* @hfield(i8*, %struct.message*) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*) #2

declare dso_local i32 @writeback(i32*) #2

declare dso_local i8* @expand(i8*) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @fchmod(i32, i32) #2

declare dso_local i64 @sendmessage(%struct.message*, i32*, i32, i32*) #2

declare dso_local i32 @rewind(i32*) #2

declare dso_local i32 @fflush(i32*) #2

declare dso_local i32 @trunc(i32*) #2

declare dso_local i32 @alter(i8*) #2

declare dso_local i32 @demail(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
