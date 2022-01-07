; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_clone.c_guess_dir_name.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_clone.c_guess_dir_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"://\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".git\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c".bundle\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"No directory name could be guessed.\0APlease specify a directory on the command line\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%.*s.git\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32)* @guess_dir_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @guess_dir_name(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i8* @strstr(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i8*, i8** %4, align 8
  store i8* %25, i8** %8, align 8
  br label %29

26:                                               ; preds = %3
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 3
  store i8* %28, i8** %8, align 8
  br label %29

29:                                               ; preds = %26, %24
  %30 = load i8*, i8** %8, align 8
  store i8* %30, i8** %9, align 8
  br label %31

31:                                               ; preds = %52, %29
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ult i8* %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i8*, i8** %9, align 8
  %37 = load i8, i8* %36, align 1
  %38 = call i64 @is_dir_sep(i8 signext %37)
  %39 = icmp ne i64 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %35, %31
  %42 = phi i1 [ false, %31 ], [ %40, %35 ]
  br i1 %42, label %43, label %55

43:                                               ; preds = %41
  %44 = load i8*, i8** %9, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 64
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8* %50, i8** %8, align 8
  br label %51

51:                                               ; preds = %48, %43
  br label %52

52:                                               ; preds = %51
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %9, align 8
  br label %31

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %76, %55
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = icmp ult i8* %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 -1
  %63 = load i8, i8* %62, align 1
  %64 = call i64 @is_dir_sep(i8 signext %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 -1
  %69 = load i8, i8* %68, align 1
  %70 = call i64 @isspace(i8 signext %69)
  %71 = icmp ne i64 %70, 0
  br label %72

72:                                               ; preds = %66, %60
  %73 = phi i1 [ true, %60 ], [ %71, %66 ]
  br label %74

74:                                               ; preds = %72, %56
  %75 = phi i1 [ false, %56 ], [ %73, %72 ]
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 -1
  store i8* %78, i8** %7, align 8
  br label %56

79:                                               ; preds = %74
  %80 = load i8*, i8** %7, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = icmp sgt i64 %84, 5
  br i1 %85, label %86, label %116

86:                                               ; preds = %79
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 -5
  %89 = load i8, i8* %88, align 1
  %90 = call i64 @is_dir_sep(i8 signext %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %116

92:                                               ; preds = %86
  %93 = load i8*, i8** %7, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 -4
  %95 = call i32 @strncmp(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %116, label %97

97:                                               ; preds = %92
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 -5
  store i8* %99, i8** %7, align 8
  br label %100

100:                                              ; preds = %112, %97
  %101 = load i8*, i8** %8, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = icmp ult i8* %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 -1
  %107 = load i8, i8* %106, align 1
  %108 = call i64 @is_dir_sep(i8 signext %107)
  %109 = icmp ne i64 %108, 0
  br label %110

110:                                              ; preds = %104, %100
  %111 = phi i1 [ false, %100 ], [ %109, %104 ]
  br i1 %111, label %112, label %115

112:                                              ; preds = %110
  %113 = load i8*, i8** %7, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 -1
  store i8* %114, i8** %7, align 8
  br label %100

115:                                              ; preds = %110
  br label %116

116:                                              ; preds = %115, %92, %86, %79
  %117 = load i8*, i8** %8, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = ptrtoint i8* %118 to i64
  %121 = ptrtoint i8* %119 to i64
  %122 = sub i64 %120, %121
  %123 = trunc i64 %122 to i32
  %124 = call i32* @memchr(i8* %117, i8 signext 47, i32 %123)
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %173

126:                                              ; preds = %116
  %127 = load i8*, i8** %8, align 8
  %128 = load i8*, i8** %7, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = ptrtoint i8* %128 to i64
  %131 = ptrtoint i8* %129 to i64
  %132 = sub i64 %130, %131
  %133 = trunc i64 %132 to i32
  %134 = call i32* @memchr(i8* %127, i8 signext 58, i32 %133)
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %173

136:                                              ; preds = %126
  %137 = load i8*, i8** %7, align 8
  store i8* %137, i8** %9, align 8
  br label %138

138:                                              ; preds = %156, %136
  %139 = load i8*, i8** %8, align 8
  %140 = load i8*, i8** %9, align 8
  %141 = icmp ult i8* %139, %140
  br i1 %141, label %142, label %154

142:                                              ; preds = %138
  %143 = load i8*, i8** %9, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 -1
  %145 = load i8, i8* %144, align 1
  %146 = call i64 @isdigit(i8 signext %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %142
  %149 = load i8*, i8** %9, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 -1
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp ne i32 %152, 58
  br label %154

154:                                              ; preds = %148, %142, %138
  %155 = phi i1 [ false, %142 ], [ false, %138 ], [ %153, %148 ]
  br i1 %155, label %156, label %159

156:                                              ; preds = %154
  %157 = load i8*, i8** %9, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 -1
  store i8* %158, i8** %9, align 8
  br label %138

159:                                              ; preds = %154
  %160 = load i8*, i8** %8, align 8
  %161 = load i8*, i8** %9, align 8
  %162 = icmp ult i8* %160, %161
  br i1 %162, label %163, label %172

163:                                              ; preds = %159
  %164 = load i8*, i8** %9, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 -1
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 58
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = load i8*, i8** %9, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 -1
  store i8* %171, i8** %7, align 8
  br label %172

172:                                              ; preds = %169, %163, %159
  br label %173

173:                                              ; preds = %172, %126, %116
  %174 = load i8*, i8** %7, align 8
  store i8* %174, i8** %9, align 8
  br label %175

175:                                              ; preds = %193, %173
  %176 = load i8*, i8** %8, align 8
  %177 = load i8*, i8** %9, align 8
  %178 = icmp ult i8* %176, %177
  br i1 %178, label %179, label %191

179:                                              ; preds = %175
  %180 = load i8*, i8** %9, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 -1
  %182 = load i8, i8* %181, align 1
  %183 = call i64 @is_dir_sep(i8 signext %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %191, label %185

185:                                              ; preds = %179
  %186 = load i8*, i8** %9, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 -1
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp ne i32 %189, 58
  br label %191

191:                                              ; preds = %185, %179, %175
  %192 = phi i1 [ false, %179 ], [ false, %175 ], [ %190, %185 ]
  br i1 %192, label %193, label %196

193:                                              ; preds = %191
  %194 = load i8*, i8** %9, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 -1
  store i8* %195, i8** %9, align 8
  br label %175

196:                                              ; preds = %191
  %197 = load i8*, i8** %9, align 8
  store i8* %197, i8** %8, align 8
  %198 = load i8*, i8** %7, align 8
  %199 = load i8*, i8** %8, align 8
  %200 = ptrtoint i8* %198 to i64
  %201 = ptrtoint i8* %199 to i64
  %202 = sub i64 %200, %201
  store i64 %202, i64* %10, align 8
  %203 = load i8*, i8** %8, align 8
  %204 = load i32, i32* %5, align 4
  %205 = icmp ne i32 %204, 0
  %206 = zext i1 %205 to i64
  %207 = select i1 %205, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  %208 = call i32 @strip_suffix_mem(i8* %203, i64* %10, i8* %207)
  %209 = load i64, i64* %10, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %196
  %212 = load i64, i64* %10, align 8
  %213 = icmp eq i64 %212, 1
  br i1 %213, label %214, label %222

214:                                              ; preds = %211
  %215 = load i8*, i8** %8, align 8
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp eq i32 %217, 47
  br i1 %218, label %219, label %222

219:                                              ; preds = %214, %196
  %220 = call i32 @_(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0))
  %221 = call i32 @die(i32 %220)
  br label %222

222:                                              ; preds = %219, %214, %211
  %223 = load i32, i32* %6, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %222
  %226 = load i64, i64* %10, align 8
  %227 = trunc i64 %226 to i32
  %228 = load i8*, i8** %8, align 8
  %229 = call i8* @xstrfmt(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %227, i8* %228)
  store i8* %229, i8** %11, align 8
  br label %234

230:                                              ; preds = %222
  %231 = load i8*, i8** %8, align 8
  %232 = load i64, i64* %10, align 8
  %233 = call i8* @xstrndup(i8* %231, i64 %232)
  store i8* %233, i8** %11, align 8
  br label %234

234:                                              ; preds = %230, %225
  %235 = load i8*, i8** %11, align 8
  %236 = load i8, i8* %235, align 1
  %237 = icmp ne i8 %236, 0
  br i1 %237, label %238, label %281

238:                                              ; preds = %234
  %239 = load i8*, i8** %11, align 8
  store i8* %239, i8** %12, align 8
  store i32 1, i32* %13, align 4
  %240 = load i8*, i8** %11, align 8
  store i8* %240, i8** %7, align 8
  br label %241

241:                                              ; preds = %266, %238
  %242 = load i8*, i8** %7, align 8
  %243 = load i8, i8* %242, align 1
  %244 = icmp ne i8 %243, 0
  br i1 %244, label %245, label %269

245:                                              ; preds = %241
  %246 = load i8*, i8** %7, align 8
  %247 = load i8, i8* %246, align 1
  store i8 %247, i8* %14, align 1
  %248 = load i8, i8* %14, align 1
  %249 = zext i8 %248 to i32
  %250 = icmp slt i32 %249, 32
  br i1 %250, label %251, label %252

251:                                              ; preds = %245
  store i8 32, i8* %14, align 1
  br label %252

252:                                              ; preds = %251, %245
  %253 = load i8, i8* %14, align 1
  %254 = call i64 @isspace(i8 signext %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %252
  %257 = load i32, i32* %13, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %256
  br label %266

260:                                              ; preds = %256
  store i32 1, i32* %13, align 4
  br label %262

261:                                              ; preds = %252
  store i32 0, i32* %13, align 4
  br label %262

262:                                              ; preds = %261, %260
  %263 = load i8, i8* %14, align 1
  %264 = load i8*, i8** %12, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %265, i8** %12, align 8
  store i8 %263, i8* %264, align 1
  br label %266

266:                                              ; preds = %262, %259
  %267 = load i8*, i8** %7, align 8
  %268 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %268, i8** %7, align 8
  br label %241

269:                                              ; preds = %241
  %270 = load i8*, i8** %12, align 8
  store i8 0, i8* %270, align 1
  %271 = load i8*, i8** %12, align 8
  %272 = load i8*, i8** %11, align 8
  %273 = icmp ugt i8* %271, %272
  br i1 %273, label %274, label %280

274:                                              ; preds = %269
  %275 = load i32, i32* %13, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %274
  %278 = load i8*, i8** %12, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 -1
  store i8 0, i8* %279, align 1
  br label %280

280:                                              ; preds = %277, %274, %269
  br label %281

281:                                              ; preds = %280, %234
  %282 = load i8*, i8** %11, align 8
  ret i8* %282
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @is_dir_sep(i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32* @memchr(i8*, i8 signext, i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @strip_suffix_mem(i8*, i64*, i8*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @xstrfmt(i8*, i32, i8*) #1

declare dso_local i8* @xstrndup(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
