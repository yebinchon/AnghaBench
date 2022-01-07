; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fmtree/extr_spec.c_mtree_readspec.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fmtree/extr_spec.c_mtree_readspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32 }

@lineno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"line %d too long\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\0A\09 \00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"line %d: missing field\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"unset\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"line %d: slash character in file name\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@F_DIR = common dso_local global i64 0, align 8
@F_DONE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"line %d: no parent node\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"?*[\00", align 1
@F_MAGIC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"filename %s is ill-encoded\00", align 1
@MAGIC = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @mtree_readspec(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2048 x i8], align 16
  store i32* %0, i32** %2, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  %11 = call i32 @bzero(%struct.TYPE_7__* %6, i32 56)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* @lineno, align 4
  br label %12

12:                                               ; preds = %231, %1
  %13 = getelementptr inbounds [2048 x i8], [2048 x i8]* %10, i64 0, i64 0
  %14 = load i32*, i32** %2, align 8
  %15 = call i64 @fgets(i8* %13, i32 2048, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %235

17:                                               ; preds = %12
  %18 = getelementptr inbounds [2048 x i8], [2048 x i8]* %10, i64 0, i64 0
  %19 = load i8, i8* %18, align 16
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %231

23:                                               ; preds = %17
  %24 = getelementptr inbounds [2048 x i8], [2048 x i8]* %10, i64 0, i64 0
  %25 = call i8* @strchr(i8* %24, i8 signext 10)
  store i8* %25, i8** %5, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @lineno, align 4
  %29 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 -1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 92
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 -1
  store i8* %38, i8** %5, align 8
  store i32 1, i32* %9, align 4
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i8*, i8** %5, align 8
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds [2048 x i8], [2048 x i8]* %10, i64 0, i64 0
  store i8* %41, i8** %5, align 8
  br label %42

42:                                               ; preds = %55, %39
  %43 = load i8*, i8** %5, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i8*, i8** %5, align 8
  %49 = load i8, i8* %48, align 1
  %50 = call i64 @isspace(i8 signext %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %47, %42
  %53 = phi i1 [ false, %42 ], [ %51, %47 ]
  br i1 %53, label %54, label %58

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %54
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %5, align 8
  br label %42

58:                                               ; preds = %52
  %59 = load i8*, i8** %5, align 8
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i8*, i8** %5, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 35
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %58
  br label %231

68:                                               ; preds = %62
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i8*, i8** %5, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = call i32 @set(i8* %72, %struct.TYPE_7__* %73)
  br label %231

75:                                               ; preds = %68
  %76 = load i8*, i8** %5, align 8
  %77 = call i8* @strtok(i8* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %77, i8** %5, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* @lineno, align 4
  %81 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %79, %75
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 47
  br i1 %87, label %88, label %110

88:                                               ; preds = %82
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  switch i32 %92, label %109 [
    i32 115, label %93
    i32 117, label %101
  ]

93:                                               ; preds = %88
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = call i64 @strcmp(i8* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %109

99:                                               ; preds = %93
  %100 = call i32 @set(i8* null, %struct.TYPE_7__* %6)
  br label %231

101:                                              ; preds = %88
  %102 = load i8*, i8** %5, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = call i64 @strcmp(i8* %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %109

107:                                              ; preds = %101
  %108 = call i32 @unset(i32* null, %struct.TYPE_7__* %6)
  br label %231

109:                                              ; preds = %88, %106, %98
  br label %110

110:                                              ; preds = %109, %82
  %111 = load i8*, i8** %5, align 8
  %112 = call i8* @strchr(i8* %111, i8 signext 47)
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i32, i32* @lineno, align 4
  %116 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %114, %110
  %118 = load i8*, i8** %5, align 8
  %119 = call i64 @strcmp(i8* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %156, label %121

121:                                              ; preds = %117
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %123 = icmp ne %struct.TYPE_7__* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  br label %153

125:                                              ; preds = %121
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @F_DIR, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %138, label %131

131:                                              ; preds = %125
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @F_DONE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %131, %125
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %141 = icmp eq %struct.TYPE_7__* %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  br label %153

143:                                              ; preds = %138
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 4
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  store %struct.TYPE_7__* %146, %struct.TYPE_7__** %4, align 8
  br label %147

147:                                              ; preds = %143, %131
  %148 = load i32, i32* @F_DONE, align 4
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  br label %231

153:                                              ; preds = %142, %124
  %154 = load i32, i32* @lineno, align 4
  %155 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %153, %117
  %157 = load i8*, i8** %5, align 8
  %158 = call i64 @strlen(i8* %157)
  %159 = add i64 56, %158
  %160 = call %struct.TYPE_7__* @calloc(i32 1, i64 %159)
  store %struct.TYPE_7__* %160, %struct.TYPE_7__** %3, align 8
  %161 = icmp eq %struct.TYPE_7__* %160, null
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %156
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %166 = bitcast %struct.TYPE_7__* %165 to i8*
  %167 = bitcast %struct.TYPE_7__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %166, i8* align 8 %167, i64 56, i1 false)
  %168 = load i8*, i8** %5, align 8
  %169 = call i64 @strpbrk(i8* %168, i32 ptrtoint ([4 x i8]* @.str.9 to i32))
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %164
  %172 = load i32, i32* @F_MAGIC, align 4
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %171, %164
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 8
  %181 = load i8*, i8** %5, align 8
  %182 = call i32 @strunvis(i32 %180, i8* %181)
  %183 = icmp eq i32 %182, -1
  br i1 %183, label %184, label %187

184:                                              ; preds = %177
  %185 = load i8*, i8** %5, align 8
  %186 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8* %185)
  br label %187

187:                                              ; preds = %184, %177
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %189 = call i32 @set(i8* null, %struct.TYPE_7__* %188)
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %191 = icmp ne %struct.TYPE_7__* %190, null
  br i1 %191, label %197, label %192

192:                                              ; preds = %187
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_7__* %193, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %193, %struct.TYPE_7__** %4, align 8
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 4
  store %struct.TYPE_7__* %194, %struct.TYPE_7__** %196, align 8
  br label %230

197:                                              ; preds = %187
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @F_DIR, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %217

203:                                              ; preds = %197
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @F_DONE, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %217, label %210

210:                                              ; preds = %203
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 4
  store %struct.TYPE_7__* %211, %struct.TYPE_7__** %213, align 8
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 5
  store %struct.TYPE_7__* %214, %struct.TYPE_7__** %216, align 8
  store %struct.TYPE_7__* %214, %struct.TYPE_7__** %4, align 8
  br label %229

217:                                              ; preds = %203, %197
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 4
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %219, align 8
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 4
  store %struct.TYPE_7__* %220, %struct.TYPE_7__** %222, align 8
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 3
  store %struct.TYPE_7__* %223, %struct.TYPE_7__** %225, align 8
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 2
  store %struct.TYPE_7__* %226, %struct.TYPE_7__** %228, align 8
  store %struct.TYPE_7__* %226, %struct.TYPE_7__** %4, align 8
  br label %229

229:                                              ; preds = %217, %210
  br label %230

230:                                              ; preds = %229, %192
  br label %231

231:                                              ; preds = %230, %147, %107, %99, %71, %67, %22
  %232 = load i32, i32* @lineno, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* @lineno, align 4
  %234 = load i32, i32* %9, align 4
  store i32 %234, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %12

235:                                              ; preds = %12
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  ret %struct.TYPE_7__* %236
}

declare dso_local i32 @bzero(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @set(i8*, %struct.TYPE_7__*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @unset(i32*, %struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @calloc(i32, i64) #1

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strpbrk(i8*, i32) #1

declare dso_local i32 @strunvis(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
