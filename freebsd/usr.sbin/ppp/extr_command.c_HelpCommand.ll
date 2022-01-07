; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_HelpCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_HelpCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i64, i64, %struct.TYPE_2__*, %struct.cmdtab*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.cmdtab = type { i8*, i8*, i32, i8*, i64, i32 }

@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"help: Cannot help without a prompt\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"(o) = Optional context, (c) = Context required\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%s%-*.*s: %-*.*s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdargs*)* @HelpCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HelpCommand(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca %struct.cmdtab*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %11 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %12 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @LogWARN, align 4
  %17 = call i32 @log_Printf(i32 %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %252

18:                                               ; preds = %1
  %19 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %20 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %23 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ugt i64 %21, %24
  br i1 %25, label %26, label %106

26:                                               ; preds = %18
  %27 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %28 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %27, i32 0, i32 3
  %29 = load %struct.cmdtab*, %struct.cmdtab** %28, align 8
  store %struct.cmdtab* %29, %struct.cmdtab** %4, align 8
  br label %30

30:                                               ; preds = %102, %26
  %31 = load %struct.cmdtab*, %struct.cmdtab** %4, align 8
  %32 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.cmdtab*, %struct.cmdtab** %4, align 8
  %37 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br label %40

40:                                               ; preds = %35, %30
  %41 = phi i1 [ true, %30 ], [ %39, %35 ]
  br i1 %41, label %42, label %105

42:                                               ; preds = %40
  %43 = load %struct.cmdtab*, %struct.cmdtab** %4, align 8
  %44 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %47 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %45, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %101

53:                                               ; preds = %42
  %54 = load %struct.cmdtab*, %struct.cmdtab** %4, align 8
  %55 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = load %struct.cmdtab*, %struct.cmdtab** %4, align 8
  %60 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %63 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %66 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @strcasecmp(i8* %61, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %58, %53
  %73 = load %struct.cmdtab*, %struct.cmdtab** %4, align 8
  %74 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %101

77:                                               ; preds = %72
  %78 = load %struct.cmdtab*, %struct.cmdtab** %4, align 8
  %79 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %82 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %85 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @strcasecmp(i8* %80, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %77, %58
  %92 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %93 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %92, i32 0, i32 2
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load %struct.cmdtab*, %struct.cmdtab** %4, align 8
  %96 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.cmdtab*, %struct.cmdtab** %4, align 8
  %99 = call i8* @showcx(%struct.cmdtab* %98)
  %100 = call i32 (%struct.TYPE_2__*, i8*, ...) @prompt_Printf(%struct.TYPE_2__* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %97, i8* %99)
  store i32 0, i32* %2, align 4
  br label %252

101:                                              ; preds = %77, %72, %42
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.cmdtab*, %struct.cmdtab** %4, align 8
  %104 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %103, i32 1
  store %struct.cmdtab* %104, %struct.cmdtab** %4, align 8
  br label %30

105:                                              ; preds = %40
  store i32 -1, i32* %2, align 4
  br label %252

106:                                              ; preds = %18
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %107 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %108 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %107, i32 0, i32 3
  %109 = load %struct.cmdtab*, %struct.cmdtab** %108, align 8
  store %struct.cmdtab* %109, %struct.cmdtab** %4, align 8
  br label %110

110:                                              ; preds = %155, %106
  %111 = load %struct.cmdtab*, %struct.cmdtab** %4, align 8
  %112 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %158

115:                                              ; preds = %110
  %116 = load %struct.cmdtab*, %struct.cmdtab** %4, align 8
  %117 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %154

120:                                              ; preds = %115
  %121 = load %struct.cmdtab*, %struct.cmdtab** %4, align 8
  %122 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %125 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %124, i32 0, i32 2
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %123, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %154

131:                                              ; preds = %120
  %132 = load %struct.cmdtab*, %struct.cmdtab** %4, align 8
  %133 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @strlen(i8* %134)
  %136 = load %struct.cmdtab*, %struct.cmdtab** %4, align 8
  %137 = call i8* @showcx(%struct.cmdtab* %136)
  %138 = call i32 @strlen(i8* %137)
  %139 = add nsw i32 %135, %138
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %131
  %143 = load i32, i32* %5, align 4
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %142, %131
  %145 = load %struct.cmdtab*, %struct.cmdtab** %4, align 8
  %146 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %145, i32 0, i32 3
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @strlen(i8* %147)
  store i32 %148, i32* %5, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %144
  %152 = load i32, i32* %5, align 4
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %151, %144
  br label %154

154:                                              ; preds = %153, %120, %115
  br label %155

155:                                              ; preds = %154
  %156 = load %struct.cmdtab*, %struct.cmdtab** %4, align 8
  %157 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %156, i32 1
  store %struct.cmdtab* %157, %struct.cmdtab** %4, align 8
  br label %110

158:                                              ; preds = %110
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %159, %160
  %162 = add nsw i32 %161, 3
  %163 = sdiv i32 80, %162
  store i32 %163, i32* %8, align 4
  store i32 0, i32* %5, align 4
  %164 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %165 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %164, i32 0, i32 2
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = call i32 (%struct.TYPE_2__*, i8*, ...) @prompt_Printf(%struct.TYPE_2__* %166, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %168 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %169 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %168, i32 0, i32 3
  %170 = load %struct.cmdtab*, %struct.cmdtab** %169, align 8
  store %struct.cmdtab* %170, %struct.cmdtab** %4, align 8
  br label %171

171:                                              ; preds = %238, %158
  %172 = load %struct.cmdtab*, %struct.cmdtab** %4, align 8
  %173 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %241

176:                                              ; preds = %171
  %177 = load %struct.cmdtab*, %struct.cmdtab** %4, align 8
  %178 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %237

181:                                              ; preds = %176
  %182 = load %struct.cmdtab*, %struct.cmdtab** %4, align 8
  %183 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %186 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %185, i32 0, i32 2
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %184, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %237

192:                                              ; preds = %181
  %193 = load %struct.cmdtab*, %struct.cmdtab** %4, align 8
  %194 = call i8* @showcx(%struct.cmdtab* %193)
  store i8* %194, i8** %10, align 8
  %195 = load i32, i32* %6, align 4
  %196 = load %struct.cmdtab*, %struct.cmdtab** %4, align 8
  %197 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @strlen(i8* %198)
  %200 = sub nsw i32 %195, %199
  store i32 %200, i32* %9, align 4
  %201 = load i32, i32* %5, align 4
  %202 = load i32, i32* %8, align 4
  %203 = srem i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %192
  %206 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %207 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %206, i32 0, i32 2
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %207, align 8
  %209 = call i32 (%struct.TYPE_2__*, i8*, ...) @prompt_Printf(%struct.TYPE_2__* %208, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %210

210:                                              ; preds = %205, %192
  %211 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %212 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %211, i32 0, i32 2
  %213 = load %struct.TYPE_2__*, %struct.TYPE_2__** %212, align 8
  %214 = load %struct.cmdtab*, %struct.cmdtab** %4, align 8
  %215 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %9, align 4
  %219 = load i8*, i8** %10, align 8
  %220 = load i32, i32* %7, align 4
  %221 = load i32, i32* %7, align 4
  %222 = load %struct.cmdtab*, %struct.cmdtab** %4, align 8
  %223 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %222, i32 0, i32 3
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 (%struct.TYPE_2__*, i8*, ...) @prompt_Printf(%struct.TYPE_2__* %213, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %216, i32 %217, i32 %218, i8* %219, i32 %220, i32 %221, i8* %224)
  %226 = load i32, i32* %5, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %5, align 4
  %228 = load i32, i32* %8, align 4
  %229 = srem i32 %227, %228
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %210
  %232 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %233 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %232, i32 0, i32 2
  %234 = load %struct.TYPE_2__*, %struct.TYPE_2__** %233, align 8
  %235 = call i32 (%struct.TYPE_2__*, i8*, ...) @prompt_Printf(%struct.TYPE_2__* %234, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %236

236:                                              ; preds = %231, %210
  br label %237

237:                                              ; preds = %236, %181, %176
  br label %238

238:                                              ; preds = %237
  %239 = load %struct.cmdtab*, %struct.cmdtab** %4, align 8
  %240 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %239, i32 1
  store %struct.cmdtab* %240, %struct.cmdtab** %4, align 8
  br label %171

241:                                              ; preds = %171
  %242 = load i32, i32* %5, align 4
  %243 = load i32, i32* %8, align 4
  %244 = srem i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %241
  %247 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %248 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %247, i32 0, i32 2
  %249 = load %struct.TYPE_2__*, %struct.TYPE_2__** %248, align 8
  %250 = call i32 (%struct.TYPE_2__*, i8*, ...) @prompt_Printf(%struct.TYPE_2__* %249, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %251

251:                                              ; preds = %246, %241
  store i32 0, i32* %2, align 4
  br label %252

252:                                              ; preds = %251, %105, %91, %15
  %253 = load i32, i32* %2, align 4
  ret i32 %253
}

declare dso_local i32 @log_Printf(i32, i8*) #1

declare dso_local i32 @strcasecmp(i8*, i32) #1

declare dso_local i32 @prompt_Printf(%struct.TYPE_2__*, i8*, ...) #1

declare dso_local i8* @showcx(%struct.cmdtab*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
