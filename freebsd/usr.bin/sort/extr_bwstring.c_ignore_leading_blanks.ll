; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_ignore_leading_blanks.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_ignore_leading_blanks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwstring = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32* }

@MB_CUR_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bwstring* @ignore_leading_blanks(%struct.bwstring* %0) #0 {
  %2 = alloca %struct.bwstring*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.bwstring* %0, %struct.bwstring** %2, align 8
  %11 = load i32, i32* @MB_CUR_MAX, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %70

13:                                               ; preds = %1
  %14 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %15 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %3, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %21 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %19, i64 %23
  store i8* %24, i8** %4, align 8
  br label %25

25:                                               ; preds = %36, %13
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = icmp ult i8* %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call i64 @isblank(i8 zeroext %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i1 [ false, %25 ], [ %33, %29 ]
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  br label %25

39:                                               ; preds = %34
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = icmp ne i8* %40, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %39
  %44 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %45 = call i32 @BWSLEN(%struct.bwstring* %44)
  %46 = sext i32 %45 to i64
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = sub nsw i64 %46, %51
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %57, %43
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = icmp ult i8* %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i8*, i8** %5, align 8
  %59 = load i8, i8* %58, align 1
  %60 = load i8*, i8** %3, align 8
  store i8 %59, i8* %60, align 1
  %61 = load i8*, i8** %3, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %3, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %5, align 8
  br label %53

65:                                               ; preds = %53
  %66 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @bws_setlen(%struct.bwstring* %66, i64 %67)
  br label %69

69:                                               ; preds = %65, %39
  br label %128

70:                                               ; preds = %1
  %71 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %72 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %9, align 8
  %75 = load i32*, i32** %9, align 8
  store i32* %75, i32** %7, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %78 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  store i32* %81, i32** %8, align 8
  br label %82

82:                                               ; preds = %93, %70
  %83 = load i32*, i32** %9, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = icmp ult i32* %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @iswblank(i32 %88)
  %90 = icmp ne i64 %89, 0
  br label %91

91:                                               ; preds = %86, %82
  %92 = phi i1 [ false, %82 ], [ %90, %86 ]
  br i1 %92, label %93, label %96

93:                                               ; preds = %91
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %9, align 8
  br label %82

96:                                               ; preds = %91
  %97 = load i32*, i32** %9, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = icmp ne i32* %97, %98
  br i1 %99, label %100, label %127

100:                                              ; preds = %96
  %101 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %102 = call i32 @BWSLEN(%struct.bwstring* %101)
  %103 = sext i32 %102 to i64
  %104 = load i32*, i32** %9, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = ptrtoint i32* %104 to i64
  %107 = ptrtoint i32* %105 to i64
  %108 = sub i64 %106, %107
  %109 = sdiv exact i64 %108, 4
  %110 = sub nsw i64 %103, %109
  store i64 %110, i64* %10, align 8
  br label %111

111:                                              ; preds = %115, %100
  %112 = load i32*, i32** %9, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = icmp ult i32* %112, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %111
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %7, align 8
  store i32 %117, i32* %118, align 4
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %7, align 8
  %121 = load i32*, i32** %9, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %9, align 8
  br label %111

123:                                              ; preds = %111
  %124 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %125 = load i64, i64* %10, align 8
  %126 = call i32 @bws_setlen(%struct.bwstring* %124, i64 %125)
  br label %127

127:                                              ; preds = %123, %96
  br label %128

128:                                              ; preds = %127, %69
  %129 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  ret %struct.bwstring* %129
}

declare dso_local i64 @isblank(i8 zeroext) #1

declare dso_local i32 @BWSLEN(%struct.bwstring*) #1

declare dso_local i32 @bws_setlen(%struct.bwstring*, i64) #1

declare dso_local i64 @iswblank(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
