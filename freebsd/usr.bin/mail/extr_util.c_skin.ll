; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_util.c_skin.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_util.c_skin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @skin(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %245

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i32* @strchr(i8* %15, i8 signext 40)
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i8*, i8** %3, align 8
  %20 = call i32* @strchr(i8* %19, i8 signext 60)
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i8*, i8** %3, align 8
  %24 = call i32* @strchr(i8* %23, i8 signext 32)
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i8*, i8** %3, align 8
  store i8* %27, i8** %2, align 8
  br label %245

28:                                               ; preds = %22, %18, %14
  %29 = load i8*, i8** %3, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = add nsw i64 %30, 1
  %32 = call i8* @malloc(i64 %31)
  store i8* %32, i8** %4, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %28
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %37 = load i8*, i8** %4, align 8
  store i8* %37, i8** %5, align 8
  %38 = load i8*, i8** %3, align 8
  store i8* %38, i8** %6, align 8
  %39 = load i8*, i8** %5, align 8
  store i8* %39, i8** %7, align 8
  br label %40

40:                                               ; preds = %232, %36
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %6, align 8
  %43 = load i8, i8* %41, align 1
  %44 = sext i8 %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %233

46:                                               ; preds = %40
  %47 = load i32, i32* %8, align 4
  switch i32 %47, label %187 [
    i32 40, label %48
    i32 34, label %51
    i32 32, label %86
    i32 60, label %129
    i32 62, label %133
  ]

48:                                               ; preds = %46
  %49 = load i8*, i8** %6, align 8
  %50 = call i8* @skip_comment(i8* %49)
  store i8* %50, i8** %6, align 8
  store i32 0, i32* %10, align 4
  br label %232

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %84, %51
  %53 = load i8*, i8** %6, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  store i32 %55, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %85

57:                                               ; preds = %52
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 34
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %85

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 92
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %7, align 8
  store i8 %68, i8* %69, align 1
  br label %84

71:                                               ; preds = %63
  %72 = load i8*, i8** %6, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  store i32 %74, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load i32, i32* %8, align 4
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %7, align 8
  store i8 %78, i8* %79, align 1
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %6, align 8
  br label %83

83:                                               ; preds = %76, %71
  br label %84

84:                                               ; preds = %83, %66
  br label %52

85:                                               ; preds = %62, %52
  store i32 0, i32* %10, align 4
  br label %232

86:                                               ; preds = %46
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 97
  br i1 %91, label %92, label %109

92:                                               ; preds = %86
  %93 = load i8*, i8** %6, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 116
  br i1 %97, label %98, label %109

98:                                               ; preds = %92
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 2
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 32
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load i8*, i8** %6, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 3
  store i8* %106, i8** %6, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %7, align 8
  store i8 64, i8* %107, align 1
  br label %128

109:                                              ; preds = %98, %92, %86
  %110 = load i8*, i8** %6, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 64
  br i1 %114, label %115, label %126

115:                                              ; preds = %109
  %116 = load i8*, i8** %6, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 32
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 2
  store i8* %123, i8** %6, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %7, align 8
  store i8 64, i8* %124, align 1
  br label %127

126:                                              ; preds = %115, %109
  store i32 1, i32* %10, align 4
  br label %127

127:                                              ; preds = %126, %121
  br label %128

128:                                              ; preds = %127, %104
  br label %232

129:                                              ; preds = %46
  %130 = load i8*, i8** %5, align 8
  store i8* %130, i8** %7, align 8
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %232

133:                                              ; preds = %46
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %186

136:                                              ; preds = %133
  store i32 0, i32* %9, align 4
  br label %137

137:                                              ; preds = %184, %136
  %138 = load i8*, i8** %6, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  store i32 %140, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 44
  br label %145

145:                                              ; preds = %142, %137
  %146 = phi i1 [ false, %137 ], [ %144, %142 ]
  br i1 %146, label %147, label %185

147:                                              ; preds = %145
  %148 = load i8*, i8** %6, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %6, align 8
  %150 = load i32, i32* %8, align 4
  %151 = icmp eq i32 %150, 40
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load i8*, i8** %6, align 8
  %154 = call i8* @skip_comment(i8* %153)
  store i8* %154, i8** %6, align 8
  br label %184

155:                                              ; preds = %147
  %156 = load i32, i32* %8, align 4
  %157 = icmp eq i32 %156, 34
  br i1 %157, label %158, label %183

158:                                              ; preds = %155
  br label %159

159:                                              ; preds = %181, %158
  %160 = load i8*, i8** %6, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  store i32 %162, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %182

164:                                              ; preds = %159
  %165 = load i8*, i8** %6, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %6, align 8
  %167 = load i32, i32* %8, align 4
  %168 = icmp eq i32 %167, 34
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  br label %182

170:                                              ; preds = %164
  %171 = load i32, i32* %8, align 4
  %172 = icmp eq i32 %171, 92
  br i1 %172, label %173, label %181

173:                                              ; preds = %170
  %174 = load i8*, i8** %6, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = load i8*, i8** %6, align 8
  %180 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %180, i8** %6, align 8
  br label %181

181:                                              ; preds = %178, %173, %170
  br label %159

182:                                              ; preds = %169, %159
  br label %183

183:                                              ; preds = %182, %155
  br label %184

184:                                              ; preds = %183, %152
  br label %137

185:                                              ; preds = %145
  store i32 0, i32* %10, align 4
  br label %232

186:                                              ; preds = %133
  br label %187

187:                                              ; preds = %46, %186
  %188 = load i32, i32* %10, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  store i32 0, i32* %10, align 4
  %191 = load i8*, i8** %7, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %7, align 8
  store i8 32, i8* %191, align 1
  br label %193

193:                                              ; preds = %190, %187
  %194 = load i32, i32* %8, align 4
  %195 = trunc i32 %194 to i8
  %196 = load i8*, i8** %7, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %7, align 8
  store i8 %195, i8* %196, align 1
  %198 = load i32, i32* %8, align 4
  %199 = icmp eq i32 %198, 44
  br i1 %199, label %200, label %231

200:                                              ; preds = %193
  %201 = load i32, i32* %9, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %231, label %203

203:                                              ; preds = %200
  %204 = load i8*, i8** %6, align 8
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 32
  br i1 %207, label %218, label %208

208:                                              ; preds = %203
  %209 = load i8*, i8** %6, align 8
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp eq i32 %211, 34
  br i1 %212, label %218, label %213

213:                                              ; preds = %208
  %214 = load i8*, i8** %6, align 8
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp eq i32 %216, 60
  br i1 %217, label %218, label %231

218:                                              ; preds = %213, %208, %203
  %219 = load i8*, i8** %7, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %220, i8** %7, align 8
  store i8 32, i8* %219, align 1
  br label %221

221:                                              ; preds = %226, %218
  %222 = load i8*, i8** %6, align 8
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %224, 32
  br i1 %225, label %226, label %229

226:                                              ; preds = %221
  %227 = load i8*, i8** %6, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %6, align 8
  br label %221

229:                                              ; preds = %221
  store i32 0, i32* %10, align 4
  %230 = load i8*, i8** %7, align 8
  store i8* %230, i8** %5, align 8
  br label %231

231:                                              ; preds = %229, %213, %200, %193
  br label %232

232:                                              ; preds = %231, %185, %129, %128, %85, %48
  br label %40

233:                                              ; preds = %40
  %234 = load i8*, i8** %7, align 8
  store i8 0, i8* %234, align 1
  %235 = load i8*, i8** %4, align 8
  %236 = load i8*, i8** %4, align 8
  %237 = call i64 @strlen(i8* %236)
  %238 = add nsw i64 %237, 1
  %239 = call i8* @realloc(i8* %235, i64 %238)
  store i8* %239, i8** %6, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %241, label %243

241:                                              ; preds = %233
  %242 = load i8*, i8** %6, align 8
  store i8* %242, i8** %4, align 8
  br label %243

243:                                              ; preds = %241, %233
  %244 = load i8*, i8** %4, align 8
  store i8* %244, i8** %2, align 8
  br label %245

245:                                              ; preds = %243, %26, %13
  %246 = load i8*, i8** %2, align 8
  ret i8* %246
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @skip_comment(i8*) #1

declare dso_local i8* @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
