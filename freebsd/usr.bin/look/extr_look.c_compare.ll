; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/look/extr_look.c_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/look/extr_look.c_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fflag = common dso_local global i64 0, align 8
@dflag = common dso_local global i64 0, align 8
@LESS = common dso_local global i32 0, align 4
@GREATER = common dso_local global i32 0, align 4
@EQUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  br label %11

11:                                               ; preds = %81, %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp ne i32 %23, 10
  br label %25

25:                                               ; preds = %20, %16, %11
  %26 = phi i1 [ false, %16 ], [ false, %11 ], [ %24, %20 ]
  br i1 %26, label %27, label %87

27:                                               ; preds = %25
  %28 = load i8*, i8** %5, align 8
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %8, align 1
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = trunc i64 %35 to i32
  %37 = call i64 @mbrtowc(i8* %9, i8* %30, i32 %36, i32* null)
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp eq i64 %38, -1
  br i1 %39, label %43, label %40

40:                                               ; preds = %27
  %41 = load i64, i64* %10, align 8
  %42 = icmp eq i64 %41, -2
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %27
  %44 = load i8*, i8** %6, align 8
  %45 = load i8, i8* %44, align 1
  store i8 %45, i8* %9, align 1
  store i64 1, i64* %10, align 8
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i64, i64* @fflag, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i8, i8* %9, align 1
  %51 = call zeroext i8 @towlower(i8 zeroext %50)
  store i8 %51, i8* %9, align 1
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i64, i64* @dflag, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i8, i8* %9, align 1
  %57 = call i32 @iswalnum(i8 zeroext %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 -1
  store i8* %61, i8** %5, align 8
  br label %81

62:                                               ; preds = %55, %52
  %63 = load i8, i8* %8, align 1
  %64 = zext i8 %63 to i32
  %65 = load i8, i8* %9, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp ne i32 %64, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %62
  %69 = load i8, i8* %8, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8, i8* %9, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @LESS, align 4
  br label %78

76:                                               ; preds = %68
  %77 = load i32, i32* @GREATER, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  store i32 %79, i32* %4, align 4
  br label %98

80:                                               ; preds = %62
  br label %81

81:                                               ; preds = %80, %59
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %5, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 %84
  store i8* %86, i8** %6, align 8
  br label %11

87:                                               ; preds = %25
  %88 = load i8*, i8** %5, align 8
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @GREATER, align 4
  br label %96

94:                                               ; preds = %87
  %95 = load i32, i32* @EQUAL, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %78
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i64 @mbrtowc(i8*, i8*, i32, i32*) #1

declare dso_local zeroext i8 @towlower(i8 zeroext) #1

declare dso_local i32 @iswalnum(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
