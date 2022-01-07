; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/portsnap/phttpget/extr_phttpget.c_b64enc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/portsnap/phttpget/extr_phttpget.c_b64enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b64enc.base64 = internal constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@SIZE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @b64enc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @b64enc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @strlen(i8* %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i32, i32* @SIZE_MAX, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sdiv i32 %15, 4
  %17 = mul nsw i32 %16, 3
  %18 = sub nsw i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = icmp ugt i64 %13, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %108

22:                                               ; preds = %1
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %23, 2
  %25 = udiv i64 %24, 3
  %26 = mul i64 4, %25
  %27 = add i64 %26, 1
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i8* @malloc(i64 %28)
  store i8* %29, i8** %5, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i8* null, i8** %2, align 8
  br label %108

32:                                               ; preds = %22
  %33 = load i8*, i8** %5, align 8
  %34 = load i64, i64* %8, align 8
  %35 = sub i64 %34, 1
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8 0, i8* %36, align 1
  %37 = load i8*, i8** %3, align 8
  store i8* %37, i8** %4, align 8
  %38 = load i8*, i8** %5, align 8
  store i8* %38, i8** %6, align 8
  br label %39

39:                                               ; preds = %101, %32
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %106

42:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %61, %42
  %44 = load i32, i32* %10, align 4
  %45 = icmp ult i32 %44, 3
  br i1 %45, label %46, label %64

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = shl i32 %47, 8
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = load i64, i64* %7, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %4, align 8
  %56 = load i8, i8* %54, align 1
  %57 = sext i8 %56 to i32
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %53, %46
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %10, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %43

64:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %93, %64
  %66 = load i32, i32* %10, align 4
  %67 = icmp ult i32 %66, 4
  br i1 %67, label %68, label %96

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = zext i32 %69 to i64
  %71 = load i64, i64* %7, align 8
  %72 = add i64 %71, 1
  %73 = icmp ule i64 %70, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  %76 = ashr i32 %75, 18
  %77 = and i32 %76, 63
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [65 x i8], [65 x i8]* @b64enc.base64, i64 0, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = load i8*, i8** %6, align 8
  %82 = load i32, i32* %10, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  store i8 %80, i8* %84, align 1
  br label %90

85:                                               ; preds = %68
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %10, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8 61, i8* %89, align 1
  br label %90

90:                                               ; preds = %85, %74
  %91 = load i32, i32* %9, align 4
  %92 = shl i32 %91, 6
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %10, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %65

96:                                               ; preds = %65
  %97 = load i64, i64* %7, align 8
  %98 = icmp ule i64 %97, 3
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %106

100:                                              ; preds = %96
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %7, align 8
  %103 = sub i64 %102, 3
  store i64 %103, i64* %7, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 4
  store i8* %105, i8** %6, align 8
  br label %39

106:                                              ; preds = %99, %39
  %107 = load i8*, i8** %5, align 8
  store i8* %107, i8** %2, align 8
  br label %108

108:                                              ; preds = %106, %31, %21
  %109 = load i8*, i8** %2, align 8
  ret i8* %109
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
