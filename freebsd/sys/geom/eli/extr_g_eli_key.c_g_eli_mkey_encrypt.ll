; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_key.c_g_eli_mkey_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_key.c_g_eli_mkey_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA512_MDLEN = common dso_local global i32 0, align 4
@G_ELI_USERKEYLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@G_ELI_MKEYLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_eli_mkey_encrypt(i32 %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* @SHA512_MDLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @g_eli_mkey_hmac(i8* %16, i8* %17)
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* @G_ELI_USERKEYLEN, align 4
  %21 = call i32 @g_eli_crypto_hmac(i8* %19, i32 %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i8* %15, i32 0)
  %22 = load i32, i32* %5, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* @G_ELI_MKEYLEN, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @g_eli_crypto_encrypt(i32 %22, i8* %23, i32 %24, i8* %15, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = trunc i64 %13 to i32
  %28 = call i32 @explicit_bzero(i8* %15, i32 %27)
  %29 = load i32, i32* %11, align 4
  %30 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %30)
  ret i32 %29
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @g_eli_mkey_hmac(i8*, i8*) #2

declare dso_local i32 @g_eli_crypto_hmac(i8*, i32, i8*, i32, i8*, i32) #2

declare dso_local i32 @g_eli_crypto_encrypt(i32, i8*, i32, i8*, i32) #2

declare dso_local i32 @explicit_bzero(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
