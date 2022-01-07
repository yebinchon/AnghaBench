; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bws_month_score.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bws_month_score.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwstring = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32* }

@MB_CUR_MAX = common dso_local global i32 0, align 4
@cmonths = common dso_local global i64* null, align 8
@wmonths = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bws_month_score(%struct.bwstring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwstring*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.bwstring* %0, %struct.bwstring** %3, align 8
  %10 = load i32, i32* @MB_CUR_MAX, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %67

12:                                               ; preds = %1
  %13 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %14 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %19 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %17, i64 %21
  store i8* %22, i8** %4, align 8
  br label %23

23:                                               ; preds = %34, %12
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call i64 @isblank(i8 zeroext %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = icmp ult i8* %29, %30
  br label %32

32:                                               ; preds = %28, %23
  %33 = phi i1 [ false, %23 ], [ %31, %28 ]
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %5, align 8
  br label %23

37:                                               ; preds = %32
  store i32 11, i32* %6, align 4
  br label %38

38:                                               ; preds = %63, %37
  %39 = load i32, i32* %6, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %38
  %42 = load i64*, i64** @cmonths, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %41
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i64*, i64** @cmonths, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i64 @strstr(i8* %50, i8* %56)
  %58 = inttoptr i64 %57 to i8*
  %59 = icmp eq i8* %49, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %121

62:                                               ; preds = %48, %41
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %6, align 4
  br label %38

66:                                               ; preds = %38
  br label %120

67:                                               ; preds = %1
  %68 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %69 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %8, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %74 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  store i32* %77, i32** %7, align 8
  br label %78

78:                                               ; preds = %89, %67
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @iswblank(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i32*, i32** %8, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = icmp ult i32* %84, %85
  br label %87

87:                                               ; preds = %83, %78
  %88 = phi i1 [ false, %78 ], [ %86, %83 ]
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = load i32*, i32** %8, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %8, align 8
  br label %78

92:                                               ; preds = %87
  store i32 11, i32* %9, align 4
  br label %93

93:                                               ; preds = %116, %92
  %94 = load i32, i32* %9, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %119

96:                                               ; preds = %93
  %97 = load i64*, i64** @wmonths, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %96
  %104 = load i32*, i32** %8, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = load i64*, i64** @wmonths, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = call i32* @wcsstr(i32* %105, i64 %110)
  %112 = icmp eq i32* %104, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %103
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %2, align 4
  br label %121

115:                                              ; preds = %103, %96
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %9, align 4
  br label %93

119:                                              ; preds = %93
  br label %120

120:                                              ; preds = %119, %66
  store i32 -1, i32* %2, align 4
  br label %121

121:                                              ; preds = %120, %113, %60
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i64 @isblank(i8 zeroext) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i64 @iswblank(i32) #1

declare dso_local i32* @wcsstr(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
