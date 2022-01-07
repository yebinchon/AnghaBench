; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_key.c_g_eli_mkey_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_key.c_g_eli_mkey_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_eli_metadata = type { i8*, i32, i32, i32 }

@G_ELI_MKEYLEN = common dso_local global i32 0, align 4
@SHA512_MDLEN = common dso_local global i32 0, align 4
@G_ELI_USERKEYLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@G_ELI_DATAIVKEYLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_eli_mkey_decrypt(%struct.g_eli_metadata* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.g_eli_metadata*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.g_eli_metadata* %0, %struct.g_eli_metadata** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @G_ELI_MKEYLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i32, i32* @SHA512_MDLEN, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @G_ELI_MKEYLEN, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %86

28:                                               ; preds = %4
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* @G_ELI_USERKEYLEN, align 4
  %31 = call i32 @g_eli_crypto_hmac(i8* %29, i32 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i8* %23, i32 0)
  %32 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %6, align 8
  %33 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* @G_ELI_MKEYLEN, align 4
  %36 = load i32, i32* %9, align 4
  %37 = mul i32 %35, %36
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %34, i64 %38
  store i8* %39, i8** %13, align 8
  %40 = load i32, i32* %9, align 4
  %41 = shl i32 1, %40
  store i32 %41, i32* %14, align 4
  %42 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %6, align 8
  %43 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %14, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %28
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %86

49:                                               ; preds = %28
  %50 = load i8*, i8** %13, align 8
  %51 = load i32, i32* @G_ELI_MKEYLEN, align 4
  %52 = call i32 @bcopy(i8* %50, i8* %20, i32 %51)
  %53 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %6, align 8
  %54 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @G_ELI_MKEYLEN, align 4
  %57 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %6, align 8
  %58 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @g_eli_crypto_decrypt(i32 %55, i8* %20, i32 %56, i8* %23, i32 %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %49
  %64 = trunc i64 %18 to i32
  %65 = call i32 @explicit_bzero(i8* %20, i32 %64)
  %66 = trunc i64 %22 to i32
  %67 = call i32 @explicit_bzero(i8* %23, i32 %66)
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %86

69:                                               ; preds = %49
  %70 = load i8*, i8** %7, align 8
  %71 = call i64 @g_eli_mkey_verify(i8* %20, i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* @G_ELI_DATAIVKEYLEN, align 4
  %76 = call i32 @bcopy(i8* %20, i8* %74, i32 %75)
  %77 = trunc i64 %18 to i32
  %78 = call i32 @explicit_bzero(i8* %20, i32 %77)
  %79 = trunc i64 %22 to i32
  %80 = call i32 @explicit_bzero(i8* %23, i32 %79)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %86

81:                                               ; preds = %69
  %82 = trunc i64 %22 to i32
  %83 = call i32 @explicit_bzero(i8* %23, i32 %82)
  %84 = trunc i64 %18 to i32
  %85 = call i32 @explicit_bzero(i8* %20, i32 %84)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %86

86:                                               ; preds = %81, %73, %63, %48, %27
  %87 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @g_eli_crypto_hmac(i8*, i32, i8*, i32, i8*, i32) #2

declare dso_local i32 @bcopy(i8*, i8*, i32) #2

declare dso_local i32 @g_eli_crypto_decrypt(i32, i8*, i32, i8*, i32) #2

declare dso_local i32 @explicit_bzero(i8*, i32) #2

declare dso_local i64 @g_eli_mkey_verify(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
