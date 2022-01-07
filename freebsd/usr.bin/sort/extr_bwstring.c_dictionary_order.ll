; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_dictionary_order.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_dictionary_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwstring = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32* }

@MB_CUR_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bwstring* @dictionary_order(%struct.bwstring* %0) #0 {
  %2 = alloca %struct.bwstring*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.bwstring* %0, %struct.bwstring** %2, align 8
  %12 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %13 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %3, align 8
  %15 = load i32, i32* @MB_CUR_MAX, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %56

17:                                               ; preds = %1
  %18 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %19 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %25 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  store i8* %27, i8** %5, align 8
  br label %28

28:                                               ; preds = %54, %17
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ult i8* %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %7, align 1
  %35 = load i8, i8* %7, align 1
  %36 = call i64 @isalnum(i8 zeroext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load i8, i8* %7, align 1
  %40 = call i64 @isblank(i8 zeroext %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38, %32
  %43 = load i8, i8* %7, align 1
  %44 = load i8*, i8** %4, align 8
  store i8 %43, i8* %44, align 1
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %4, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %6, align 8
  br label %54

49:                                               ; preds = %38
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %6, align 8
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, -1
  store i64 %53, i64* %3, align 8
  br label %54

54:                                               ; preds = %49, %42
  br label %28

55:                                               ; preds = %28
  br label %95

56:                                               ; preds = %1
  %57 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %58 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %10, align 8
  %61 = load i32*, i32** %10, align 8
  store i32* %61, i32** %8, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %64 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32* %66, i32** %9, align 8
  br label %67

67:                                               ; preds = %93, %56
  %68 = load i32*, i32** %10, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = icmp ult i32* %68, %69
  br i1 %70, label %71, label %94

71:                                               ; preds = %67
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i64 @iswalnum(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %11, align 4
  %79 = call i64 @iswblank(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %77, %71
  %82 = load i32, i32* %11, align 4
  %83 = load i32*, i32** %8, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %8, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %10, align 8
  br label %93

88:                                               ; preds = %77
  %89 = load i32*, i32** %10, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %10, align 8
  %91 = load i64, i64* %3, align 8
  %92 = add i64 %91, -1
  store i64 %92, i64* %3, align 8
  br label %93

93:                                               ; preds = %88, %81
  br label %67

94:                                               ; preds = %67
  br label %95

95:                                               ; preds = %94, %55
  %96 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %97 = load i64, i64* %3, align 8
  %98 = call i32 @bws_setlen(%struct.bwstring* %96, i64 %97)
  %99 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  ret %struct.bwstring* %99
}

declare dso_local i64 @isalnum(i8 zeroext) #1

declare dso_local i64 @isblank(i8 zeroext) #1

declare dso_local i64 @iswalnum(i32) #1

declare dso_local i64 @iswblank(i32) #1

declare dso_local i32 @bws_setlen(%struct.bwstring*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
