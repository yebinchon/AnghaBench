; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bwscsbdup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bwscsbdup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwstring = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }

@MB_CUR_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"mbrtowc error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bwstring* @bwscsbdup(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bwstring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call %struct.bwstring* @bwsalloc(i64 %12)
  store %struct.bwstring* %13, %struct.bwstring** %5, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %105

16:                                               ; preds = %2
  %17 = load i32, i32* @MB_CUR_MAX, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %21 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @memcpy(i32 %23, i8* %24, i64 %25)
  br label %104

27:                                               ; preds = %16
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %28 = load i8*, i8** %3, align 8
  store i8* %28, i8** %7, align 8
  %29 = call i32 @memset(i32* %6, i32 0, i32 4)
  br label %30

30:                                               ; preds = %91, %27
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %92

34:                                               ; preds = %30
  %35 = load i32, i32* @MB_CUR_MAX, align 4
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %10, align 8
  %40 = sub i64 %38, %39
  %41 = icmp ugt i64 %37, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* %10, align 8
  %45 = sub i64 %43, %44
  store i64 %45, i64* %11, align 8
  br label %46

46:                                               ; preds = %42, %34
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i64, i64* %11, align 8
  %51 = call i64 @mbrlen(i8* %49, i64 %50, i32* %6)
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %8, align 8
  switch i64 %52, label %67 [
    i64 0, label %53
    i64 -1, label %53
    i64 -2, label %53
  ]

53:                                               ; preds = %46, %46, %46
  %54 = load i8*, i8** %7, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %59 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %9, align 8
  %64 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8 %57, i8* %64, align 1
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %10, align 8
  br label %91

67:                                               ; preds = %46
  %68 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %69 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %9, align 8
  %74 = getelementptr inbounds i8, i8* %71, i64 %72
  %75 = load i8*, i8** %7, align 8
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = load i64, i64* %8, align 8
  %79 = call i64 @mbrtowc(i8* %74, i8* %77, i64 %78, i32* %6)
  store i64 %79, i64* %11, align 8
  %80 = load i64, i64* %11, align 8
  %81 = icmp eq i64 %80, -1
  br i1 %81, label %85, label %82

82:                                               ; preds = %67
  %83 = load i64, i64* %11, align 8
  %84 = icmp eq i64 %83, -2
  br i1 %84, label %85, label %87

85:                                               ; preds = %82, %67
  %86 = call i32 @err(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %82
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* %10, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %10, align 8
  br label %91

91:                                               ; preds = %87, %53
  br label %30

92:                                               ; preds = %30
  %93 = load i64, i64* %9, align 8
  %94 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %95 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %97 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %101 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  store i8 0, i8* %103, align 1
  br label %104

104:                                              ; preds = %92, %19
  br label %105

105:                                              ; preds = %104, %2
  %106 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  ret %struct.bwstring* %106
}

declare dso_local %struct.bwstring* @bwsalloc(i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @mbrlen(i8*, i64, i32*) #1

declare dso_local i64 @mbrtowc(i8*, i8*, i64, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
