; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chap.c_chap_BuildAnswer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chap.c_chap_BuildAnswer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AUTHLEN = common dso_local global i32 0, align 4
@MS_CHAP_RESPONSE_LEN = common dso_local global i32 0, align 4
@CHAP81_HASH_LEN = common dso_local global i32 0, align 4
@CHAP81_RESPONSE_LEN = common dso_local global i32 0, align 4
@CHAP81_CHALLENGE_LEN = common dso_local global i64 0, align 8
@CHAP81_NTRESPONSE_OFF = common dso_local global i32 0, align 4
@MPPE_MasterKey = common dso_local global i32 0, align 4
@CHAP81_AUTHRESPONSE_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32, i8*, i32, i8*, i8*, i32)* @chap_BuildAnswer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @chap_BuildAnswer(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = call i64 @strlen(i8* %34)
  store i64 %35, i64* %20, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = call i64 @strlen(i8* %36)
  store i64 %37, i64* %21, align 8
  %38 = load i32, i32* %14, align 4
  %39 = icmp eq i32 %38, 128
  br i1 %39, label %40, label %119

40:                                               ; preds = %8
  %41 = load i32, i32* @AUTHLEN, align 4
  %42 = shl i32 %41, 2
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %22, align 8
  %45 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %23, align 8
  %46 = load i64, i64* %20, align 8
  %47 = add i64 1, %46
  %48 = load i32, i32* @MS_CHAP_RESPONSE_LEN, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 %47, %49
  %51 = call i8* @malloc(i64 %50)
  store i8* %51, i8** %18, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = load i8*, i8** %18, align 8
  store i8* %54, i8** %9, align 8
  store i32 1, i32* %26, align 4
  br label %115

55:                                               ; preds = %40
  %56 = load i8*, i8** %18, align 8
  store i8* %56, i8** %19, align 8
  %57 = load i32, i32* @MS_CHAP_RESPONSE_LEN, align 4
  %58 = trunc i32 %57 to i8
  %59 = load i8*, i8** %19, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %19, align 8
  store i8 %58, i8* %59, align 1
  %61 = load i8*, i8** %19, align 8
  %62 = load i32, i32* @MS_CHAP_RESPONSE_LEN, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8*, i8** %10, align 8
  %66 = load i64, i64* %20, align 8
  %67 = call i32 @memcpy(i8* %64, i8* %65, i64 %66)
  %68 = load i32, i32* %17, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %55
  %71 = load i8*, i8** %19, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 24
  %73 = call i32 @memset(i8* %72, i8 signext 0, i32 25)
  %74 = load i8*, i8** %19, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 @mschap_LANMan(i8* %74, i8* %76, i8* %77)
  br label %114

79:                                               ; preds = %55
  %80 = load i8*, i8** %19, align 8
  %81 = call i32 @memset(i8* %80, i8 signext 0, i32 25)
  %82 = load i8*, i8** %19, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 24
  store i8* %83, i8** %19, align 8
  store i64 0, i64* %25, align 8
  br label %84

84:                                               ; preds = %100, %79
  %85 = load i64, i64* %25, align 8
  %86 = load i64, i64* %21, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %84
  %89 = load i8*, i8** %11, align 8
  %90 = load i64, i64* %25, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = load i64, i64* %25, align 8
  %94 = mul i64 2, %93
  %95 = getelementptr inbounds i8, i8* %45, i64 %94
  store i8 %92, i8* %95, align 1
  %96 = load i64, i64* %25, align 8
  %97 = mul i64 2, %96
  %98 = add i64 %97, 1
  %99 = getelementptr inbounds i8, i8* %45, i64 %98
  store i8 0, i8* %99, align 1
  br label %100

100:                                              ; preds = %88
  %101 = load i64, i64* %25, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %25, align 8
  br label %84

103:                                              ; preds = %84
  %104 = call i32 @MD4Init(i32* %24)
  %105 = load i64, i64* %21, align 8
  %106 = shl i64 %105, 1
  %107 = call i32 @MD4Update(i32* %24, i8* %45, i64 %106)
  %108 = load i8*, i8** %19, align 8
  %109 = call i32 @MD4Final(i8* %108, i32* %24)
  %110 = load i8*, i8** %19, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  %113 = call i32 @mschap_NT(i8* %110, i8* %112)
  br label %114

114:                                              ; preds = %103, %70
  store i32 0, i32* %26, align 4
  br label %115

115:                                              ; preds = %114, %53
  %116 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %116)
  %117 = load i32, i32* %26, align 4
  switch i32 %117, label %259 [
    i32 0, label %118
    i32 1, label %257
  ]

118:                                              ; preds = %115
  br label %255

119:                                              ; preds = %8
  %120 = load i32, i32* %14, align 4
  %121 = icmp eq i32 %120, 129
  br i1 %121, label %122, label %226

122:                                              ; preds = %119
  %123 = load i32, i32* @AUTHLEN, align 4
  %124 = shl i32 %123, 2
  %125 = zext i32 %124 to i64
  %126 = call i8* @llvm.stacksave()
  store i8* %126, i8** %27, align 8
  %127 = alloca i8, i64 %125, align 16
  store i64 %125, i64* %28, align 8
  %128 = load i32, i32* @CHAP81_HASH_LEN, align 4
  %129 = zext i32 %128 to i64
  %130 = alloca i8, i64 %129, align 16
  store i64 %129, i64* %29, align 8
  %131 = load i32, i32* @CHAP81_HASH_LEN, align 4
  %132 = zext i32 %131 to i64
  %133 = alloca i8, i64 %132, align 16
  store i64 %132, i64* %30, align 8
  %134 = load i64, i64* %20, align 8
  %135 = add i64 1, %134
  %136 = load i32, i32* @CHAP81_RESPONSE_LEN, align 4
  %137 = sext i32 %136 to i64
  %138 = add i64 %135, %137
  %139 = call i8* @malloc(i64 %138)
  store i8* %139, i8** %18, align 8
  %140 = icmp eq i8* %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %122
  %142 = load i8*, i8** %18, align 8
  store i8* %142, i8** %9, align 8
  store i32 1, i32* %26, align 4
  br label %222

143:                                              ; preds = %122
  %144 = load i8*, i8** %18, align 8
  %145 = load i64, i64* %20, align 8
  %146 = add i64 1, %145
  %147 = load i32, i32* @CHAP81_RESPONSE_LEN, align 4
  %148 = sext i32 %147 to i64
  %149 = add i64 %146, %148
  %150 = trunc i64 %149 to i32
  %151 = call i32 @memset(i8* %144, i8 signext 0, i32 %150)
  %152 = load i8*, i8** %18, align 8
  store i8* %152, i8** %19, align 8
  %153 = load i32, i32* @CHAP81_RESPONSE_LEN, align 4
  %154 = trunc i32 %153 to i8
  %155 = load i8*, i8** %19, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %19, align 8
  store i8 %154, i8* %155, align 1
  %157 = load i8*, i8** %19, align 8
  %158 = load i8*, i8** %15, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  %160 = load i64, i64* @CHAP81_CHALLENGE_LEN, align 8
  %161 = call i32 @memcpy(i8* %157, i8* %159, i64 %160)
  store i64 0, i64* %32, align 8
  br label %162

162:                                              ; preds = %178, %143
  %163 = load i64, i64* %32, align 8
  %164 = load i64, i64* %21, align 8
  %165 = icmp ult i64 %163, %164
  br i1 %165, label %166, label %181

166:                                              ; preds = %162
  %167 = load i8*, i8** %11, align 8
  %168 = load i64, i64* %32, align 8
  %169 = getelementptr inbounds i8, i8* %167, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = load i64, i64* %32, align 8
  %172 = mul i64 2, %171
  %173 = getelementptr inbounds i8, i8* %127, i64 %172
  store i8 %170, i8* %173, align 1
  %174 = load i64, i64* %32, align 8
  %175 = mul i64 2, %174
  %176 = add i64 %175, 1
  %177 = getelementptr inbounds i8, i8* %127, i64 %176
  store i8 0, i8* %177, align 1
  br label %178

178:                                              ; preds = %166
  %179 = load i64, i64* %32, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %32, align 8
  br label %162

181:                                              ; preds = %162
  %182 = load i8*, i8** %19, align 8
  %183 = load i32, i32* @CHAP81_NTRESPONSE_OFF, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  store i8* %185, i8** %31, align 8
  %186 = load i64, i64* %21, align 8
  %187 = mul i64 %186, 2
  %188 = call i32 @NtPasswordHash(i8* %127, i64 %187, i8* %130)
  %189 = call i32 @HashNtPasswordHash(i8* %130, i8* %133)
  %190 = load i8*, i8** %13, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 1
  %192 = load i8*, i8** %15, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 1
  %194 = load i8*, i8** %10, align 8
  %195 = load i64, i64* %21, align 8
  %196 = mul i64 %195, 2
  %197 = load i8*, i8** %31, align 8
  %198 = call i32 @GenerateNTResponse(i8* %191, i8* %193, i8* %194, i8* %127, i64 %196, i8* %197)
  %199 = load i8*, i8** %31, align 8
  %200 = load i32, i32* @MPPE_MasterKey, align 4
  %201 = call i32 @GetMasterKey(i8* %133, i8* %199, i32 %200)
  %202 = load i64, i64* %21, align 8
  %203 = mul i64 %202, 2
  %204 = load i8*, i8** %31, align 8
  %205 = load i8*, i8** %15, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 1
  %207 = load i8*, i8** %13, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 1
  %209 = load i8*, i8** %10, align 8
  %210 = load i8*, i8** %16, align 8
  %211 = call i32 @GenerateAuthenticatorResponse(i8* %127, i64 %203, i8* %204, i8* %206, i8* %208, i8* %209, i8* %210)
  %212 = load i8*, i8** %16, align 8
  %213 = load i64, i64* @CHAP81_AUTHRESPONSE_LEN, align 8
  %214 = getelementptr inbounds i8, i8* %212, i64 %213
  store i8 0, i8* %214, align 1
  %215 = load i8*, i8** %19, align 8
  %216 = load i32, i32* @CHAP81_RESPONSE_LEN, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  %219 = load i8*, i8** %10, align 8
  %220 = load i64, i64* %20, align 8
  %221 = call i32 @memcpy(i8* %218, i8* %219, i64 %220)
  store i32 0, i32* %26, align 4
  br label %222

222:                                              ; preds = %181, %141
  %223 = load i8*, i8** %27, align 8
  call void @llvm.stackrestore(i8* %223)
  %224 = load i32, i32* %26, align 4
  switch i32 %224, label %259 [
    i32 0, label %225
    i32 1, label %257
  ]

225:                                              ; preds = %222
  br label %254

226:                                              ; preds = %119
  %227 = load i64, i64* %20, align 8
  %228 = add i64 %227, 17
  %229 = call i8* @malloc(i64 %228)
  store i8* %229, i8** %18, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %231, label %253

231:                                              ; preds = %226
  %232 = load i8*, i8** %18, align 8
  store i8* %232, i8** %19, align 8
  %233 = load i8*, i8** %19, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %19, align 8
  store i8 16, i8* %233, align 1
  %235 = call i32 @MD5Init(i32* %33)
  %236 = call i32 (i32*, ...) @MD5Update(i32* %33, i32* %12, i32 1)
  %237 = load i8*, i8** %11, align 8
  %238 = load i64, i64* %21, align 8
  %239 = call i32 (i32*, ...) @MD5Update(i32* %33, i8* %237, i64 %238)
  %240 = load i8*, i8** %13, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 1
  %242 = load i8*, i8** %13, align 8
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = call i32 (i32*, ...) @MD5Update(i32* %33, i8* %241, i32 %244)
  %246 = load i8*, i8** %19, align 8
  %247 = call i32 @MD5Final(i8* %246, i32* %33)
  %248 = load i8*, i8** %19, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 16
  %250 = load i8*, i8** %10, align 8
  %251 = load i64, i64* %20, align 8
  %252 = call i32 @memcpy(i8* %249, i8* %250, i64 %251)
  br label %253

253:                                              ; preds = %231, %226
  br label %254

254:                                              ; preds = %253, %225
  br label %255

255:                                              ; preds = %254, %118
  %256 = load i8*, i8** %18, align 8
  store i8* %256, i8** %9, align 8
  br label %257

257:                                              ; preds = %255, %222, %115
  %258 = load i8*, i8** %9, align 8
  ret i8* %258

259:                                              ; preds = %222, %115
  unreachable
}

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @mschap_LANMan(i8*, i8*, i8*) #1

declare dso_local i32 @MD4Init(i32*) #1

declare dso_local i32 @MD4Update(i32*, i8*, i64) #1

declare dso_local i32 @MD4Final(i8*, i32*) #1

declare dso_local i32 @mschap_NT(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @NtPasswordHash(i8*, i64, i8*) #1

declare dso_local i32 @HashNtPasswordHash(i8*, i8*) #1

declare dso_local i32 @GenerateNTResponse(i8*, i8*, i8*, i8*, i64, i8*) #1

declare dso_local i32 @GetMasterKey(i8*, i8*, i32) #1

declare dso_local i32 @GenerateAuthenticatorResponse(i8*, i64, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @MD5Init(i32*) #1

declare dso_local i32 @MD5Update(i32*, ...) #1

declare dso_local i32 @MD5Final(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
