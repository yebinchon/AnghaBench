; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_aircrack-ptw-lib.c_guesskeybytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_aircrack-ptw-lib.c_guesskeybytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@n = common dso_local global i32 0, align 4
@IVBYTES = common dso_local global i32 0, align 4
@rc4initial = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i64*, i32)* @guesskeybytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guesskeybytes(i64* %0, i64* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* @n, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i64, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %21 = load i32, i32* @IVBYTES, align 4
  store i32 %21, i32* %14, align 4
  store i64 0, i64* %16, align 8
  %22 = load i32, i32* @rc4initial, align 4
  %23 = load i32, i32* @n, align 4
  %24 = call i32 @memcpy(i64* %20, i32 %22, i32 %23)
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %55, %4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @IVBYTES, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %25
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %20, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %5, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %33, %38
  %40 = load i64, i64* %11, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %11, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %20, i64 %43
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %11, align 8
  %47 = getelementptr inbounds i64, i64* %20, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %20, i64 %50
  store i64 %48, i64* %51, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds i64, i64* %20, i64 %53
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %29
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  br label %25

58:                                               ; preds = %25
  store i32 0, i32* %13, align 4
  br label %59

59:                                               ; preds = %101, %58
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %104

63:                                               ; preds = %59
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64*, i64** %6, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %66, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = sub i64 %65, %71
  store i64 %72, i64* %12, align 8
  store i64 0, i64* %15, align 8
  br label %73

73:                                               ; preds = %79, %63
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* %15, align 8
  %76 = getelementptr inbounds i64, i64* %20, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i64, i64* %15, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %15, align 8
  br label %73

82:                                               ; preds = %73
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %20, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %16, align 8
  %88 = add i64 %87, %86
  store i64 %88, i64* %16, align 8
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* %16, align 8
  %91 = add i64 %89, %90
  %92 = load i64, i64* %15, align 8
  %93 = sub i64 %92, %91
  store i64 %93, i64* %15, align 8
  %94 = load i64, i64* %15, align 8
  %95 = load i64*, i64** %7, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  store i64 %94, i64* %98, align 8
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %14, align 4
  br label %101

101:                                              ; preds = %82
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %13, align 4
  br label %59

104:                                              ; preds = %59
  %105 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %105)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i64*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
