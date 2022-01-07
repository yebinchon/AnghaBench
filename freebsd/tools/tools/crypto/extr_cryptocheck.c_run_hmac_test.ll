; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptocheck.c_run_hmac_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptocheck.c_run_hmac_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alg = type { i8*, i32* (...)* }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"OpenSSL %s (%zu) HMAC failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"%s (%zu) mismatch in trailer:\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%s (%zu) mismatch:\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"control:\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"test (cryptodev device %s):\0A\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"%s (%zu) matched (cryptodev device %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alg*, i64)* @run_hmac_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_hmac_test(%struct.alg* %0, i64 %1) #0 {
  %3 = alloca %struct.alg*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.alg* %0, %struct.alg** %3, align 8
  store i64 %1, i64* %4, align 8
  %14 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %21 = trunc i64 %15 to i32
  %22 = call i32 @memset(i8* %17, i32 60, i32 %21)
  %23 = trunc i64 %19 to i32
  %24 = call i32 @memset(i8* %20, i32 60, i32 %23)
  %25 = load %struct.alg*, %struct.alg** %3, align 8
  %26 = getelementptr inbounds %struct.alg, %struct.alg* %25, i32 0, i32 1
  %27 = load i32* (...)*, i32* (...)** %26, align 8
  %28 = call i32* (...) %27()
  store i32* %28, i32** %5, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @EVP_MD_size(i32* %29)
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %8, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @EVP_MD_size(i32* %32)
  %34 = sext i32 %33 to i64
  %35 = icmp ule i64 %34, %15
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i64, i64* %8, align 8
  %39 = call i8* @alloc_buffer(i64 %38)
  store i8* %39, i8** %6, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i8* @alloc_buffer(i64 %40)
  store i8* %41, i8** %7, align 8
  store i64 %15, i64* %9, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = load i64, i64* %4, align 8
  %48 = bitcast i8* %17 to i32*
  %49 = call i32* @HMAC(i32* %42, i8* %43, i64 %44, i32* %46, i64 %47, i32* %48, i64* %9)
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %2
  %52 = load %struct.alg*, %struct.alg** %3, align 8
  %53 = getelementptr inbounds %struct.alg, %struct.alg* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i64, i64* %4, align 8
  %56 = call i32 (...) @ERR_get_error()
  %57 = call i32 @ERR_error_string(i32 %56, i32* null)
  %58 = call i32 @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %54, i64 %55, i32 %57)
  br label %59

59:                                               ; preds = %51, %2
  %60 = load %struct.alg*, %struct.alg** %3, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i64, i64* %4, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @ocf_hmac(%struct.alg* %60, i8* %61, i64 %62, i8* %63, i64 %64, i8* %20, i32* %10)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %59
  br label %110

68:                                               ; preds = %59
  %69 = trunc i64 %15 to i32
  %70 = call i64 @memcmp(i8* %17, i8* %20, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %98

72:                                               ; preds = %68
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @EVP_MD_size(i32* %73)
  %75 = call i64 @memcmp(i8* %17, i8* %20, i32 %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load %struct.alg*, %struct.alg** %3, align 8
  %79 = getelementptr inbounds %struct.alg, %struct.alg* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i64, i64* %4, align 8
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %80, i64 %81)
  br label %89

83:                                               ; preds = %72
  %84 = load %struct.alg*, %struct.alg** %3, align 8
  %85 = getelementptr inbounds %struct.alg, %struct.alg* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i64, i64* %4, align 8
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %86, i64 %87)
  br label %89

89:                                               ; preds = %83, %77
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %91 = trunc i64 %15 to i32
  %92 = call i32 @hexdump(i8* %17, i32 %91, i32* null, i32 0)
  %93 = load i32, i32* %10, align 4
  %94 = call i8* @crfind(i32 %93)
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %94)
  %96 = trunc i64 %19 to i32
  %97 = call i32 @hexdump(i8* %20, i32 %96, i32* null, i32 0)
  br label %110

98:                                               ; preds = %68
  %99 = load i64, i64* @verbose, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = load %struct.alg*, %struct.alg** %3, align 8
  %103 = getelementptr inbounds %struct.alg, %struct.alg* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i64, i64* %4, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call i8* @crfind(i32 %106)
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* %104, i64 %105, i8* %107)
  br label %109

109:                                              ; preds = %101, %98
  br label %110

110:                                              ; preds = %109, %89, %67
  %111 = load i8*, i8** %7, align 8
  %112 = call i32 @free(i8* %111)
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @free(i8* %113)
  %115 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %115)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @EVP_MD_size(i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i8* @alloc_buffer(i64) #2

declare dso_local i32* @HMAC(i32*, i8*, i64, i32*, i64, i32*, i64*) #2

declare dso_local i32 @errx(i32, i8*, i8*, i64, i32) #2

declare dso_local i32 @ERR_error_string(i32, i32*) #2

declare dso_local i32 @ERR_get_error(...) #2

declare dso_local i32 @ocf_hmac(%struct.alg*, i8*, i64, i8*, i64, i8*, i32*) #2

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
