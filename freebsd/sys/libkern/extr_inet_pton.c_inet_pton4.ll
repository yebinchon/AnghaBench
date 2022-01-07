; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/extr_inet_pton.c_inet_pton4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/extr_inet_pton.c_inet_pton4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inet_pton4.digits = internal constant [11 x i8] c"0123456789\00", align 1
@NS_INADDRSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @inet_pton4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_pton4(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32* %13, i32** %10, align 8
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %72, %2
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %4, align 8
  %17 = load i8, i8* %15, align 1
  %18 = sext i8 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %73

20:                                               ; preds = %14
  %21 = load i32, i32* %8, align 4
  %22 = call i8* @strchr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @inet_pton4.digits, i64 0, i64 0), i32 %21)
  store i8* %22, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %57

24:                                               ; preds = %20
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 10
  %28 = sext i32 %27 to i64
  %29 = load i8*, i8** %11, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = sub i64 %30, ptrtoint ([11 x i8]* @inet_pton4.digits to i64)
  %32 = add nsw i64 %28, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %24
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %81

41:                                               ; preds = %36, %24
  %42 = load i32, i32* %12, align 4
  %43 = icmp sgt i32 %42, 255
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %81

45:                                               ; preds = %41
  %46 = load i32, i32* %12, align 4
  %47 = load i32*, i32** %10, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  %53 = icmp sgt i32 %52, 4
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %81

55:                                               ; preds = %50
  store i32 1, i32* %6, align 4
  br label %56

56:                                               ; preds = %55, %45
  br label %72

57:                                               ; preds = %20
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 46
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %64, 4
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %81

67:                                               ; preds = %63
  %68 = load i32*, i32** %10, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %10, align 8
  store i32 0, i32* %69, align 4
  store i32 0, i32* %6, align 4
  br label %71

70:                                               ; preds = %60, %57
  store i32 0, i32* %3, align 4
  br label %81

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71, %56
  br label %14

73:                                               ; preds = %14
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 4
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %81

77:                                               ; preds = %73
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %80 = call i32 @memcpy(i32* %78, i32* %79, i32 4)
  store i32 1, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %76, %70, %66, %54, %44, %40
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
