; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptocheck.c_openssl_ccm_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptocheck.c_openssl_ccm_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alg = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"OpenSSL %s (%zu) ctx new failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"OpenSSL %s (%zu) ctx init failed: %s\00", align 1
@EVP_CTRL_CCM_SET_IVLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"OpenSSL %s (%zu) setting iv length failed: %s\00", align 1
@EVP_CTRL_CCM_SET_TAG = common dso_local global i32 0, align 4
@AES_CBC_MAC_HASH_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [47 x i8] c"OpenSSL %s (%zu) setting tag length failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"OpenSSL %s (%zu) unable to set data length: %s\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"OpenSSL %s (%zu) aad update failed: %s\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"OpenSSL %s (%zu) encrypt update failed: %s\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"OpenSSL %s (%zu) encrypt final failed: %s\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"OpenSSL %s (%zu) encrypt size mismatch: %d\00", align 1
@EVP_CTRL_CCM_GET_TAG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"OpenSSL %s (%zu) get tag failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alg*, i32*, i8*, i8*, i64, i8*, i64, i8*, i8*, i64, i8*)* @openssl_ccm_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @openssl_ccm_encrypt(%struct.alg* %0, i32* %1, i8* %2, i8* %3, i64 %4, i8* %5, i64 %6, i8* %7, i8* %8, i64 %9, i8* %10) #0 {
  %12 = alloca %struct.alg*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.alg* %0, %struct.alg** %12, align 8
  store i32* %1, i32** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i64 %4, i64* %16, align 8
  store i8* %5, i8** %17, align 8
  store i64 %6, i64* %18, align 8
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i64 %9, i64* %21, align 8
  store i8* %10, i8** %22, align 8
  %26 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %26, i32** %23, align 8
  %27 = load i32*, i32** %23, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %11
  %30 = load %struct.alg*, %struct.alg** %12, align 8
  %31 = getelementptr inbounds %struct.alg, %struct.alg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %21, align 8
  %34 = call i32 (...) @ERR_get_error()
  %35 = call i32 @ERR_error_string(i32 %34, i32* null)
  %36 = call i32 @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %32, i64 %33, i32 %35)
  br label %37

37:                                               ; preds = %29, %11
  %38 = load i32*, i32** %23, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = call i32 @EVP_EncryptInit_ex(i32* %38, i32* %39, i32* null, i32* null, i32* null)
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.alg*, %struct.alg** %12, align 8
  %44 = getelementptr inbounds %struct.alg, %struct.alg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %21, align 8
  %47 = call i32 (...) @ERR_get_error()
  %48 = call i32 @ERR_error_string(i32 %47, i32* null)
  %49 = call i32 @errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %45, i64 %46, i32 %48)
  br label %50

50:                                               ; preds = %42, %37
  %51 = load i32*, i32** %23, align 8
  %52 = load i32, i32* @EVP_CTRL_CCM_SET_IVLEN, align 4
  %53 = load i64, i64* %16, align 8
  %54 = call i32 @EVP_CIPHER_CTX_ctrl(i32* %51, i32 %52, i64 %53, i8* null)
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.alg*, %struct.alg** %12, align 8
  %58 = getelementptr inbounds %struct.alg, %struct.alg* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %21, align 8
  %61 = call i32 (...) @ERR_get_error()
  %62 = call i32 @ERR_error_string(i32 %61, i32* null)
  %63 = call i32 @errx(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %59, i64 %60, i32 %62)
  br label %64

64:                                               ; preds = %56, %50
  %65 = load i32*, i32** %23, align 8
  %66 = load i32, i32* @EVP_CTRL_CCM_SET_TAG, align 4
  %67 = load i64, i64* @AES_CBC_MAC_HASH_LEN, align 8
  %68 = call i32 @EVP_CIPHER_CTX_ctrl(i32* %65, i32 %66, i64 %67, i8* null)
  %69 = icmp ne i32 %68, 1
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load %struct.alg*, %struct.alg** %12, align 8
  %72 = getelementptr inbounds %struct.alg, %struct.alg* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %21, align 8
  %75 = call i32 (...) @ERR_get_error()
  %76 = call i32 @ERR_error_string(i32 %75, i32* null)
  %77 = call i32 @errx(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %73, i64 %74, i32 %76)
  br label %78

78:                                               ; preds = %70, %64
  %79 = load i32*, i32** %23, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = bitcast i8* %80 to i32*
  %82 = load i8*, i8** %15, align 8
  %83 = bitcast i8* %82 to i32*
  %84 = call i32 @EVP_EncryptInit_ex(i32* %79, i32* null, i32* null, i32* %81, i32* %83)
  %85 = icmp ne i32 %84, 1
  br i1 %85, label %86, label %94

86:                                               ; preds = %78
  %87 = load %struct.alg*, %struct.alg** %12, align 8
  %88 = getelementptr inbounds %struct.alg, %struct.alg* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i64, i64* %21, align 8
  %91 = call i32 (...) @ERR_get_error()
  %92 = call i32 @ERR_error_string(i32 %91, i32* null)
  %93 = call i32 @errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %89, i64 %90, i32 %92)
  br label %94

94:                                               ; preds = %86, %78
  %95 = load i32*, i32** %23, align 8
  %96 = load i64, i64* %21, align 8
  %97 = call i32 @EVP_EncryptUpdate(i32* %95, i32* null, i32* %24, i32* null, i64 %96)
  %98 = icmp ne i32 %97, 1
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load %struct.alg*, %struct.alg** %12, align 8
  %101 = getelementptr inbounds %struct.alg, %struct.alg* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* %21, align 8
  %104 = call i32 (...) @ERR_get_error()
  %105 = call i32 @ERR_error_string(i32 %104, i32* null)
  %106 = call i32 @errx(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %102, i64 %103, i32 %105)
  br label %107

107:                                              ; preds = %99, %94
  %108 = load i8*, i8** %17, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %126

110:                                              ; preds = %107
  %111 = load i32*, i32** %23, align 8
  %112 = load i8*, i8** %17, align 8
  %113 = bitcast i8* %112 to i32*
  %114 = load i64, i64* %18, align 8
  %115 = call i32 @EVP_EncryptUpdate(i32* %111, i32* null, i32* %24, i32* %113, i64 %114)
  %116 = icmp ne i32 %115, 1
  br i1 %116, label %117, label %125

117:                                              ; preds = %110
  %118 = load %struct.alg*, %struct.alg** %12, align 8
  %119 = getelementptr inbounds %struct.alg, %struct.alg* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i64, i64* %21, align 8
  %122 = call i32 (...) @ERR_get_error()
  %123 = call i32 @ERR_error_string(i32 %122, i32* null)
  %124 = call i32 @errx(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %120, i64 %121, i32 %123)
  br label %125

125:                                              ; preds = %117, %110
  br label %126

126:                                              ; preds = %125, %107
  %127 = load i32*, i32** %23, align 8
  %128 = load i8*, i8** %20, align 8
  %129 = bitcast i8* %128 to i32*
  %130 = load i8*, i8** %19, align 8
  %131 = bitcast i8* %130 to i32*
  %132 = load i64, i64* %21, align 8
  %133 = call i32 @EVP_EncryptUpdate(i32* %127, i32* %129, i32* %24, i32* %131, i64 %132)
  %134 = icmp ne i32 %133, 1
  br i1 %134, label %135, label %143

135:                                              ; preds = %126
  %136 = load %struct.alg*, %struct.alg** %12, align 8
  %137 = getelementptr inbounds %struct.alg, %struct.alg* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i64, i64* %21, align 8
  %140 = call i32 (...) @ERR_get_error()
  %141 = call i32 @ERR_error_string(i32 %140, i32* null)
  %142 = call i32 @errx(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %138, i64 %139, i32 %141)
  br label %143

143:                                              ; preds = %135, %126
  %144 = load i32, i32* %24, align 4
  store i32 %144, i32* %25, align 4
  %145 = load i32*, i32** %23, align 8
  %146 = load i8*, i8** %20, align 8
  %147 = bitcast i8* %146 to i32*
  %148 = load i32, i32* %24, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = call i32 @EVP_EncryptFinal_ex(i32* %145, i32* %150, i32* %24)
  %152 = icmp ne i32 %151, 1
  br i1 %152, label %153, label %161

153:                                              ; preds = %143
  %154 = load %struct.alg*, %struct.alg** %12, align 8
  %155 = getelementptr inbounds %struct.alg, %struct.alg* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i64, i64* %21, align 8
  %158 = call i32 (...) @ERR_get_error()
  %159 = call i32 @ERR_error_string(i32 %158, i32* null)
  %160 = call i32 @errx(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %156, i64 %157, i32 %159)
  br label %161

161:                                              ; preds = %153, %143
  %162 = load i32, i32* %24, align 4
  %163 = load i32, i32* %25, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %25, align 4
  %165 = load i32, i32* %25, align 4
  %166 = sext i32 %165 to i64
  %167 = load i64, i64* %21, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %161
  %170 = load %struct.alg*, %struct.alg** %12, align 8
  %171 = getelementptr inbounds %struct.alg, %struct.alg* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i64, i64* %21, align 8
  %174 = load i32, i32* %25, align 4
  %175 = call i32 @errx(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %172, i64 %173, i32 %174)
  br label %176

176:                                              ; preds = %169, %161
  %177 = load i32*, i32** %23, align 8
  %178 = load i32, i32* @EVP_CTRL_CCM_GET_TAG, align 4
  %179 = load i64, i64* @AES_CBC_MAC_HASH_LEN, align 8
  %180 = load i8*, i8** %22, align 8
  %181 = call i32 @EVP_CIPHER_CTX_ctrl(i32* %177, i32 %178, i64 %179, i8* %180)
  %182 = icmp ne i32 %181, 1
  br i1 %182, label %183, label %191

183:                                              ; preds = %176
  %184 = load %struct.alg*, %struct.alg** %12, align 8
  %185 = getelementptr inbounds %struct.alg, %struct.alg* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i64, i64* %21, align 8
  %188 = call i32 (...) @ERR_get_error()
  %189 = call i32 @ERR_error_string(i32 %188, i32* null)
  %190 = call i32 @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %186, i64 %187, i32 %189)
  br label %191

191:                                              ; preds = %183, %176
  %192 = load i32*, i32** %23, align 8
  %193 = call i32 @EVP_CIPHER_CTX_free(i32* %192)
  ret void
}

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @errx(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @ERR_error_string(i32, i32*) #1

declare dso_local i32 @ERR_get_error(...) #1

declare dso_local i32 @EVP_EncryptInit_ex(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_ctrl(i32*, i32, i64, i8*) #1

declare dso_local i32 @EVP_EncryptUpdate(i32*, i32*, i32*, i32*, i64) #1

declare dso_local i32 @EVP_EncryptFinal_ex(i32*, i32*, i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
