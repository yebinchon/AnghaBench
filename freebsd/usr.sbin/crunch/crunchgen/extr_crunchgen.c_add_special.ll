; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchgen/extr_crunchgen.c_add_special.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchgen/extr_crunchgen.c_add_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@reading_cache = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"%s:%d: no prog %s previously declared, skipping special\00", align 1
@curfilename = common dso_local global i32 0, align 4
@linenum = common dso_local global i32 0, align 4
@goterror = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ident\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"srcdir\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"objdir\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"objs\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"objpaths\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"keep\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"objvar\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"buildopts\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"lib\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"%s:%d: bad parameter name `%s', skipping line\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"%s:%d: too %s arguments, expected \22special %s %s <string>\22\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"few\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"many\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_special(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = load i8**, i8*** %4, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 1
  %9 = load i8*, i8** %8, align 8
  %10 = call %struct.TYPE_3__* @find_prog(i8* %9)
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %6, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = icmp eq %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load i64, i64* @reading_cache, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %270

17:                                               ; preds = %13
  %18 = load i32, i32* @curfilename, align 4
  %19 = load i32, i32* @linenum, align 4
  %20 = load i8**, i8*** %4, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (i8*, i32, i32, i8*, ...) @warnx(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i8* %22)
  store i32 1, i32* @goterror, align 4
  br label %270

24:                                               ; preds = %2
  %25 = load i8**, i8*** %4, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 2
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 4
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %256

34:                                               ; preds = %30
  %35 = load i8**, i8*** %4, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 3
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @strdup(i8* %37)
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 8
  store i32* %39, i32** %41, align 8
  %42 = icmp eq i32* %39, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = call i32 (...) @out_of_memory()
  br label %45

45:                                               ; preds = %43, %34
  br label %255

46:                                               ; preds = %24
  %47 = load i8**, i8*** %4, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 2
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %68, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 4
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %256

56:                                               ; preds = %52
  %57 = load i8**, i8*** %4, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 3
  %59 = load i8*, i8** %58, align 8
  %60 = call i8* @strdup(i8* %59)
  %61 = bitcast i8* %60 to i32*
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 7
  store i32* %61, i32** %63, align 8
  %64 = icmp eq i32* %61, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = call i32 (...) @out_of_memory()
  br label %67

67:                                               ; preds = %65, %56
  br label %254

68:                                               ; preds = %46
  %69 = load i8**, i8*** %4, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 2
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %3, align 4
  %76 = icmp ne i32 %75, 4
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %256

78:                                               ; preds = %74
  %79 = load i8**, i8*** %4, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 3
  %81 = load i8*, i8** %80, align 8
  %82 = call i8* @strdup(i8* %81)
  %83 = bitcast i8* %82 to i32*
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 6
  store i32* %83, i32** %85, align 8
  %86 = icmp eq i32* %83, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = call i32 (...) @out_of_memory()
  br label %89

89:                                               ; preds = %87, %78
  br label %253

90:                                               ; preds = %68
  %91 = load i8**, i8*** %4, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 2
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @strcmp(i8* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %116, label %96

96:                                               ; preds = %90
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 5
  store i32* null, i32** %98, align 8
  store i32 3, i32* %5, align 4
  br label %99

99:                                               ; preds = %112, %96
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %3, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %99
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 5
  %106 = load i8**, i8*** %4, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @add_string(i32** %105, i8* %110)
  br label %112

112:                                              ; preds = %103
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  br label %99

115:                                              ; preds = %99
  br label %252

116:                                              ; preds = %90
  %117 = load i8**, i8*** %4, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 2
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @strcmp(i8* %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %142, label %122

122:                                              ; preds = %116
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 4
  store i32* null, i32** %124, align 8
  store i32 3, i32* %5, align 4
  br label %125

125:                                              ; preds = %138, %122
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %3, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %125
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 4
  %132 = load i8**, i8*** %4, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @add_string(i32** %131, i8* %136)
  br label %138

138:                                              ; preds = %129
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %5, align 4
  br label %125

141:                                              ; preds = %125
  br label %251

142:                                              ; preds = %116
  %143 = load i8**, i8*** %4, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 2
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @strcmp(i8* %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %168, label %148

148:                                              ; preds = %142
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 3
  store i32* null, i32** %150, align 8
  store i32 3, i32* %5, align 4
  br label %151

151:                                              ; preds = %164, %148
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* %3, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %167

155:                                              ; preds = %151
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 3
  %158 = load i8**, i8*** %4, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %158, i64 %160
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @add_string(i32** %157, i8* %162)
  br label %164

164:                                              ; preds = %155
  %165 = load i32, i32* %5, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %5, align 4
  br label %151

167:                                              ; preds = %151
  br label %250

168:                                              ; preds = %142
  %169 = load i8**, i8*** %4, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 2
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @strcmp(i8* %171, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %190, label %174

174:                                              ; preds = %168
  %175 = load i32, i32* %3, align 4
  %176 = icmp ne i32 %175, 4
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  br label %256

178:                                              ; preds = %174
  %179 = load i8**, i8*** %4, align 8
  %180 = getelementptr inbounds i8*, i8** %179, i64 3
  %181 = load i8*, i8** %180, align 8
  %182 = call i8* @strdup(i8* %181)
  %183 = bitcast i8* %182 to i32*
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 2
  store i32* %183, i32** %185, align 8
  %186 = icmp eq i32* %183, null
  br i1 %186, label %187, label %189

187:                                              ; preds = %178
  %188 = call i32 (...) @out_of_memory()
  br label %189

189:                                              ; preds = %187, %178
  br label %249

190:                                              ; preds = %168
  %191 = load i8**, i8*** %4, align 8
  %192 = getelementptr inbounds i8*, i8** %191, i64 2
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @strcmp(i8* %193, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %216, label %196

196:                                              ; preds = %190
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 1
  store i32* null, i32** %198, align 8
  store i32 3, i32* %5, align 4
  br label %199

199:                                              ; preds = %212, %196
  %200 = load i32, i32* %5, align 4
  %201 = load i32, i32* %3, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %215

203:                                              ; preds = %199
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 1
  %206 = load i8**, i8*** %4, align 8
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8*, i8** %206, i64 %208
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @add_string(i32** %205, i8* %210)
  br label %212

212:                                              ; preds = %203
  %213 = load i32, i32* %5, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %5, align 4
  br label %199

215:                                              ; preds = %199
  br label %248

216:                                              ; preds = %190
  %217 = load i8**, i8*** %4, align 8
  %218 = getelementptr inbounds i8*, i8** %217, i64 2
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 @strcmp(i8* %219, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %240, label %222

222:                                              ; preds = %216
  store i32 3, i32* %5, align 4
  br label %223

223:                                              ; preds = %236, %222
  %224 = load i32, i32* %5, align 4
  %225 = load i32, i32* %3, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %239

227:                                              ; preds = %223
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 0
  %230 = load i8**, i8*** %4, align 8
  %231 = load i32, i32* %5, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8*, i8** %230, i64 %232
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 @add_string(i32** %229, i8* %234)
  br label %236

236:                                              ; preds = %227
  %237 = load i32, i32* %5, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %5, align 4
  br label %223

239:                                              ; preds = %223
  br label %247

240:                                              ; preds = %216
  %241 = load i32, i32* @curfilename, align 4
  %242 = load i32, i32* @linenum, align 4
  %243 = load i8**, i8*** %4, align 8
  %244 = getelementptr inbounds i8*, i8** %243, i64 2
  %245 = load i8*, i8** %244, align 8
  %246 = call i32 (i8*, i32, i32, i8*, ...) @warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i32 %241, i32 %242, i8* %245)
  store i32 1, i32* @goterror, align 4
  br label %247

247:                                              ; preds = %240, %239
  br label %248

248:                                              ; preds = %247, %215
  br label %249

249:                                              ; preds = %248, %189
  br label %250

250:                                              ; preds = %249, %167
  br label %251

251:                                              ; preds = %250, %141
  br label %252

252:                                              ; preds = %251, %115
  br label %253

253:                                              ; preds = %252, %89
  br label %254

254:                                              ; preds = %253, %67
  br label %255

255:                                              ; preds = %254, %45
  br label %270

256:                                              ; preds = %177, %77, %55, %33
  %257 = load i32, i32* @curfilename, align 4
  %258 = load i32, i32* @linenum, align 4
  %259 = load i32, i32* %3, align 4
  %260 = icmp slt i32 %259, 4
  %261 = zext i1 %260 to i64
  %262 = select i1 %260, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)
  %263 = load i8**, i8*** %4, align 8
  %264 = getelementptr inbounds i8*, i8** %263, i64 1
  %265 = load i8*, i8** %264, align 8
  %266 = load i8**, i8*** %4, align 8
  %267 = getelementptr inbounds i8*, i8** %266, i64 2
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 (i8*, i32, i32, i8*, ...) @warnx(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i64 0, i64 0), i32 %257, i32 %258, i8* %262, i8* %265, i8* %268)
  store i32 1, i32* @goterror, align 4
  br label %270

270:                                              ; preds = %256, %255, %17, %16
  ret void
}

declare dso_local %struct.TYPE_3__* @find_prog(i8*) #1

declare dso_local i32 @warnx(i8*, i32, i32, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @out_of_memory(...) #1

declare dso_local i32 @add_string(i32**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
