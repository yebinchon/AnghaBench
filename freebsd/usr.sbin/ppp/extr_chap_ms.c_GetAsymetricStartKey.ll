; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chap_ms.c_GetAsymetricStartKey.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chap_ms.c_GetAsymetricStartKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@GetAsymetricStartKey.Magic2 = internal global [84 x i8] c"On the client side, this is the send key; on the server side, it is the receive key.", align 16
@GetAsymetricStartKey.Magic3 = internal global [84 x i8] c"On the client side, this is the receive key; on the server side, it is the send key.", align 16
@SHA1_Pad1 = common dso_local global i8* null, align 8
@SHA1_Pad2 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetAsymetricStartKey(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i8* getelementptr inbounds ([84 x i8], [84 x i8]* @GetAsymetricStartKey.Magic3, i64 0, i64 0), i8** %14, align 8
  br label %26

25:                                               ; preds = %21
  store i8* getelementptr inbounds ([84 x i8], [84 x i8]* @GetAsymetricStartKey.Magic2, i64 0, i64 0), i8** %14, align 8
  br label %26

26:                                               ; preds = %25, %24
  br label %33

27:                                               ; preds = %5
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i8* getelementptr inbounds ([84 x i8], [84 x i8]* @GetAsymetricStartKey.Magic2, i64 0, i64 0), i8** %14, align 8
  br label %32

31:                                               ; preds = %27
  store i8* getelementptr inbounds ([84 x i8], [84 x i8]* @GetAsymetricStartKey.Magic3, i64 0, i64 0), i8** %14, align 8
  br label %32

32:                                               ; preds = %31, %30
  br label %33

33:                                               ; preds = %32, %26
  %34 = call i32 @SHA1_Init(i32* %13)
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @SHA1_Update(i32* %13, i8* %35, i32 16)
  %37 = load i8*, i8** @SHA1_Pad1, align 8
  %38 = call i32 @SHA1_Update(i32* %13, i8* %37, i32 40)
  %39 = load i8*, i8** %14, align 8
  %40 = call i32 @SHA1_Update(i32* %13, i8* %39, i32 84)
  %41 = load i8*, i8** @SHA1_Pad2, align 8
  %42 = call i32 @SHA1_Update(i32* %13, i8* %41, i32 40)
  %43 = call i32 @SHA1_Final(i8* %18, i32* %13)
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @memcpy(i8* %44, i8* %18, i32 %45)
  %47 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %47)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SHA1_Init(i32*) #2

declare dso_local i32 @SHA1_Update(i32*, i8*, i32) #2

declare dso_local i32 @SHA1_Final(i8*, i32*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
