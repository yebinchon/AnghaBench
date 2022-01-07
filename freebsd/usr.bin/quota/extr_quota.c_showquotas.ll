; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/quota/extr_quota.c_showquotas.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/quota/extr_quota.c_showquotas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quotause = type { i8*, %struct.TYPE_2__, %struct.quotause* }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@showquotas.now = internal global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"File limit reached on\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"In file grace period on\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Over file quota on\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Block limit reached on\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"In block grace period on\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Over block quota on\00", align 1
@rflag = common dso_local global i64 0, align 8
@vflag = common dso_local global i32 0, align 4
@qflag = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"\09%s %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%-15s\00", align 1
@hflag = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c" %7ju%c %7ju %7ju\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"%8s %6ju%c %6ju %6ju%8s\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @showquotas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @showquotas(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.quotause*, align 8
  %8 = alloca %struct.quotause*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load i64, i64* @showquotas.now, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i32 @time(i64* @showquotas.now)
  br label %20

20:                                               ; preds = %18, %3
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call %struct.quotause* @getprivs(i32 %21, i32 %22)
  store %struct.quotause* %23, %struct.quotause** %8, align 8
  %24 = load %struct.quotause*, %struct.quotause** %8, align 8
  store %struct.quotause* %24, %struct.quotause** %7, align 8
  br label %25

25:                                               ; preds = %357, %20
  %26 = load %struct.quotause*, %struct.quotause** %7, align 8
  %27 = icmp ne %struct.quotause* %26, null
  br i1 %27, label %28, label %361

28:                                               ; preds = %25
  store i8* null, i8** %9, align 8
  %29 = load %struct.quotause*, %struct.quotause** %7, align 8
  %30 = getelementptr inbounds %struct.quotause, %struct.quotause* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load %struct.quotause*, %struct.quotause** %7, align 8
  %36 = getelementptr inbounds %struct.quotause, %struct.quotause* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.quotause*, %struct.quotause** %7, align 8
  %40 = getelementptr inbounds %struct.quotause, %struct.quotause* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %38, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %15, align 4
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %76

47:                                               ; preds = %34, %28
  %48 = load %struct.quotause*, %struct.quotause** %7, align 8
  %49 = getelementptr inbounds %struct.quotause, %struct.quotause* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %47
  %54 = load %struct.quotause*, %struct.quotause** %7, align 8
  %55 = getelementptr inbounds %struct.quotause, %struct.quotause* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.quotause*, %struct.quotause** %7, align 8
  %59 = getelementptr inbounds %struct.quotause, %struct.quotause* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp sge i64 %57, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %53
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  %66 = load %struct.quotause*, %struct.quotause** %7, align 8
  %67 = getelementptr inbounds %struct.quotause, %struct.quotause* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @showquotas.now, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %74

73:                                               ; preds = %63
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %74

74:                                               ; preds = %73, %72
  br label %75

75:                                               ; preds = %74, %53, %47
  br label %76

76:                                               ; preds = %75, %44
  store i8* null, i8** %10, align 8
  %77 = load %struct.quotause*, %struct.quotause** %7, align 8
  %78 = getelementptr inbounds %struct.quotause, %struct.quotause* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %76
  %83 = load %struct.quotause*, %struct.quotause** %7, align 8
  %84 = getelementptr inbounds %struct.quotause, %struct.quotause* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.quotause*, %struct.quotause** %7, align 8
  %88 = getelementptr inbounds %struct.quotause, %struct.quotause* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = icmp sge i64 %86, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %82
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %15, align 4
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %124

95:                                               ; preds = %82, %76
  %96 = load %struct.quotause*, %struct.quotause** %7, align 8
  %97 = getelementptr inbounds %struct.quotause, %struct.quotause* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %123

101:                                              ; preds = %95
  %102 = load %struct.quotause*, %struct.quotause** %7, align 8
  %103 = getelementptr inbounds %struct.quotause, %struct.quotause* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.quotause*, %struct.quotause** %7, align 8
  %107 = getelementptr inbounds %struct.quotause, %struct.quotause* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 6
  %109 = load i64, i64* %108, align 8
  %110 = icmp sge i64 %105, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %101
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %15, align 4
  %114 = load %struct.quotause*, %struct.quotause** %7, align 8
  %115 = getelementptr inbounds %struct.quotause, %struct.quotause* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 7
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @showquotas.now, align 8
  %119 = icmp sgt i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %122

121:                                              ; preds = %111
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  br label %122

122:                                              ; preds = %121, %120
  br label %123

123:                                              ; preds = %122, %101, %95
  br label %124

124:                                              ; preds = %123, %92
  %125 = load i64, i64* @rflag, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* %5, align 4
  %130 = load %struct.quotause*, %struct.quotause** %7, align 8
  %131 = call i32 @showrawquotas(i32 %128, i32 %129, %struct.quotause* %130)
  br label %357

132:                                              ; preds = %124
  %133 = load i32, i32* @vflag, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %160, label %135

135:                                              ; preds = %132
  %136 = load %struct.quotause*, %struct.quotause** %7, align 8
  %137 = getelementptr inbounds %struct.quotause, %struct.quotause* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %160

141:                                              ; preds = %135
  %142 = load %struct.quotause*, %struct.quotause** %7, align 8
  %143 = getelementptr inbounds %struct.quotause, %struct.quotause* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %160

147:                                              ; preds = %141
  %148 = load %struct.quotause*, %struct.quotause** %7, align 8
  %149 = getelementptr inbounds %struct.quotause, %struct.quotause* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 6
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %147
  %154 = load %struct.quotause*, %struct.quotause** %7, align 8
  %155 = getelementptr inbounds %struct.quotause, %struct.quotause* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  br label %357

160:                                              ; preds = %153, %147, %141, %135, %132
  %161 = load i64, i64* @qflag, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %197

163:                                              ; preds = %160
  %164 = load i8*, i8** %9, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = load i8*, i8** %10, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %178

169:                                              ; preds = %166, %163
  %170 = load i32, i32* %14, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %14, align 4
  %172 = icmp eq i32 %170, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %169
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* %5, align 4
  %176 = load i8*, i8** %6, align 8
  %177 = call i32 @heading(i32 %174, i32 %175, i8* %176, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  br label %178

178:                                              ; preds = %173, %169, %166
  %179 = load i8*, i8** %9, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %187

181:                                              ; preds = %178
  %182 = load i8*, i8** %9, align 8
  %183 = load %struct.quotause*, %struct.quotause** %7, align 8
  %184 = getelementptr inbounds %struct.quotause, %struct.quotause* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %182, i8* %185)
  br label %187

187:                                              ; preds = %181, %178
  %188 = load i8*, i8** %10, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %196

190:                                              ; preds = %187
  %191 = load i8*, i8** %10, align 8
  %192 = load %struct.quotause*, %struct.quotause** %7, align 8
  %193 = getelementptr inbounds %struct.quotause, %struct.quotause* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %191, i8* %194)
  br label %196

196:                                              ; preds = %190, %187
  br label %357

197:                                              ; preds = %160
  %198 = load i32, i32* @vflag, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %213, label %200

200:                                              ; preds = %197
  %201 = load %struct.quotause*, %struct.quotause** %7, align 8
  %202 = getelementptr inbounds %struct.quotause, %struct.quotause* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 5
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %200
  %207 = load %struct.quotause*, %struct.quotause** %7, align 8
  %208 = getelementptr inbounds %struct.quotause, %struct.quotause* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %206
  br label %357

213:                                              ; preds = %206, %200, %197
  %214 = load i32, i32* %14, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %14, align 4
  %216 = icmp eq i32 %214, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %213
  %218 = load i32, i32* %4, align 4
  %219 = load i32, i32* %5, align 4
  %220 = load i8*, i8** %6, align 8
  %221 = call i32 @heading(i32 %218, i32 %219, i8* %220, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  br label %222

222:                                              ; preds = %217, %213
  %223 = load %struct.quotause*, %struct.quotause** %7, align 8
  %224 = getelementptr inbounds %struct.quotause, %struct.quotause* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  store i8* %225, i8** %11, align 8
  %226 = load %struct.quotause*, %struct.quotause** %7, align 8
  %227 = getelementptr inbounds %struct.quotause, %struct.quotause* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 @strlen(i8* %228)
  %230 = icmp sgt i32 %229, 15
  br i1 %230, label %231, label %236

231:                                              ; preds = %222
  %232 = load %struct.quotause*, %struct.quotause** %7, align 8
  %233 = getelementptr inbounds %struct.quotause, %struct.quotause* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %234)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8** %11, align 8
  br label %236

236:                                              ; preds = %231, %222
  %237 = load i8*, i8** %11, align 8
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %237)
  %239 = load i64, i64* @hflag, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %265

241:                                              ; preds = %236
  %242 = load %struct.quotause*, %struct.quotause** %7, align 8
  %243 = getelementptr inbounds %struct.quotause, %struct.quotause* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 5
  %245 = load i64, i64* %244, align 8
  %246 = call i64 @dbtob(i64 %245)
  %247 = call i32 @prthumanval(i32 7, i64 %246)
  %248 = load i8*, i8** %10, align 8
  %249 = icmp eq i8* %248, null
  %250 = zext i1 %249 to i64
  %251 = select i1 %249, i32 32, i32 42
  %252 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %251)
  %253 = load %struct.quotause*, %struct.quotause** %7, align 8
  %254 = getelementptr inbounds %struct.quotause, %struct.quotause* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 6
  %256 = load i64, i64* %255, align 8
  %257 = call i64 @dbtob(i64 %256)
  %258 = call i32 @prthumanval(i32 7, i64 %257)
  %259 = load %struct.quotause*, %struct.quotause** %7, align 8
  %260 = getelementptr inbounds %struct.quotause, %struct.quotause* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 4
  %262 = load i64, i64* %261, align 8
  %263 = call i64 @dbtob(i64 %262)
  %264 = call i32 @prthumanval(i32 7, i64 %263)
  br label %292

265:                                              ; preds = %236
  %266 = load %struct.quotause*, %struct.quotause** %7, align 8
  %267 = getelementptr inbounds %struct.quotause, %struct.quotause* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 5
  %269 = load i64, i64* %268, align 8
  %270 = call i64 @dbtob(i64 %269)
  %271 = trunc i64 %270 to i32
  %272 = sdiv i32 %271, 1024
  %273 = load i8*, i8** %10, align 8
  %274 = icmp eq i8* %273, null
  %275 = zext i1 %274 to i64
  %276 = select i1 %274, i32 32, i32 42
  %277 = load %struct.quotause*, %struct.quotause** %7, align 8
  %278 = getelementptr inbounds %struct.quotause, %struct.quotause* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 6
  %280 = load i64, i64* %279, align 8
  %281 = call i64 @dbtob(i64 %280)
  %282 = trunc i64 %281 to i32
  %283 = sdiv i32 %282, 1024
  %284 = load %struct.quotause*, %struct.quotause** %7, align 8
  %285 = getelementptr inbounds %struct.quotause, %struct.quotause* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 4
  %287 = load i64, i64* %286, align 8
  %288 = call i64 @dbtob(i64 %287)
  %289 = trunc i64 %288 to i32
  %290 = sdiv i32 %289, 1024
  %291 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %272, i32 %276, i32 %283, i32 %290)
  br label %292

292:                                              ; preds = %265, %241
  %293 = load i8*, i8** %10, align 8
  %294 = icmp ne i8* %293, null
  br i1 %294, label %295, label %301

295:                                              ; preds = %292
  %296 = load %struct.quotause*, %struct.quotause** %7, align 8
  %297 = getelementptr inbounds %struct.quotause, %struct.quotause* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i32 0, i32 7
  %299 = load i64, i64* %298, align 8
  %300 = call i8* @timeprt(i64 %299)
  store i8* %300, i8** %12, align 8
  br label %301

301:                                              ; preds = %295, %292
  %302 = load i8*, i8** %9, align 8
  %303 = icmp ne i8* %302, null
  br i1 %303, label %304, label %310

304:                                              ; preds = %301
  %305 = load %struct.quotause*, %struct.quotause** %7, align 8
  %306 = getelementptr inbounds %struct.quotause, %struct.quotause* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %306, i32 0, i32 3
  %308 = load i64, i64* %307, align 8
  %309 = call i8* @timeprt(i64 %308)
  store i8* %309, i8** %13, align 8
  br label %310

310:                                              ; preds = %304, %301
  %311 = load i8*, i8** %10, align 8
  %312 = icmp eq i8* %311, null
  br i1 %312, label %313, label %314

313:                                              ; preds = %310
  br label %316

314:                                              ; preds = %310
  %315 = load i8*, i8** %12, align 8
  br label %316

316:                                              ; preds = %314, %313
  %317 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %313 ], [ %315, %314 ]
  %318 = load %struct.quotause*, %struct.quotause** %7, align 8
  %319 = getelementptr inbounds %struct.quotause, %struct.quotause* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i32 0, i32 1
  %321 = load i64, i64* %320, align 8
  %322 = trunc i64 %321 to i32
  %323 = load i8*, i8** %9, align 8
  %324 = icmp eq i8* %323, null
  %325 = zext i1 %324 to i64
  %326 = select i1 %324, i32 32, i32 42
  %327 = load %struct.quotause*, %struct.quotause** %7, align 8
  %328 = getelementptr inbounds %struct.quotause, %struct.quotause* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %328, i32 0, i32 2
  %330 = load i64, i64* %329, align 8
  %331 = trunc i64 %330 to i32
  %332 = load %struct.quotause*, %struct.quotause** %7, align 8
  %333 = getelementptr inbounds %struct.quotause, %struct.quotause* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = trunc i64 %335 to i32
  %337 = load i8*, i8** %9, align 8
  %338 = icmp eq i8* %337, null
  br i1 %338, label %339, label %340

339:                                              ; preds = %316
  br label %342

340:                                              ; preds = %316
  %341 = load i8*, i8** %13, align 8
  br label %342

342:                                              ; preds = %340, %339
  %343 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %339 ], [ %341, %340 ]
  %344 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i8* %317, i32 %322, i32 %326, i32 %331, i32 %336, i8* %343)
  %345 = load i8*, i8** %10, align 8
  %346 = icmp ne i8* %345, null
  br i1 %346, label %347, label %350

347:                                              ; preds = %342
  %348 = load i8*, i8** %12, align 8
  %349 = call i32 @free(i8* %348)
  br label %350

350:                                              ; preds = %347, %342
  %351 = load i8*, i8** %9, align 8
  %352 = icmp ne i8* %351, null
  br i1 %352, label %353, label %356

353:                                              ; preds = %350
  %354 = load i8*, i8** %13, align 8
  %355 = call i32 @free(i8* %354)
  br label %356

356:                                              ; preds = %353, %350
  br label %357

357:                                              ; preds = %356, %212, %196, %159, %127
  %358 = load %struct.quotause*, %struct.quotause** %7, align 8
  %359 = getelementptr inbounds %struct.quotause, %struct.quotause* %358, i32 0, i32 2
  %360 = load %struct.quotause*, %struct.quotause** %359, align 8
  store %struct.quotause* %360, %struct.quotause** %7, align 8
  br label %25

361:                                              ; preds = %25
  %362 = load i64, i64* @qflag, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %375, label %364

364:                                              ; preds = %361
  %365 = load i64, i64* @rflag, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %375, label %367

367:                                              ; preds = %364
  %368 = load i32, i32* %14, align 4
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %375

370:                                              ; preds = %367
  %371 = load i32, i32* %4, align 4
  %372 = load i32, i32* %5, align 4
  %373 = load i8*, i8** %6, align 8
  %374 = call i32 @heading(i32 %371, i32 %372, i8* %373, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %375

375:                                              ; preds = %370, %367, %364, %361
  %376 = load i32, i32* %15, align 4
  ret i32 %376
}

declare dso_local i32 @time(i64*) #1

declare dso_local %struct.quotause* @getprivs(i32, i32) #1

declare dso_local i32 @showrawquotas(i32, i32, %struct.quotause*) #1

declare dso_local i32 @heading(i32, i32, i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @prthumanval(i32, i64) #1

declare dso_local i64 @dbtob(i64) #1

declare dso_local i8* @timeprt(i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
