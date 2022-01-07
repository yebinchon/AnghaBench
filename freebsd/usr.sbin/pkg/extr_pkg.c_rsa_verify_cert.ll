; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_pkg.c_rsa_verify_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_pkg.c_rsa_verify_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA256_DIGEST_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"lseek\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Error creating SHA256 hash for package\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Error reading public key\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i32, i8*, i32)* @rsa_verify_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_verify_cert(i32 %0, i8* %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca [1024 x i8], align 16
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %19 = load i32, i32* @SHA256_DIGEST_LENGTH, align 4
  %20 = mul nsw i32 %19, 2
  %21 = add nsw i32 %20, 2
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %15, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %16, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %13, align 8
  store i32 0, i32* %18, align 4
  %25 = call i32 (...) @SSL_load_error_strings()
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @lseek(i32 %26, i32 0, i32 0)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = call i32 @warn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %99

31:                                               ; preds = %6
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @sha256_fd(i32 %32, i8* %24)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %99

37:                                               ; preds = %31
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i8*, i8** %8, align 8
  %42 = call i32* @load_public_key_file(i8* %41)
  store i32* %42, i32** %14, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %99

46:                                               ; preds = %40
  br label %55

47:                                               ; preds = %37
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32* @load_public_key_buf(i8* %48, i32 %49)
  store i32* %50, i32** %14, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %99

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %46
  %56 = call i32* (...) @EVP_MD_CTX_create()
  store i32* %56, i32** %13, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = call i32 (...) @ERR_get_error()
  %60 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %61 = call i32 @ERR_error_string(i32 %59, i8* %60)
  %62 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %97

63:                                               ; preds = %55
  %64 = load i32*, i32** %13, align 8
  %65 = call i32 (...) @EVP_sha256()
  %66 = load i32*, i32** %14, align 8
  %67 = call i32 @EVP_DigestVerifyInit(i32* %64, i32* null, i32 %65, i32* null, i32* %66)
  %68 = icmp ne i32 %67, 1
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = call i32 (...) @ERR_get_error()
  %71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %72 = call i32 @ERR_error_string(i32 %70, i8* %71)
  %73 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  br label %97

74:                                               ; preds = %63
  %75 = load i32*, i32** %13, align 8
  %76 = call i32 @strlen(i8* %24)
  %77 = call i32 @EVP_DigestVerifyUpdate(i32* %75, i8* %24, i32 %76)
  %78 = icmp ne i32 %77, 1
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = call i32 (...) @ERR_get_error()
  %81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %82 = call i32 @ERR_error_string(i32 %80, i8* %81)
  %83 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  br label %97

84:                                               ; preds = %74
  %85 = load i32*, i32** %13, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @EVP_DigestVerifyFinal(i32* %85, i8* %86, i32 %87)
  %89 = icmp ne i32 %88, 1
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = call i32 (...) @ERR_get_error()
  %92 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %93 = call i32 @ERR_error_string(i32 %91, i8* %92)
  %94 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  br label %97

95:                                               ; preds = %84
  store i32 1, i32* %18, align 4
  %96 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %99

97:                                               ; preds = %90, %79, %69, %58
  %98 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %95, %52, %44, %35, %29
  %100 = load i32*, i32** %14, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32*, i32** %14, align 8
  %104 = call i32 @EVP_PKEY_free(i32* %103)
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i32*, i32** %13, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32*, i32** %13, align 8
  %110 = call i32 @EVP_MD_CTX_destroy(i32* %109)
  br label %111

111:                                              ; preds = %108, %105
  %112 = call i32 (...) @ERR_free_strings()
  %113 = load i32, i32* %18, align 4
  %114 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %114)
  ret i32 %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SSL_load_error_strings(...) #2

declare dso_local i32 @lseek(i32, i32, i32) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i32 @sha256_fd(i32, i8*) #2

declare dso_local i32 @warnx(i8*, ...) #2

declare dso_local i32* @load_public_key_file(i8*) #2

declare dso_local i32* @load_public_key_buf(i8*, i32) #2

declare dso_local i32* @EVP_MD_CTX_create(...) #2

declare dso_local i32 @ERR_error_string(i32, i8*) #2

declare dso_local i32 @ERR_get_error(...) #2

declare dso_local i32 @EVP_DigestVerifyInit(i32*, i32*, i32, i32*, i32*) #2

declare dso_local i32 @EVP_sha256(...) #2

declare dso_local i32 @EVP_DigestVerifyUpdate(i32*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @EVP_DigestVerifyFinal(i32*, i8*, i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @EVP_PKEY_free(i32*) #2

declare dso_local i32 @EVP_MD_CTX_destroy(i32*) #2

declare dso_local i32 @ERR_free_strings(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
