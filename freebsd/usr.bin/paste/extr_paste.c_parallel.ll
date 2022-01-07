; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/paste/extr_paste.c_parallel.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/paste/extr_paste.c_parallel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32*, %struct.TYPE_3__* }

@stdin = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@delim = common dso_local global i8* null, align 8
@delimcnt = common dso_local global i32 0, align 4
@WEOF = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @parallel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parallel(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  store i32 0, i32* %4, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %9, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %8, align 8
  br label %12

12:                                               ; preds = %65, %1
  %13 = load i8**, i8*** %2, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %70

16:                                               ; preds = %12
  %17 = call %struct.TYPE_3__* @malloc(i32 32)
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %3, align 8
  %18 = icmp eq %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 (i32, i8*, ...) @err(i32 1, i8* null)
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 45
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i32*, i32** @stdin, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i32* %33, i32** %35, align 8
  br label %46

36:                                               ; preds = %27, %21
  %37 = load i8*, i8** %7, align 8
  %38 = call i32* @fopen(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store i32* %38, i32** %40, align 8
  %41 = icmp ne i32* %38, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %42, %36
  br label %46

46:                                               ; preds = %45, %32
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %48, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %56 = icmp ne %struct.TYPE_3__* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %46
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  store %struct.TYPE_3__* %58, %struct.TYPE_3__** %9, align 8
  store %struct.TYPE_3__* %58, %struct.TYPE_3__** %8, align 8
  br label %64

59:                                               ; preds = %46
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  store %struct.TYPE_3__* %60, %struct.TYPE_3__** %62, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  store %struct.TYPE_3__* %63, %struct.TYPE_3__** %9, align 8
  br label %64

64:                                               ; preds = %59, %57
  br label %65

65:                                               ; preds = %64
  %66 = load i8**, i8*** %2, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i32 1
  store i8** %67, i8*** %2, align 8
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %12

70:                                               ; preds = %12
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %228, %70
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %229

75:                                               ; preds = %72
  store i32 0, i32* %11, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  store %struct.TYPE_3__* %76, %struct.TYPE_3__** %3, align 8
  br label %77

77:                                               ; preds = %219, %75
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %79 = icmp ne %struct.TYPE_3__* %78, null
  br i1 %79, label %80, label %223

80:                                               ; preds = %77
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %110, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %109

88:                                               ; preds = %85
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %88
  %94 = load i8*, i8** @delim, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %97, 1
  %99 = load i32, i32* @delimcnt, align 4
  %100 = srem i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %94, i64 %101
  %103 = load i8, i8* %102, align 1
  store i8 %103, i8* %6, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %93
  %107 = load i8, i8* %6, align 1
  %108 = call i32 @putwchar(i8 signext %107)
  br label %109

109:                                              ; preds = %106, %93, %88, %85
  br label %219

110:                                              ; preds = %80
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = call signext i8 @getwc(i32* %113)
  store i8 %114, i8* %5, align 1
  %115 = sext i8 %114 to i32
  %116 = load i8, i8* @WEOF, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %151

119:                                              ; preds = %110
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %119
  br label %223

124:                                              ; preds = %119
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  store i32* null, i32** %126, align 8
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %150

129:                                              ; preds = %124
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %129
  %135 = load i8*, i8** @delim, align 8
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sub nsw i32 %138, 1
  %140 = load i32, i32* @delimcnt, align 4
  %141 = srem i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %135, i64 %142
  %144 = load i8, i8* %143, align 1
  store i8 %144, i8* %6, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %134
  %148 = load i8, i8* %6, align 1
  %149 = call i32 @putwchar(i8 signext %148)
  br label %150

150:                                              ; preds = %147, %134, %129, %124
  br label %219

151:                                              ; preds = %110
  %152 = load i32, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %178, label %154

154:                                              ; preds = %151
  store i32 1, i32* %11, align 4
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %174, %154
  %156 = load i32, i32* %4, align 4
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp slt i32 %156, %159
  br i1 %160, label %161, label %177

161:                                              ; preds = %155
  %162 = load i8*, i8** @delim, align 8
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* @delimcnt, align 4
  %165 = srem i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %162, i64 %166
  %168 = load i8, i8* %167, align 1
  store i8 %168, i8* %6, align 1
  %169 = icmp ne i8 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %161
  %171 = load i8, i8* %6, align 1
  %172 = call i32 @putwchar(i8 signext %171)
  br label %173

173:                                              ; preds = %170, %161
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %4, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %4, align 4
  br label %155

177:                                              ; preds = %155
  br label %194

178:                                              ; preds = %151
  %179 = load i8*, i8** @delim, align 8
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = sub nsw i32 %182, 1
  %184 = load i32, i32* @delimcnt, align 4
  %185 = srem i32 %183, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %179, i64 %186
  %188 = load i8, i8* %187, align 1
  store i8 %188, i8* %6, align 1
  %189 = icmp ne i8 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %178
  %191 = load i8, i8* %6, align 1
  %192 = call i32 @putwchar(i8 signext %191)
  br label %193

193:                                              ; preds = %190, %178
  br label %194

194:                                              ; preds = %193, %177
  %195 = load i8, i8* %5, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp eq i32 %196, 10
  br i1 %197, label %198, label %199

198:                                              ; preds = %194
  br label %219

199:                                              ; preds = %194
  br label %200

200:                                              ; preds = %216, %199
  %201 = load i8, i8* %5, align 1
  %202 = call i32 @putwchar(i8 signext %201)
  br label %203

203:                                              ; preds = %200
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = call signext i8 @getwc(i32* %206)
  store i8 %207, i8* %5, align 1
  %208 = sext i8 %207 to i32
  %209 = load i8, i8* @WEOF, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp ne i32 %208, %210
  br i1 %211, label %212, label %216

212:                                              ; preds = %203
  %213 = load i8, i8* %5, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp ne i32 %214, 10
  br label %216

216:                                              ; preds = %212, %203
  %217 = phi i1 [ false, %203 ], [ %215, %212 ]
  br i1 %217, label %200, label %218

218:                                              ; preds = %216
  br label %219

219:                                              ; preds = %218, %198, %150, %109
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 3
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %221, align 8
  store %struct.TYPE_3__* %222, %struct.TYPE_3__** %3, align 8
  br label %77

223:                                              ; preds = %123, %77
  %224 = load i32, i32* %11, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %223
  %227 = call i32 @putwchar(i8 signext 10)
  br label %228

228:                                              ; preds = %226, %223
  br label %72

229:                                              ; preds = %72
  ret i32 0
}

declare dso_local %struct.TYPE_3__* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @putwchar(i8 signext) #1

declare dso_local signext i8 @getwc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
