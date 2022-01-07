; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptocheck.c_run_hash_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptocheck.c_run_hash_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alg = type { i8*, i32* (...)* }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s (%zu) mismatch in trailer:\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%s (%zu) mismatch:\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"control:\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"test (cryptodev device %s):\0A\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"%s (%zu) matched (cryptodev device %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alg*, i64)* @run_hash_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_hash_test(%struct.alg* %0, i64 %1) #0 {
  %3 = alloca %struct.alg*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.alg* %0, %struct.alg** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %19 = trunc i64 %13 to i32
  %20 = call i32 @memset(i8* %15, i32 60, i32 %19)
  %21 = trunc i64 %17 to i32
  %22 = call i32 @memset(i8* %18, i32 60, i32 %21)
  %23 = load %struct.alg*, %struct.alg** %3, align 8
  %24 = getelementptr inbounds %struct.alg, %struct.alg* %23, i32 0, i32 1
  %25 = load i32* (...)*, i32* (...)** %24, align 8
  %26 = call i32* (...) %25()
  store i32* %26, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @EVP_MD_size(i32* %27)
  %29 = sext i32 %28 to i64
  %30 = icmp ule i64 %29, %13
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i64, i64* %4, align 8
  %34 = call i8* @alloc_buffer(i64 %33)
  store i8* %34, i8** %6, align 8
  %35 = trunc i64 %13 to i32
  store i32 %35, i32* %7, align 4
  %36 = load %struct.alg*, %struct.alg** %3, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @openssl_hash(%struct.alg* %36, i32* %37, i8* %38, i64 %39, i8* %15, i32* %7)
  %41 = load %struct.alg*, %struct.alg** %3, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @ocf_hash(%struct.alg* %41, i8* %42, i64 %43, i8* %18, i32* %8)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %2
  br label %89

47:                                               ; preds = %2
  %48 = trunc i64 %13 to i32
  %49 = call i64 @memcmp(i8* %15, i8* %18, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %77

51:                                               ; preds = %47
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @EVP_MD_size(i32* %52)
  %54 = call i64 @memcmp(i8* %15, i8* %18, i32 %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.alg*, %struct.alg** %3, align 8
  %58 = getelementptr inbounds %struct.alg, %struct.alg* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i64, i64* %4, align 8
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %59, i64 %60)
  br label %68

62:                                               ; preds = %51
  %63 = load %struct.alg*, %struct.alg** %3, align 8
  %64 = getelementptr inbounds %struct.alg, %struct.alg* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i64, i64* %4, align 8
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %65, i64 %66)
  br label %68

68:                                               ; preds = %62, %56
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %70 = trunc i64 %13 to i32
  %71 = call i32 @hexdump(i8* %15, i32 %70, i32* null, i32 0)
  %72 = load i32, i32* %8, align 4
  %73 = call i8* @crfind(i32 %72)
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  %75 = trunc i64 %17 to i32
  %76 = call i32 @hexdump(i8* %18, i32 %75, i32* null, i32 0)
  br label %89

77:                                               ; preds = %47
  %78 = load i64, i64* @verbose, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load %struct.alg*, %struct.alg** %3, align 8
  %82 = getelementptr inbounds %struct.alg, %struct.alg* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i64, i64* %4, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i8* @crfind(i32 %85)
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %83, i64 %84, i8* %86)
  br label %88

88:                                               ; preds = %80, %77
  br label %89

89:                                               ; preds = %88, %68, %46
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @free(i8* %90)
  %92 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %92)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @EVP_MD_size(i32*) #2

declare dso_local i8* @alloc_buffer(i64) #2

declare dso_local i32 @openssl_hash(%struct.alg*, i32*, i8*, i64, i8*, i32*) #2

declare dso_local i32 @ocf_hash(%struct.alg*, i8*, i64, i8*, i32*) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @hexdump(i8*, i32, i32*, i32) #2

declare dso_local i8* @crfind(i32) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
