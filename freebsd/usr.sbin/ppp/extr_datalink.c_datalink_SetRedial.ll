; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_SetRedial.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_SetRedial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, i8**, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"random\00", align 1
@LogWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid redial timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid timeout increment\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Invalid maximum timeout increments\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Invalid next redial timeout\0A\00", align 1
@DIAL_NEXT_TIMEOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Invalid retry value\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @datalink_SetRedial(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %10 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %11 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %14 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %27, label %18

18:                                               ; preds = %1
  %19 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %20 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %23 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 2
  %26 = icmp eq i32 %21, %25
  br i1 %26, label %27, label %265

27:                                               ; preds = %18, %1
  %28 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %29 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %28, i32 0, i32 2
  %30 = load i8**, i8*** %29, align 8
  %31 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %32 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %30, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strncasecmp(i8* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %75

39:                                               ; preds = %27
  %40 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %41 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %40, i32 0, i32 2
  %42 = load i8**, i8*** %41, align 8
  %43 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %44 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %42, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 6
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %39
  %54 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %55 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %54, i32 0, i32 2
  %56 = load i8**, i8*** %55, align 8
  %57 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %58 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %56, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 6
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 46
  br i1 %66, label %67, label %75

67:                                               ; preds = %53, %39
  %68 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %69 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %68, i32 0, i32 3
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 -1, i32* %73, align 4
  %74 = call i32 (...) @randinit()
  br label %100

75:                                               ; preds = %53, %27
  %76 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %77 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %76, i32 0, i32 2
  %78 = load i8**, i8*** %77, align 8
  %79 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %80 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %78, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @atoi(i8* %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %75
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %91 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %90, i32 0, i32 3
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 %89, i32* %95, align 4
  br label %99

96:                                               ; preds = %75
  %97 = load i32, i32* @LogWARN, align 4
  %98 = call i32 @log_Printf(i32 %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %266

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99, %67
  %101 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %102 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %101, i32 0, i32 2
  %103 = load i8**, i8*** %102, align 8
  %104 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %105 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %103, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* @strchr(i8* %109, i8 signext 43)
  store i8* %110, i8** %4, align 8
  %111 = load i8*, i8** %4, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %163

113:                                              ; preds = %100
  %114 = load i8*, i8** %4, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %4, align 8
  %116 = call i32 @atoi(i8* %115)
  store i32 %116, i32* %7, align 4
  %117 = load i8*, i8** %4, align 8
  store i8* %117, i8** %5, align 8
  %118 = load i32, i32* %7, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %113
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %123 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %122, i32 0, i32 3
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  store i32 %121, i32* %127, align 4
  br label %131

128:                                              ; preds = %113
  %129 = load i32, i32* @LogWARN, align 4
  %130 = call i32 @log_Printf(i32 %129, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %266

131:                                              ; preds = %120
  %132 = load i8*, i8** %4, align 8
  %133 = call i8* @strchr(i8* %132, i8 signext 45)
  store i8* %133, i8** %4, align 8
  %134 = load i8*, i8** %4, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %154

136:                                              ; preds = %131
  %137 = load i8*, i8** %4, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %4, align 8
  %139 = call i32 @atoi(i8* %138)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = icmp sge i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %136
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %145 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %144, i32 0, i32 3
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 2
  store i32 %143, i32* %149, align 4
  br label %153

150:                                              ; preds = %136
  %151 = load i32, i32* @LogWARN, align 4
  %152 = call i32 @log_Printf(i32 %151, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %266

153:                                              ; preds = %142
  br label %162

154:                                              ; preds = %131
  %155 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %156 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %155, i32 0, i32 3
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 2
  store i32 10, i32* %160, align 4
  %161 = load i8*, i8** %5, align 8
  store i8* %161, i8** %4, align 8
  br label %162

162:                                              ; preds = %154, %153
  br label %185

163:                                              ; preds = %100
  %164 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %165 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %164, i32 0, i32 3
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  store i32 0, i32* %169, align 4
  %170 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %171 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %170, i32 0, i32 3
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 2
  store i32 10, i32* %175, align 4
  %176 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %177 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %176, i32 0, i32 2
  %178 = load i8**, i8*** %177, align 8
  %179 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %180 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %178, i64 %182
  %184 = load i8*, i8** %183, align 8
  store i8* %184, i8** %4, align 8
  br label %185

185:                                              ; preds = %163, %162
  %186 = load i8*, i8** %4, align 8
  %187 = call i8* @strchr(i8* %186, i8 signext 46)
  store i8* %187, i8** %4, align 8
  %188 = load i8*, i8** %4, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %221

190:                                              ; preds = %185
  %191 = load i8*, i8** %4, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %4, align 8
  %193 = call i64 @strcasecmp(i8* %192, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %190
  %196 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %197 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %196, i32 0, i32 3
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 3
  store i32 -1, i32* %201, align 4
  %202 = call i32 (...) @randinit()
  br label %220

203:                                              ; preds = %190
  %204 = load i8*, i8** %4, align 8
  %205 = call i32 @atoi(i8* %204)
  store i32 %205, i32* %6, align 4
  %206 = load i32, i32* %6, align 4
  %207 = icmp sge i32 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %203
  %209 = load i32, i32* %6, align 4
  %210 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %211 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %210, i32 0, i32 3
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 3
  store i32 %209, i32* %215, align 4
  br label %219

216:                                              ; preds = %203
  %217 = load i32, i32* @LogWARN, align 4
  %218 = call i32 @log_Printf(i32 %217, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %266

219:                                              ; preds = %208
  br label %220

220:                                              ; preds = %219, %195
  br label %229

221:                                              ; preds = %185
  %222 = load i32, i32* @DIAL_NEXT_TIMEOUT, align 4
  %223 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %224 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %223, i32 0, i32 3
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 3
  store i32 %222, i32* %228, align 4
  br label %229

229:                                              ; preds = %221, %220
  %230 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %231 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %234 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %235, 2
  %237 = icmp eq i32 %232, %236
  br i1 %237, label %238, label %264

238:                                              ; preds = %229
  %239 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %240 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %239, i32 0, i32 2
  %241 = load i8**, i8*** %240, align 8
  %242 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %243 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8*, i8** %241, i64 %246
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @atoi(i8* %248)
  store i32 %249, i32* %9, align 4
  %250 = load i32, i32* %9, align 4
  %251 = icmp sge i32 %250, 0
  br i1 %251, label %252, label %260

252:                                              ; preds = %238
  %253 = load i32, i32* %9, align 4
  %254 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %255 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %254, i32 0, i32 3
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 4
  store i32 %253, i32* %259, align 4
  br label %263

260:                                              ; preds = %238
  %261 = load i32, i32* @LogWARN, align 4
  %262 = call i32 @log_Printf(i32 %261, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %266

263:                                              ; preds = %252
  br label %264

264:                                              ; preds = %263, %229
  store i32 0, i32* %2, align 4
  br label %266

265:                                              ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %266

266:                                              ; preds = %265, %264, %260, %216, %150, %128, %96
  %267 = load i32, i32* %2, align 4
  ret i32 %267
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @randinit(...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @log_Printf(i32, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
