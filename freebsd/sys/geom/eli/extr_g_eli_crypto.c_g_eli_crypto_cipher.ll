; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_crypto.c_g_eli_crypto_cipher.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_crypto.c_g_eli_crypto_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRYPTO_AES_XTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i64, i32*, i64)* @g_eli_crypto_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_eli_crypto_cipher(i32 %0, i32 %1, i32* %2, i64 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %20 = load i64, i64* %13, align 8
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %16, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %17, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @CRYPTO_AES_XTS, align 4
  %25 = icmp ne i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %57 [
    i32 128, label %29
    i32 131, label %31
    i32 130, label %42
    i32 129, label %44
    i32 132, label %55
  ]

29:                                               ; preds = %6
  %30 = call i32* (...) @EVP_enc_null()
  store i32* %30, i32** %15, align 8
  br label %59

31:                                               ; preds = %6
  %32 = load i64, i64* %13, align 8
  switch i64 %32, label %39 [
    i64 128, label %33
    i64 192, label %35
    i64 256, label %37
  ]

33:                                               ; preds = %31
  %34 = call i32* (...) @EVP_aes_128_cbc()
  store i32* %34, i32** %15, align 8
  br label %41

35:                                               ; preds = %31
  %36 = call i32* (...) @EVP_aes_192_cbc()
  store i32* %36, i32** %15, align 8
  br label %41

37:                                               ; preds = %31
  %38 = call i32* (...) @EVP_aes_256_cbc()
  store i32* %38, i32** %15, align 8
  br label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %118

41:                                               ; preds = %37, %35, %33
  br label %59

42:                                               ; preds = %6
  %43 = call i32* (...) @EVP_bf_cbc()
  store i32* %43, i32** %15, align 8
  br label %59

44:                                               ; preds = %6
  %45 = load i64, i64* %13, align 8
  switch i64 %45, label %52 [
    i64 128, label %46
    i64 192, label %48
    i64 256, label %50
  ]

46:                                               ; preds = %44
  %47 = call i32* (...) @EVP_camellia_128_cbc()
  store i32* %47, i32** %15, align 8
  br label %54

48:                                               ; preds = %44
  %49 = call i32* (...) @EVP_camellia_192_cbc()
  store i32* %49, i32** %15, align 8
  br label %54

50:                                               ; preds = %44
  %51 = call i32* (...) @EVP_camellia_256_cbc()
  store i32* %51, i32** %15, align 8
  br label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %118

54:                                               ; preds = %50, %48, %46
  br label %59

55:                                               ; preds = %6
  %56 = call i32* (...) @EVP_des_ede3_cbc()
  store i32* %56, i32** %15, align 8
  br label %59

57:                                               ; preds = %6
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %118

59:                                               ; preds = %55, %54, %42, %41, %29
  %60 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %60, i32** %14, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @ENOMEM, align 4
  store i32 %64, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %118

65:                                               ; preds = %59
  %66 = load i32*, i32** %14, align 8
  %67 = load i32*, i32** %15, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @EVP_CipherInit_ex(i32* %66, i32* %67, i32* null, i32* null, i32* null, i32 %68)
  %70 = load i32*, i32** %14, align 8
  %71 = load i64, i64* %13, align 8
  %72 = udiv i64 %71, 8
  %73 = call i32 @EVP_CIPHER_CTX_set_key_length(i32* %70, i64 %72)
  %74 = load i32*, i32** %14, align 8
  %75 = call i32 @EVP_CIPHER_CTX_set_padding(i32* %74, i32 0)
  %76 = mul nuw i64 4, %20
  %77 = trunc i64 %76 to i32
  %78 = call i32 @bzero(i32* %22, i32 %77)
  %79 = load i32*, i32** %14, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @EVP_CipherInit_ex(i32* %79, i32* null, i32* null, i32* %80, i32* %22, i32 %81)
  %83 = load i32*, i32** %14, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = load i64, i64* %11, align 8
  %87 = call i64 @EVP_CipherUpdate(i32* %83, i32* %84, i32* %18, i32* %85, i64 %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %65
  %90 = load i32*, i32** %14, align 8
  %91 = call i32 @EVP_CIPHER_CTX_free(i32* %90)
  %92 = load i32, i32* @EINVAL, align 4
  store i32 %92, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %118

93:                                               ; preds = %65
  %94 = load i32, i32* %18, align 4
  %95 = load i64, i64* %11, align 8
  %96 = trunc i64 %95 to i32
  %97 = icmp eq i32 %94, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load i32*, i32** %14, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %18, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = call i64 @EVP_CipherFinal_ex(i32* %100, i32* %104, i32* %18)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %93
  %108 = load i32*, i32** %14, align 8
  %109 = call i32 @EVP_CIPHER_CTX_free(i32* %108)
  %110 = load i32, i32* @EINVAL, align 4
  store i32 %110, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %118

111:                                              ; preds = %93
  %112 = load i32, i32* %18, align 4
  %113 = icmp eq i32 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load i32*, i32** %14, align 8
  %117 = call i32 @EVP_CIPHER_CTX_free(i32* %116)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %118

118:                                              ; preds = %111, %107, %89, %63, %57, %52, %39
  %119 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %119)
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32* @EVP_enc_null(...) #2

declare dso_local i32* @EVP_aes_128_cbc(...) #2

declare dso_local i32* @EVP_aes_192_cbc(...) #2

declare dso_local i32* @EVP_aes_256_cbc(...) #2

declare dso_local i32* @EVP_bf_cbc(...) #2

declare dso_local i32* @EVP_camellia_128_cbc(...) #2

declare dso_local i32* @EVP_camellia_192_cbc(...) #2

declare dso_local i32* @EVP_camellia_256_cbc(...) #2

declare dso_local i32* @EVP_des_ede3_cbc(...) #2

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #2

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @EVP_CIPHER_CTX_set_key_length(i32*, i64) #2

declare dso_local i32 @EVP_CIPHER_CTX_set_padding(i32*, i32) #2

declare dso_local i32 @bzero(i32*, i32) #2

declare dso_local i64 @EVP_CipherUpdate(i32*, i32*, i32*, i32*, i64) #2

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #2

declare dso_local i64 @EVP_CipherFinal_ex(i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
