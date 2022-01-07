; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptocheck.c_openssl_cipher.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptocheck.c_openssl_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alg = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"OpenSSL %s (%zu) ctx new failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"OpenSSL %s (%zu) ctx init failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"OpenSSL %s (%zu) cipher update failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"OpenSSL %s (%zu) cipher final failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"OpenSSL %s (%zu) cipher size mismatch: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alg*, i32*, i8*, i8*, i8*, i8*, i64, i32)* @openssl_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @openssl_cipher(%struct.alg* %0, i32* %1, i8* %2, i8* %3, i8* %4, i8* %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.alg*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.alg* %0, %struct.alg** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 %7, i32* %16, align 4
  %20 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %20, i32** %17, align 8
  %21 = load i32*, i32** %17, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %8
  %24 = load %struct.alg*, %struct.alg** %9, align 8
  %25 = getelementptr inbounds %struct.alg, %struct.alg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %15, align 8
  %28 = call i32 (...) @ERR_get_error()
  %29 = call i32 @ERR_error_string(i32 %28, i32* null)
  %30 = call i32 @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %27, i32 %29)
  br label %31

31:                                               ; preds = %23, %8
  %32 = load i32*, i32** %17, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load i8*, i8** %12, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = load i32, i32* %16, align 4
  %39 = call i32 @EVP_CipherInit_ex(i32* %32, i32* %33, i32* null, i32* %35, i32* %37, i32 %38)
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %49

41:                                               ; preds = %31
  %42 = load %struct.alg*, %struct.alg** %9, align 8
  %43 = getelementptr inbounds %struct.alg, %struct.alg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %15, align 8
  %46 = call i32 (...) @ERR_get_error()
  %47 = call i32 @ERR_error_string(i32 %46, i32* null)
  %48 = call i32 @errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %44, i64 %45, i32 %47)
  br label %49

49:                                               ; preds = %41, %31
  %50 = load i32*, i32** %17, align 8
  %51 = call i32 @EVP_CIPHER_CTX_set_padding(i32* %50, i32 0)
  %52 = load i32*, i32** %17, align 8
  %53 = load i8*, i8** %14, align 8
  %54 = bitcast i8* %53 to i32*
  %55 = load i8*, i8** %13, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = load i64, i64* %15, align 8
  %58 = call i32 @EVP_CipherUpdate(i32* %52, i32* %54, i32* %18, i32* %56, i64 %57)
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %68

60:                                               ; preds = %49
  %61 = load %struct.alg*, %struct.alg** %9, align 8
  %62 = getelementptr inbounds %struct.alg, %struct.alg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %15, align 8
  %65 = call i32 (...) @ERR_get_error()
  %66 = call i32 @ERR_error_string(i32 %65, i32* null)
  %67 = call i32 @errx(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %63, i64 %64, i32 %66)
  br label %68

68:                                               ; preds = %60, %49
  %69 = load i32, i32* %18, align 4
  store i32 %69, i32* %19, align 4
  %70 = load i32*, i32** %17, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = bitcast i8* %71 to i32*
  %73 = load i32, i32* %18, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = call i32 @EVP_CipherFinal_ex(i32* %70, i32* %75, i32* %18)
  %77 = icmp ne i32 %76, 1
  br i1 %77, label %78, label %86

78:                                               ; preds = %68
  %79 = load %struct.alg*, %struct.alg** %9, align 8
  %80 = getelementptr inbounds %struct.alg, %struct.alg* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %15, align 8
  %83 = call i32 (...) @ERR_get_error()
  %84 = call i32 @ERR_error_string(i32 %83, i32* null)
  %85 = call i32 @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %81, i64 %82, i32 %84)
  br label %86

86:                                               ; preds = %78, %68
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %19, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %19, align 4
  %90 = load i32, i32* %19, align 4
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %15, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %86
  %95 = load %struct.alg*, %struct.alg** %9, align 8
  %96 = getelementptr inbounds %struct.alg, %struct.alg* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i64, i64* %15, align 8
  %99 = load i32, i32* %19, align 4
  %100 = call i32 @errx(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %97, i64 %98, i32 %99)
  br label %101

101:                                              ; preds = %94, %86
  %102 = load i32*, i32** %17, align 8
  %103 = call i32 @EVP_CIPHER_CTX_free(i32* %102)
  ret void
}

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @errx(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @ERR_error_string(i32, i32*) #1

declare dso_local i32 @ERR_get_error(...) #1

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_set_padding(i32*, i32) #1

declare dso_local i32 @EVP_CipherUpdate(i32*, i32*, i32*, i32*, i64) #1

declare dso_local i32 @EVP_CipherFinal_ex(i32*, i32*, i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
