; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chap_ms.c_GenerateAuthenticatorResponse.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chap_ms.c_GenerateAuthenticatorResponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@__const.GenerateAuthenticatorResponse.Magic1 = private unnamed_addr constant [39 x i8] c"Magic server to client signing constant", align 16
@__const.GenerateAuthenticatorResponse.Magic2 = private unnamed_addr constant [41 x i8] c"Pad to make it do more than one iteration", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GenerateAuthenticatorResponse(i8* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [16 x i8], align 16
  %17 = alloca [16 x i8], align 16
  %18 = alloca [8 x i8], align 1
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca [39 x i8], align 16
  %23 = alloca [41 x i8], align 16
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %24 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %19, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %20, align 8
  %28 = bitcast [39 x i8]* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 16 getelementptr inbounds ([39 x i8], [39 x i8]* @__const.GenerateAuthenticatorResponse.Magic1, i32 0, i32 0), i64 39, i1 false)
  %29 = bitcast [41 x i8]* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %29, i8* align 16 getelementptr inbounds ([41 x i8], [41 x i8]* @__const.GenerateAuthenticatorResponse.Magic2, i32 0, i32 0), i64 41, i1 false)
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %33 = call i32 @NtPasswordHash(i8* %30, i32 %31, i8* %32)
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %36 = call i32 @HashNtPasswordHash(i8* %34, i8* %35)
  %37 = call i32 @SHA1_Init(i32* %15)
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %17, i64 0, i64 0
  %39 = call i32 @SHA1_Update(i32* %15, i8* %38, i32 16)
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @SHA1_Update(i32* %15, i8* %40, i32 24)
  %42 = getelementptr inbounds [39 x i8], [39 x i8]* %22, i64 0, i64 0
  %43 = call i32 @SHA1_Update(i32* %15, i8* %42, i32 39)
  %44 = call i32 @SHA1_Final(i8* %27, i32* %15)
  %45 = load i8*, i8** %11, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 0
  %49 = call i32 @ChallengeHash(i8* %45, i8* %46, i8* %47, i8* %48)
  %50 = call i32 @SHA1_Init(i32* %15)
  %51 = call i32 @SHA1_Update(i32* %15, i8* %27, i32 20)
  %52 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 0
  %53 = call i32 @SHA1_Update(i32* %15, i8* %52, i32 8)
  %54 = getelementptr inbounds [41 x i8], [41 x i8]* %23, i64 0, i64 0
  %55 = call i32 @SHA1_Update(i32* %15, i8* %54, i32 41)
  %56 = load i8*, i8** %14, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  store i8 83, i8* %57, align 1
  %58 = load i8*, i8** %14, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  store i8 61, i8* %59, align 1
  %60 = load i8*, i8** %14, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = call i32 @SHA1_End(i32* %15, i8* %61)
  store i32 2, i32* %21, align 4
  br label %63

63:                                               ; preds = %77, %7
  %64 = load i32, i32* %21, align 4
  %65 = icmp slt i32 %64, 42
  br i1 %65, label %66, label %80

66:                                               ; preds = %63
  %67 = load i8*, i8** %14, align 8
  %68 = load i32, i32* %21, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = call signext i8 @toupper(i8 signext %71)
  %73 = load i8*, i8** %14, align 8
  %74 = load i32, i32* %21, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  store i8 %72, i8* %76, align 1
  br label %77

77:                                               ; preds = %66
  %78 = load i32, i32* %21, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %21, align 4
  br label %63

80:                                               ; preds = %63
  %81 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %81)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @NtPasswordHash(i8*, i32, i8*) #3

declare dso_local i32 @HashNtPasswordHash(i8*, i8*) #3

declare dso_local i32 @SHA1_Init(i32*) #3

declare dso_local i32 @SHA1_Update(i32*, i8*, i32) #3

declare dso_local i32 @SHA1_Final(i8*, i32*) #3

declare dso_local i32 @ChallengeHash(i8*, i8*, i8*, i8*) #3

declare dso_local i32 @SHA1_End(i32*, i8*) #3

declare dso_local signext i8 @toupper(i8 signext) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
