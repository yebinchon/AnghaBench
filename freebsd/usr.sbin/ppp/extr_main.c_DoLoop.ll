; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_main.c_DoLoop.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_main.c_DoLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bundle = type { i32 }
%struct.timeval = type { i32, i32 }

@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"DoLoop: Cannot create fd_set\0A\00", align 1
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"DoLoop: select(): %s\0A\00", align 1
@LogTIMER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Read set contains %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"The culprit !\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Write set contains %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Error set contains %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Select returns %d\0A\00", align 1
@LogPHASE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"Exception detected on descriptor %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Exception cannot be handled !\0A\00", align 1
@LogDEBUG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"DoLoop done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bundle*)* @DoLoop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DoLoop(%struct.bundle* %0) #0 {
  %2 = alloca %struct.bundle*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 4
  %10 = alloca %struct.timeval, align 4
  store %struct.bundle* %0, %struct.bundle** %2, align 8
  %11 = call i32* (...) @mkfdset()
  store i32* %11, i32** %3, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @LogERROR, align 4
  %15 = call i32 (i32, i8*, ...) @log_Printf(i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %255

16:                                               ; preds = %1
  %17 = call i32* (...) @mkfdset()
  store i32* %17, i32** %4, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* @LogERROR, align 4
  %21 = call i32 (i32, i8*, ...) @log_Printf(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @free(i32* %22)
  br label %255

24:                                               ; preds = %16
  %25 = call i32* (...) @mkfdset()
  store i32* %25, i32** %5, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* @LogERROR, align 4
  %29 = call i32 (i32, i8*, ...) @log_Printf(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @free(i32* %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @free(i32* %32)
  br label %255

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %249, %34
  %36 = load %struct.bundle*, %struct.bundle** %2, align 8
  %37 = call i64 @bundle_IsDead(%struct.bundle* %36)
  %38 = icmp ne i64 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %252

40:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @zerofdset(i32* %41)
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @zerofdset(i32* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @zerofdset(i32* %45)
  %47 = load %struct.bundle*, %struct.bundle** %2, align 8
  %48 = getelementptr inbounds %struct.bundle, %struct.bundle* %47, i32 0, i32 0
  %49 = load i32*, i32** %3, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @descriptor_UpdateSet(i32* %48, i32* %49, i32* %50, i32* %51, i32* %7)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @descriptor_UpdateSet(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), i32* %53, i32* null, i32* null, i32* %7)
  %55 = load %struct.bundle*, %struct.bundle** %2, align 8
  %56 = call i32 @bundle_CleanDatalinks(%struct.bundle* %55)
  %57 = load %struct.bundle*, %struct.bundle** %2, align 8
  %58 = call i64 @bundle_IsDead(%struct.bundle* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %40
  br label %252

61:                                               ; preds = %40
  %62 = call i64 (...) @sig_Handle()
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %249

65:                                               ; preds = %61
  %66 = load i32, i32* %7, align 4
  %67 = load i32*, i32** %3, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @select(i32 %66, i32* %67, i32* %68, i32* %69, %struct.timeval* null)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %168

73:                                               ; preds = %65
  %74 = load i64, i64* @errno, align 8
  %75 = load i64, i64* @EINTR, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %168

77:                                               ; preds = %73
  %78 = load i32, i32* @LogERROR, align 4
  %79 = load i64, i64* @errno, align 8
  %80 = call i32 @strerror(i64 %79)
  %81 = call i32 (i32, i8*, ...) @log_Printf(i32 %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @LogTIMER, align 4
  %83 = call i64 @log_IsKept(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %167

85:                                               ; preds = %77
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %163, %85
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp sle i32 %87, %88
  br i1 %89, label %90, label %166

90:                                               ; preds = %86
  %91 = load i32, i32* %6, align 4
  %92 = load i32*, i32** %3, align 8
  %93 = call i64 @FD_ISSET(i32 %91, i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %90
  %96 = load i32, i32* @LogTIMER, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 (i32, i8*, ...) @log_Printf(i32 %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @FD_CLR(i32 %99, i32* %100)
  %102 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i32 0, i32* %102, align 4
  %103 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 0, i32* %103, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32*, i32** %3, align 8
  %106 = load i32*, i32** %4, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = call i32 @select(i32 %104, i32* %105, i32* %106, i32* %107, %struct.timeval* %9)
  %109 = icmp ne i32 %108, -1
  br i1 %109, label %110, label %113

110:                                              ; preds = %95
  %111 = load i32, i32* @LogTIMER, align 4
  %112 = call i32 (i32, i8*, ...) @log_Printf(i32 %111, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %166

113:                                              ; preds = %95
  br label %114

114:                                              ; preds = %113, %90
  %115 = load i32, i32* %6, align 4
  %116 = load i32*, i32** %4, align 8
  %117 = call i64 @FD_ISSET(i32 %115, i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %138

119:                                              ; preds = %114
  %120 = load i32, i32* @LogTIMER, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 (i32, i8*, ...) @log_Printf(i32 %120, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* %6, align 4
  %124 = load i32*, i32** %4, align 8
  %125 = call i32 @FD_CLR(i32 %123, i32* %124)
  %126 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i32 0, i32* %126, align 4
  %127 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 0, i32* %127, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load i32*, i32** %3, align 8
  %130 = load i32*, i32** %4, align 8
  %131 = load i32*, i32** %5, align 8
  %132 = call i32 @select(i32 %128, i32* %129, i32* %130, i32* %131, %struct.timeval* %9)
  %133 = icmp ne i32 %132, -1
  br i1 %133, label %134, label %137

134:                                              ; preds = %119
  %135 = load i32, i32* @LogTIMER, align 4
  %136 = call i32 (i32, i8*, ...) @log_Printf(i32 %135, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %166

137:                                              ; preds = %119
  br label %138

138:                                              ; preds = %137, %114
  %139 = load i32, i32* %6, align 4
  %140 = load i32*, i32** %5, align 8
  %141 = call i64 @FD_ISSET(i32 %139, i32* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %162

143:                                              ; preds = %138
  %144 = load i32, i32* @LogTIMER, align 4
  %145 = load i32, i32* %6, align 4
  %146 = call i32 (i32, i8*, ...) @log_Printf(i32 %144, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* %6, align 4
  %148 = load i32*, i32** %5, align 8
  %149 = call i32 @FD_CLR(i32 %147, i32* %148)
  %150 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i32 0, i32* %150, align 4
  %151 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 0, i32* %151, align 4
  %152 = load i32, i32* %7, align 4
  %153 = load i32*, i32** %3, align 8
  %154 = load i32*, i32** %4, align 8
  %155 = load i32*, i32** %5, align 8
  %156 = call i32 @select(i32 %152, i32* %153, i32* %154, i32* %155, %struct.timeval* %9)
  %157 = icmp ne i32 %156, -1
  br i1 %157, label %158, label %161

158:                                              ; preds = %143
  %159 = load i32, i32* @LogTIMER, align 4
  %160 = call i32 (i32, i8*, ...) @log_Printf(i32 %159, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %166

161:                                              ; preds = %143
  br label %162

162:                                              ; preds = %161, %138
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %6, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %6, align 4
  br label %86

166:                                              ; preds = %158, %134, %110, %86
  br label %167

167:                                              ; preds = %166, %77
  br label %252

168:                                              ; preds = %73, %65
  %169 = load i32, i32* @LogTIMER, align 4
  %170 = load i32, i32* %6, align 4
  %171 = call i32 (i32, i8*, ...) @log_Printf(i32 %169, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %170)
  %172 = call i64 (...) @sig_Handle()
  %173 = load i32, i32* %6, align 4
  %174 = icmp sle i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %168
  br label %249

176:                                              ; preds = %168
  store i32 0, i32* %6, align 4
  br label %177

177:                                              ; preds = %199, %176
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* %7, align 4
  %180 = icmp sle i32 %178, %179
  br i1 %180, label %181, label %202

181:                                              ; preds = %177
  %182 = load i32, i32* %6, align 4
  %183 = load i32*, i32** %5, align 8
  %184 = call i64 @FD_ISSET(i32 %182, i32* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %198

186:                                              ; preds = %181
  %187 = load i32, i32* @LogPHASE, align 4
  %188 = load i32, i32* %6, align 4
  %189 = call i32 (i32, i8*, ...) @log_Printf(i32 %187, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %188)
  %190 = load %struct.bundle*, %struct.bundle** %2, align 8
  %191 = load i32, i32* %6, align 4
  %192 = call i32 @bundle_Exception(%struct.bundle* %190, i32 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %186
  %195 = load i32, i32* @LogERROR, align 4
  %196 = call i32 (i32, i8*, ...) @log_Printf(i32 %195, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %202

197:                                              ; preds = %186
  br label %198

198:                                              ; preds = %197, %181
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %6, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %6, align 4
  br label %177

202:                                              ; preds = %194, %177
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* %7, align 4
  %205 = icmp sle i32 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %202
  br label %252

207:                                              ; preds = %202
  store i32 1, i32* %8, align 4
  %208 = load i32*, i32** %3, align 8
  %209 = call i64 @descriptor_IsSet(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), i32* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %207
  %212 = load %struct.bundle*, %struct.bundle** %2, align 8
  %213 = load i32*, i32** %3, align 8
  %214 = call i32 @descriptor_Read(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), %struct.bundle* %212, i32* %213)
  store i32 0, i32* %8, align 4
  br label %215

215:                                              ; preds = %211, %207
  %216 = load %struct.bundle*, %struct.bundle** %2, align 8
  %217 = getelementptr inbounds %struct.bundle, %struct.bundle* %216, i32 0, i32 0
  %218 = load i32*, i32** %3, align 8
  %219 = call i64 @descriptor_IsSet(i32* %217, i32* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %215
  %222 = load %struct.bundle*, %struct.bundle** %2, align 8
  %223 = getelementptr inbounds %struct.bundle, %struct.bundle* %222, i32 0, i32 0
  %224 = load %struct.bundle*, %struct.bundle** %2, align 8
  %225 = load i32*, i32** %3, align 8
  %226 = call i32 @descriptor_Read(i32* %223, %struct.bundle* %224, i32* %225)
  store i32 0, i32* %8, align 4
  br label %227

227:                                              ; preds = %221, %215
  %228 = load %struct.bundle*, %struct.bundle** %2, align 8
  %229 = getelementptr inbounds %struct.bundle, %struct.bundle* %228, i32 0, i32 0
  %230 = load i32*, i32** %4, align 8
  %231 = call i64 @descriptor_IsSet(i32* %229, i32* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %248

233:                                              ; preds = %227
  %234 = load %struct.bundle*, %struct.bundle** %2, align 8
  %235 = getelementptr inbounds %struct.bundle, %struct.bundle* %234, i32 0, i32 0
  %236 = load %struct.bundle*, %struct.bundle** %2, align 8
  %237 = load i32*, i32** %4, align 8
  %238 = call i64 @descriptor_Write(i32* %235, %struct.bundle* %236, i32* %237)
  %239 = icmp sle i64 %238, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %233
  %241 = load i32, i32* %8, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i32 0, i32* %244, align 4
  %245 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i32 100000, i32* %245, align 4
  %246 = call i32 @select(i32 0, i32* null, i32* null, i32* null, %struct.timeval* %10)
  br label %247

247:                                              ; preds = %243, %240, %233
  br label %248

248:                                              ; preds = %247, %227
  br label %249

249:                                              ; preds = %248, %175, %64
  %250 = load %struct.bundle*, %struct.bundle** %2, align 8
  %251 = call i32 @bundle_CleanDatalinks(%struct.bundle* %250)
  br label %35

252:                                              ; preds = %206, %167, %60, %35
  %253 = load i32, i32* @LogDEBUG, align 4
  %254 = call i32 (i32, i8*, ...) @log_Printf(i32 %253, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  br label %255

255:                                              ; preds = %252, %27, %19, %13
  ret void
}

declare dso_local i32* @mkfdset(...) #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @bundle_IsDead(%struct.bundle*) #1

declare dso_local i32 @zerofdset(i32*) #1

declare dso_local i32 @descriptor_UpdateSet(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @bundle_CleanDatalinks(%struct.bundle*) #1

declare dso_local i64 @sig_Handle(...) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i64 @log_IsKept(i32) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @FD_CLR(i32, i32*) #1

declare dso_local i32 @bundle_Exception(%struct.bundle*, i32) #1

declare dso_local i64 @descriptor_IsSet(i32*, i32*) #1

declare dso_local i32 @descriptor_Read(i32*, %struct.bundle*, i32*) #1

declare dso_local i64 @descriptor_Write(i32*, %struct.bundle*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
