; ModuleID = '/home/carl/AnghaBench/git/compat/extr_inet_pton.c_inet_pton4.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_inet_pton.c_inet_pton4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inet_pton4.digits = internal constant [11 x i8] c"0123456789\00", align 1
@NS_INADDRSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @inet_pton4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_pton4(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i32, i32* @NS_INADDRSZ, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i8* %18, i8** %11, align 8
  store i8 0, i8* %18, align 1
  br label %19

19:                                               ; preds = %71, %2
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %4, align 8
  %22 = load i8, i8* %20, align 1
  %23 = sext i8 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %72

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = call i8* @strchr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @inet_pton4.digits, i64 0, i64 0), i32 %26)
  store i8* %27, i8** %12, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %56

29:                                               ; preds = %25
  %30 = load i8*, i8** %11, align 8
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = mul nsw i32 %32, 10
  %34 = sext i32 %33 to i64
  %35 = load i8*, i8** %12, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = sub i64 %36, ptrtoint ([11 x i8]* @inet_pton4.digits to i64)
  %38 = add nsw i64 %34, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ugt i32 %40, 255
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %80

43:                                               ; preds = %29
  %44 = load i32, i32* %13, align 4
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %11, align 8
  store i8 %45, i8* %46, align 1
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  %52 = icmp sgt i32 %51, 4
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %80

54:                                               ; preds = %49
  store i32 1, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %43
  br label %71

56:                                               ; preds = %25
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, 46
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 4
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %80

66:                                               ; preds = %62
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %11, align 8
  store i8 0, i8* %68, align 1
  store i32 0, i32* %6, align 4
  br label %70

69:                                               ; preds = %59, %56
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %80

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70, %55
  br label %19

72:                                               ; preds = %19
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 4
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %80

76:                                               ; preds = %72
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* @NS_INADDRSZ, align 4
  %79 = call i32 @memcpy(i8* %77, i8* %18, i32 %78)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %80

80:                                               ; preds = %76, %75, %69, %65, %53, %42
  %81 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strchr(i8*, i32) #2

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
