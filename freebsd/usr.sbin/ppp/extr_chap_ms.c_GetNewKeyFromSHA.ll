; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chap_ms.c_GetNewKeyFromSHA.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chap_ms.c_GetNewKeyFromSHA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@SHA1_Pad1 = common dso_local global i8* null, align 8
@SHA1_Pad2 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetNewKeyFromSHA(i8* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %10, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %11, align 8
  %16 = call i32 @SHA1_Init(i32* %9)
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %7, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @SHA1_Update(i32* %9, i8* %17, i32 %19)
  %21 = load i8*, i8** @SHA1_Pad1, align 8
  %22 = call i32 @SHA1_Update(i32* %9, i8* %21, i32 40)
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @SHA1_Update(i32* %9, i8* %23, i32 %25)
  %27 = load i8*, i8** @SHA1_Pad2, align 8
  %28 = call i32 @SHA1_Update(i32* %9, i8* %27, i32 40)
  %29 = call i32 @SHA1_Final(i8* %15, i32* %9)
  %30 = load i8*, i8** %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @memcpy(i8* %30, i8* %15, i64 %31)
  %33 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %33)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SHA1_Init(i32*) #2

declare dso_local i32 @SHA1_Update(i32*, i8*, i32) #2

declare dso_local i32 @SHA1_Final(i8*, i32*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
