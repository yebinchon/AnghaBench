; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_log.c_log_SetLevel.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_log.c_log_SetLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, i8**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"local\00", align 1
@LogWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"set log local: Only available on the command line\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@LogMIN = common dso_local global i32 0, align 4
@LogMAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"%s: Invalid log value\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @log_SetLevel(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %10 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %11 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %14 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %18 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %17, i32 0, i32 2
  %19 = load i8**, i8*** %18, align 8
  %20 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %21 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %19, i64 %23
  store i8** %24, i8*** %8, align 8
  store i32 0, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %1
  %28 = load i8**, i8*** %8, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @strcasecmp(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %1
  store i32 0, i32* %7, align 4
  br label %47

34:                                               ; preds = %27
  %35 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %36 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = icmp eq %struct.TYPE_2__* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @LogWARN, align 4
  %41 = call i32 (i32, i8*, ...) @log_Printf(i32 %40, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %248

42:                                               ; preds = %34
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %6, align 4
  %45 = load i8**, i8*** %8, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i32 1
  store i8** %46, i8*** %8, align 8
  store i32 1, i32* %7, align 4
  br label %47

47:                                               ; preds = %42, %33
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %66, label %50

50:                                               ; preds = %47
  %51 = load i8**, i8*** %8, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 43
  br i1 %57, label %58, label %78

58:                                               ; preds = %50
  %59 = load i8**, i8*** %8, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 45
  br i1 %65, label %66, label %78

66:                                               ; preds = %58, %47
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %71 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %70, i32 0, i32 3
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = call i32 @log_DiscardAllLocal(i32* %73)
  br label %77

75:                                               ; preds = %66
  %76 = call i32 (...) @log_DiscardAll()
  br label %77

77:                                               ; preds = %75, %69
  br label %78

78:                                               ; preds = %77, %58, %50
  br label %79

79:                                               ; preds = %243, %181, %78
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %6, align 4
  %82 = icmp ne i32 %80, 0
  br i1 %82, label %83, label %246

83:                                               ; preds = %79
  %84 = load i8**, i8*** %8, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 43
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load i8**, i8*** %8, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 45
  br i1 %94, label %95, label %99

95:                                               ; preds = %89, %83
  %96 = load i8**, i8*** %8, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  br label %102

99:                                               ; preds = %89
  %100 = load i8**, i8*** %8, align 8
  %101 = load i8*, i8** %100, align 8
  br label %102

102:                                              ; preds = %99, %95
  %103 = phi i8* [ %98, %95 ], [ %101, %99 ]
  store i8* %103, i8** %9, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = call i64 @strcasecmp(i8* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %184

107:                                              ; preds = %102
  %108 = load i8**, i8*** %8, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 45
  br i1 %112, label %113, label %147

113:                                              ; preds = %107
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %133

116:                                              ; preds = %113
  %117 = load i32, i32* @LogMIN, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %129, %116
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @LogMAX, align 4
  %121 = icmp sle i32 %119, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %118
  %123 = load i32, i32* %4, align 4
  %124 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %125 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %124, i32 0, i32 3
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = call i32 @log_DiscardLocal(i32 %123, i32* %127)
  br label %129

129:                                              ; preds = %122
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %4, align 4
  br label %118

132:                                              ; preds = %118
  br label %146

133:                                              ; preds = %113
  %134 = load i32, i32* @LogMIN, align 4
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %142, %133
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @LogMAX, align 4
  %138 = icmp sle i32 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %135
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @log_Discard(i32 %140)
  br label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %4, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %4, align 4
  br label %135

145:                                              ; preds = %135
  br label %146

146:                                              ; preds = %145, %132
  br label %181

147:                                              ; preds = %107
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %167

150:                                              ; preds = %147
  %151 = load i32, i32* @LogMIN, align 4
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %163, %150
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* @LogMAX, align 4
  %155 = icmp sle i32 %153, %154
  br i1 %155, label %156, label %166

156:                                              ; preds = %152
  %157 = load i32, i32* %4, align 4
  %158 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %159 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %158, i32 0, i32 3
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = call i32 @log_KeepLocal(i32 %157, i32* %161)
  br label %163

163:                                              ; preds = %156
  %164 = load i32, i32* %4, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %4, align 4
  br label %152

166:                                              ; preds = %152
  br label %180

167:                                              ; preds = %147
  %168 = load i32, i32* @LogMIN, align 4
  store i32 %168, i32* %4, align 4
  br label %169

169:                                              ; preds = %176, %167
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* @LogMAX, align 4
  %172 = icmp sle i32 %170, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %169
  %174 = load i32, i32* %4, align 4
  %175 = call i32 @log_Keep(i32 %174)
  br label %176

176:                                              ; preds = %173
  %177 = load i32, i32* %4, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %4, align 4
  br label %169

179:                                              ; preds = %169
  br label %180

180:                                              ; preds = %179, %166
  br label %181

181:                                              ; preds = %180, %146
  %182 = load i8**, i8*** %8, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i32 1
  store i8** %183, i8*** %8, align 8
  br label %79

184:                                              ; preds = %102
  %185 = load i32, i32* @LogMIN, align 4
  store i32 %185, i32* %4, align 4
  br label %186

186:                                              ; preds = %232, %184
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* @LogMAX, align 4
  %189 = icmp sle i32 %187, %188
  br i1 %189, label %190, label %235

190:                                              ; preds = %186
  %191 = load i8*, i8** %9, align 8
  %192 = load i32, i32* %4, align 4
  %193 = call i8* @log_Name(i32 %192)
  %194 = call i64 @strcasecmp(i8* %191, i8* %193)
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %231

196:                                              ; preds = %190
  %197 = load i8**, i8*** %8, align 8
  %198 = load i8*, i8** %197, align 8
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp eq i32 %200, 45
  br i1 %201, label %202, label %216

202:                                              ; preds = %196
  %203 = load i32, i32* %7, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %202
  %206 = load i32, i32* %4, align 4
  %207 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %208 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %207, i32 0, i32 3
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  %211 = call i32 @log_DiscardLocal(i32 %206, i32* %210)
  br label %215

212:                                              ; preds = %202
  %213 = load i32, i32* %4, align 4
  %214 = call i32 @log_Discard(i32 %213)
  br label %215

215:                                              ; preds = %212, %205
  br label %230

216:                                              ; preds = %196
  %217 = load i32, i32* %7, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %216
  %220 = load i32, i32* %4, align 4
  %221 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %222 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %221, i32 0, i32 3
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 0
  %225 = call i32 @log_KeepLocal(i32 %220, i32* %224)
  br label %229

226:                                              ; preds = %216
  %227 = load i32, i32* %4, align 4
  %228 = call i32 @log_Keep(i32 %227)
  br label %229

229:                                              ; preds = %226, %219
  br label %230

230:                                              ; preds = %229, %215
  br label %235

231:                                              ; preds = %190
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %4, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %4, align 4
  br label %186

235:                                              ; preds = %230, %186
  %236 = load i32, i32* %4, align 4
  %237 = load i32, i32* @LogMAX, align 4
  %238 = icmp sgt i32 %236, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %235
  %240 = load i32, i32* @LogWARN, align 4
  %241 = load i8*, i8** %9, align 8
  %242 = call i32 (i32, i8*, ...) @log_Printf(i32 %240, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %241)
  store i32 -1, i32* %5, align 4
  br label %243

243:                                              ; preds = %239, %235
  %244 = load i8**, i8*** %8, align 8
  %245 = getelementptr inbounds i8*, i8** %244, i32 1
  store i8** %245, i8*** %8, align 8
  br label %79

246:                                              ; preds = %79
  %247 = load i32, i32* %5, align 4
  store i32 %247, i32* %2, align 4
  br label %248

248:                                              ; preds = %246, %39
  %249 = load i32, i32* %2, align 4
  ret i32 %249
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @log_DiscardAllLocal(i32*) #1

declare dso_local i32 @log_DiscardAll(...) #1

declare dso_local i32 @log_DiscardLocal(i32, i32*) #1

declare dso_local i32 @log_Discard(i32) #1

declare dso_local i32 @log_KeepLocal(i32, i32*) #1

declare dso_local i32 @log_Keep(i32) #1

declare dso_local i8* @log_Name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
