; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptocheck.c_openssl_gcm_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptocheck.c_openssl_gcm_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alg = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"OpenSSL %s (%zu) ctx new failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"OpenSSL %s (%zu) ctx init failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"OpenSSL %s (%zu) aad update failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"OpenSSL %s (%zu) encrypt update failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"OpenSSL %s (%zu) encrypt final failed: %s\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"OpenSSL %s (%zu) encrypt size mismatch: %d\00", align 1
@EVP_CTRL_GCM_GET_TAG = common dso_local global i32 0, align 4
@AES_GMAC_HASH_LEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"OpenSSL %s (%zu) get tag failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alg*, i32*, i8*, i8*, i8*, i64, i8*, i8*, i64, i8*)* @openssl_gcm_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @openssl_gcm_encrypt(%struct.alg* %0, i32* %1, i8* %2, i8* %3, i8* %4, i64 %5, i8* %6, i8* %7, i64 %8, i8* %9) #0 {
  %11 = alloca %struct.alg*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.alg* %0, %struct.alg** %11, align 8
  store i32* %1, i32** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i64 %5, i64* %16, align 8
  store i8* %6, i8** %17, align 8
  store i8* %7, i8** %18, align 8
  store i64 %8, i64* %19, align 8
  store i8* %9, i8** %20, align 8
  %24 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %24, i32** %21, align 8
  %25 = load i32*, i32** %21, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %10
  %28 = load %struct.alg*, %struct.alg** %11, align 8
  %29 = getelementptr inbounds %struct.alg, %struct.alg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %19, align 8
  %32 = call i32 (...) @ERR_get_error()
  %33 = call i32 @ERR_error_string(i32 %32, i32* null)
  %34 = call i32 @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %31, i32 %33)
  br label %35

35:                                               ; preds = %27, %10
  %36 = load i32*, i32** %21, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load i8*, i8** %14, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = call i32 @EVP_EncryptInit_ex(i32* %36, i32* %37, i32* null, i32* %39, i32* %41)
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %52

44:                                               ; preds = %35
  %45 = load %struct.alg*, %struct.alg** %11, align 8
  %46 = getelementptr inbounds %struct.alg, %struct.alg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %19, align 8
  %49 = call i32 (...) @ERR_get_error()
  %50 = call i32 @ERR_error_string(i32 %49, i32* null)
  %51 = call i32 @errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %47, i64 %48, i32 %50)
  br label %52

52:                                               ; preds = %44, %35
  %53 = load i32*, i32** %21, align 8
  %54 = call i32 @EVP_CIPHER_CTX_set_padding(i32* %53, i32 0)
  %55 = load i8*, i8** %15, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %73

57:                                               ; preds = %52
  %58 = load i32*, i32** %21, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = load i64, i64* %16, align 8
  %62 = call i32 @EVP_EncryptUpdate(i32* %58, i32* null, i32* %22, i32* %60, i64 %61)
  %63 = icmp ne i32 %62, 1
  br i1 %63, label %64, label %72

64:                                               ; preds = %57
  %65 = load %struct.alg*, %struct.alg** %11, align 8
  %66 = getelementptr inbounds %struct.alg, %struct.alg* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %19, align 8
  %69 = call i32 (...) @ERR_get_error()
  %70 = call i32 @ERR_error_string(i32 %69, i32* null)
  %71 = call i32 @errx(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %67, i64 %68, i32 %70)
  br label %72

72:                                               ; preds = %64, %57
  br label %73

73:                                               ; preds = %72, %52
  %74 = load i32*, i32** %21, align 8
  %75 = load i8*, i8** %18, align 8
  %76 = bitcast i8* %75 to i32*
  %77 = load i8*, i8** %17, align 8
  %78 = bitcast i8* %77 to i32*
  %79 = load i64, i64* %19, align 8
  %80 = call i32 @EVP_EncryptUpdate(i32* %74, i32* %76, i32* %22, i32* %78, i64 %79)
  %81 = icmp ne i32 %80, 1
  br i1 %81, label %82, label %90

82:                                               ; preds = %73
  %83 = load %struct.alg*, %struct.alg** %11, align 8
  %84 = getelementptr inbounds %struct.alg, %struct.alg* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %19, align 8
  %87 = call i32 (...) @ERR_get_error()
  %88 = call i32 @ERR_error_string(i32 %87, i32* null)
  %89 = call i32 @errx(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %85, i64 %86, i32 %88)
  br label %90

90:                                               ; preds = %82, %73
  %91 = load i32, i32* %22, align 4
  store i32 %91, i32* %23, align 4
  %92 = load i32*, i32** %21, align 8
  %93 = load i8*, i8** %18, align 8
  %94 = bitcast i8* %93 to i32*
  %95 = load i32, i32* %22, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = call i32 @EVP_EncryptFinal_ex(i32* %92, i32* %97, i32* %22)
  %99 = icmp ne i32 %98, 1
  br i1 %99, label %100, label %108

100:                                              ; preds = %90
  %101 = load %struct.alg*, %struct.alg** %11, align 8
  %102 = getelementptr inbounds %struct.alg, %struct.alg* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i64, i64* %19, align 8
  %105 = call i32 (...) @ERR_get_error()
  %106 = call i32 @ERR_error_string(i32 %105, i32* null)
  %107 = call i32 @errx(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %103, i64 %104, i32 %106)
  br label %108

108:                                              ; preds = %100, %90
  %109 = load i32, i32* %22, align 4
  %110 = load i32, i32* %23, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %23, align 4
  %112 = load i32, i32* %23, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %19, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %108
  %117 = load %struct.alg*, %struct.alg** %11, align 8
  %118 = getelementptr inbounds %struct.alg, %struct.alg* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i64, i64* %19, align 8
  %121 = load i32, i32* %23, align 4
  %122 = call i32 @errx(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %119, i64 %120, i32 %121)
  br label %123

123:                                              ; preds = %116, %108
  %124 = load i32*, i32** %21, align 8
  %125 = load i32, i32* @EVP_CTRL_GCM_GET_TAG, align 4
  %126 = load i32, i32* @AES_GMAC_HASH_LEN, align 4
  %127 = load i8*, i8** %20, align 8
  %128 = call i32 @EVP_CIPHER_CTX_ctrl(i32* %124, i32 %125, i32 %126, i8* %127)
  %129 = icmp ne i32 %128, 1
  br i1 %129, label %130, label %138

130:                                              ; preds = %123
  %131 = load %struct.alg*, %struct.alg** %11, align 8
  %132 = getelementptr inbounds %struct.alg, %struct.alg* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i64, i64* %19, align 8
  %135 = call i32 (...) @ERR_get_error()
  %136 = call i32 @ERR_error_string(i32 %135, i32* null)
  %137 = call i32 @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %133, i64 %134, i32 %136)
  br label %138

138:                                              ; preds = %130, %123
  %139 = load i32*, i32** %21, align 8
  %140 = call i32 @EVP_CIPHER_CTX_free(i32* %139)
  ret void
}

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @errx(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @ERR_error_string(i32, i32*) #1

declare dso_local i32 @ERR_get_error(...) #1

declare dso_local i32 @EVP_EncryptInit_ex(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_set_padding(i32*, i32) #1

declare dso_local i32 @EVP_EncryptUpdate(i32*, i32*, i32*, i32*, i64) #1

declare dso_local i32 @EVP_EncryptFinal_ex(i32*, i32*, i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_ctrl(i32*, i32, i32, i8*) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
