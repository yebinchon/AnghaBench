; ModuleID = '/home/carl/AnghaBench/git/compat/extr_inet_ntop.c_inet_ntop6.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_inet_ntop.c_inet_ntop6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }

@NS_IN6ADDRSZ = common dso_local global i32 0, align 4
@NS_INT16SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i64)* @inet_ntop6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @inet_ntop6(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [46 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca %struct.anon, align 4
  %11 = alloca %struct.anon, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %17 = load i32, i32* @NS_INT16SZ, align 4
  %18 = sdiv i32 %16, %17
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = mul nuw i64 4, %19
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memset(i32* %21, i8 signext 0, i32 %23)
  store i32 0, i32* %14, align 4
  br label %25

25:                                               ; preds = %46, %3
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %14, align 4
  %36 = srem i32 %35, 2
  %37 = sub nsw i32 1, %36
  %38 = shl i32 %37, 3
  %39 = shl i32 %34, %38
  %40 = load i32, i32* %14, align 4
  %41 = sdiv i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %21, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %39
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %29
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %14, align 4
  br label %25

49:                                               ; preds = %25
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0
  store i32 -1, i32* %50, align 4
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  store i32 0, i32* %51, align 4
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  store i32 -1, i32* %52, align 4
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1
  store i32 0, i32* %53, align 4
  store i32 0, i32* %14, align 4
  br label %54

54:                                               ; preds = %100, %49
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %57 = load i32, i32* @NS_INT16SZ, align 4
  %58 = sdiv i32 %56, %57
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %103

60:                                               ; preds = %54
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %21, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* %14, align 4
  %72 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1
  store i32 1, i32* %73, align 4
  br label %78

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %74, %70
  br label %99

79:                                               ; preds = %60
  %80 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, -1
  br i1 %82, label %83, label %98

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %93, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp sgt i32 %89, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87, %83
  %94 = bitcast %struct.anon* %10 to i8*
  %95 = bitcast %struct.anon* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %94, i8* align 4 %95, i64 8, i1 false)
  br label %96

96:                                               ; preds = %93, %87
  %97 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  store i32 -1, i32* %97, align 4
  br label %98

98:                                               ; preds = %96, %79
  br label %99

99:                                               ; preds = %98, %78
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %14, align 4
  br label %54

103:                                              ; preds = %54
  %104 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, -1
  br i1 %106, label %107, label %121

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %117, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp sgt i32 %113, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %111, %107
  %118 = bitcast %struct.anon* %10 to i8*
  %119 = bitcast %struct.anon* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 4 %119, i64 8, i1 false)
  br label %120

120:                                              ; preds = %117, %111
  br label %121

121:                                              ; preds = %120, %103
  %122 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, -1
  br i1 %124, label %125, label %131

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %127, 2
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0
  store i32 -1, i32* %130, align 4
  br label %131

131:                                              ; preds = %129, %125, %121
  %132 = getelementptr inbounds [46 x i8], [46 x i8]* %8, i64 0, i64 0
  store i8* %132, i8** %9, align 8
  store i32 0, i32* %14, align 4
  br label %133

133:                                              ; preds = %227, %131
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %136 = load i32, i32* @NS_INT16SZ, align 4
  %137 = sdiv i32 %135, %136
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %230

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, -1
  br i1 %142, label %143, label %165

143:                                              ; preds = %139
  %144 = load i32, i32* %14, align 4
  %145 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp sge i32 %144, %146
  br i1 %147, label %148, label %165

148:                                              ; preds = %143
  %149 = load i32, i32* %14, align 4
  %150 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %151, %153
  %155 = icmp slt i32 %149, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %148
  %157 = load i32, i32* %14, align 4
  %158 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %157, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i8*, i8** %9, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %9, align 8
  store i8 58, i8* %162, align 1
  br label %164

164:                                              ; preds = %161, %156
  br label %227

165:                                              ; preds = %148, %143, %139
  %166 = load i32, i32* %14, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i8*, i8** %9, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %9, align 8
  store i8 58, i8* %169, align 1
  br label %171

171:                                              ; preds = %168, %165
  %172 = load i32, i32* %14, align 4
  %173 = icmp eq i32 %172, 6
  br i1 %173, label %174, label %210

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %210

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 6
  br i1 %181, label %190, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 5
  br i1 %185, label %186, label %210

186:                                              ; preds = %182
  %187 = getelementptr inbounds i32, i32* %21, i64 5
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %188, 65535
  br i1 %189, label %190, label %210

190:                                              ; preds = %186, %178
  %191 = load i32*, i32** %5, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 12
  %193 = load i8*, i8** %9, align 8
  %194 = load i8*, i8** %9, align 8
  %195 = getelementptr inbounds [46 x i8], [46 x i8]* %8, i64 0, i64 0
  %196 = ptrtoint i8* %194 to i64
  %197 = ptrtoint i8* %195 to i64
  %198 = sub i64 %196, %197
  %199 = sub i64 46, %198
  %200 = trunc i64 %199 to i32
  %201 = call i32 @inet_ntop4(i32* %192, i8* %193, i32 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %190
  store i8* null, i8** %4, align 8
  store i32 1, i32* %15, align 4
  br label %265

204:                                              ; preds = %190
  %205 = load i8*, i8** %9, align 8
  %206 = call i32 @strlen(i8* %205)
  %207 = load i8*, i8** %9, align 8
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i8, i8* %207, i64 %208
  store i8* %209, i8** %9, align 8
  br label %230

210:                                              ; preds = %186, %182, %174, %171
  %211 = load i8*, i8** %9, align 8
  %212 = load i8*, i8** %9, align 8
  %213 = getelementptr inbounds [46 x i8], [46 x i8]* %8, i64 0, i64 0
  %214 = ptrtoint i8* %212 to i64
  %215 = ptrtoint i8* %213 to i64
  %216 = sub i64 %214, %215
  %217 = sub i64 46, %216
  %218 = trunc i64 %217 to i32
  %219 = load i32, i32* %14, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %21, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @snprintf(i8* %211, i32 %218, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %222)
  %224 = load i8*, i8** %9, align 8
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i8, i8* %224, i64 %225
  store i8* %226, i8** %9, align 8
  br label %227

227:                                              ; preds = %210, %164
  %228 = load i32, i32* %14, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %14, align 4
  br label %133

230:                                              ; preds = %204, %133
  %231 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, -1
  br i1 %233, label %234, label %247

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %236, %238
  %240 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %241 = load i32, i32* @NS_INT16SZ, align 4
  %242 = sdiv i32 %240, %241
  %243 = icmp eq i32 %239, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %234
  %245 = load i8*, i8** %9, align 8
  %246 = getelementptr inbounds i8, i8* %245, i32 1
  store i8* %246, i8** %9, align 8
  store i8 58, i8* %245, align 1
  br label %247

247:                                              ; preds = %244, %234, %230
  %248 = load i8*, i8** %9, align 8
  %249 = getelementptr inbounds i8, i8* %248, i32 1
  store i8* %249, i8** %9, align 8
  store i8 0, i8* %248, align 1
  %250 = load i8*, i8** %9, align 8
  %251 = getelementptr inbounds [46 x i8], [46 x i8]* %8, i64 0, i64 0
  %252 = ptrtoint i8* %250 to i64
  %253 = ptrtoint i8* %251 to i64
  %254 = sub i64 %252, %253
  %255 = load i64, i64* %7, align 8
  %256 = icmp ugt i64 %254, %255
  br i1 %256, label %257, label %259

257:                                              ; preds = %247
  %258 = load i32, i32* @ENOSPC, align 4
  store i32 %258, i32* @errno, align 4
  store i8* null, i8** %4, align 8
  store i32 1, i32* %15, align 4
  br label %265

259:                                              ; preds = %247
  %260 = load i8*, i8** %6, align 8
  %261 = getelementptr inbounds [46 x i8], [46 x i8]* %8, i64 0, i64 0
  %262 = load i64, i64* %7, align 8
  %263 = call i32 @strlcpy(i8* %260, i8* %261, i64 %262)
  %264 = load i8*, i8** %6, align 8
  store i8* %264, i8** %4, align 8
  store i32 1, i32* %15, align 4
  br label %265

265:                                              ; preds = %259, %257, %203
  %266 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %266)
  %267 = load i8*, i8** %4, align 8
  ret i8* %267
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i8 signext, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @inet_ntop4(i32*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
