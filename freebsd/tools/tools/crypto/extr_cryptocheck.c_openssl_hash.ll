; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptocheck.c_openssl_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptocheck.c_openssl_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alg = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"OpenSSL %s HASH failed%s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alg*, i32*, i8*, i64, i8*, i32*)* @openssl_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @openssl_hash(%struct.alg* %0, i32* %1, i8* %2, i64 %3, i8* %4, i32* %5) #0 {
  %7 = alloca %struct.alg*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.alg* %0, %struct.alg** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %16 = call i32* (...) @EVP_MD_CTX_create()
  store i32* %16, i32** %13, align 8
  %17 = load i32*, i32** %13, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  br label %46

20:                                               ; preds = %6
  %21 = load i32*, i32** %13, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @EVP_DigestInit_ex(i32* %21, i32* %22, i32* null)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %46

27:                                               ; preds = %20
  %28 = load i32*, i32** %13, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @EVP_DigestUpdate(i32* %28, i8* %29, i64 %30)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %46

35:                                               ; preds = %27
  %36 = load i32*, i32** %13, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @EVP_DigestFinal_ex(i32* %36, i8* %37, i32* %38)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %46

43:                                               ; preds = %35
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @EVP_MD_CTX_destroy(i32* %44)
  br label %54

46:                                               ; preds = %42, %34, %26, %19
  %47 = load %struct.alg*, %struct.alg** %7, align 8
  %48 = getelementptr inbounds %struct.alg, %struct.alg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %14, align 8
  %51 = call i32 (...) @ERR_get_error()
  %52 = call i32 @ERR_error_string(i32 %51, i32* null)
  %53 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %49, i8* %50, i32 %52)
  br label %54

54:                                               ; preds = %46, %43
  ret void
}

declare dso_local i32* @EVP_MD_CTX_create(...) #1

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32*, i32*) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i64) #1

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #1

declare dso_local i32 @EVP_MD_CTX_destroy(i32*) #1

declare dso_local i32 @errx(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @ERR_error_string(i32, i32*) #1

declare dso_local i32 @ERR_get_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
