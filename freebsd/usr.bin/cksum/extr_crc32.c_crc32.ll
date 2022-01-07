; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/cksum/extr_crc32.c_crc32.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/cksum/extr_crc32.c_crc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@crc32_total = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crc32(i32 %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 -1, i32* %8, align 4
  %15 = load i32, i32* @BUFSIZ, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  store i64 0, i64* %10, align 8
  %19 = load i32, i32* @crc32_total, align 4
  %20 = xor i32 %19, -1
  store i32 %20, i32* @crc32_total, align 4
  br label %21

21:                                               ; preds = %47, %3
  %22 = load i32, i32* %5, align 4
  %23 = trunc i64 %16 to i32
  %24 = call i32 @read(i32 %22, i8* %18, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %10, align 8
  %30 = add nsw i64 %29, %28
  store i64 %30, i64* %10, align 8
  store i8* %18, i8** %13, align 8
  br label %31

31:                                               ; preds = %44, %26
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %9, align 4
  %34 = icmp ne i32 %32, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = load i8*, i8** %13, align 8
  %38 = load i8, i8* %37, align 1
  %39 = call i32 @CRC(i32 %36, i8 signext %38)
  %40 = load i32, i32* @crc32_total, align 4
  %41 = load i8*, i8** %13, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i32 @CRC(i32 %40, i8 signext %42)
  br label %44

44:                                               ; preds = %35
  %45 = load i8*, i8** %13, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %13, align 8
  br label %31

47:                                               ; preds = %31
  br label %21

48:                                               ; preds = %21
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %60

52:                                               ; preds = %48
  %53 = load i64, i64* %10, align 8
  %54 = load i64*, i64** %7, align 8
  store i64 %53, i64* %54, align 8
  %55 = load i32, i32* %8, align 4
  %56 = xor i32 %55, -1
  %57 = load i32*, i32** %6, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @crc32_total, align 4
  %59 = xor i32 %58, -1
  store i32 %59, i32* @crc32_total, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %60

60:                                               ; preds = %52, %51
  %61 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @CRC(i32, i8 signext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
