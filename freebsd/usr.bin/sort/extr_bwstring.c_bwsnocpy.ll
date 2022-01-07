; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bwsnocpy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bwsnocpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwstring = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@MB_CUR_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bwstring* @bwsnocpy(%struct.bwstring* %0, %struct.bwstring* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.bwstring*, align 8
  %6 = alloca %struct.bwstring*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.bwstring* %0, %struct.bwstring** %5, align 8
  store %struct.bwstring* %1, %struct.bwstring** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load %struct.bwstring*, %struct.bwstring** %6, align 8
  %12 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp uge i64 %10, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %4
  %16 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %17 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %20, align 1
  %21 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %22 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  br label %94

23:                                               ; preds = %4
  %24 = load %struct.bwstring*, %struct.bwstring** %6, align 8
  %25 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = sub i64 %26, %27
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %31 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ugt i64 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %23
  %35 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %36 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %34, %23
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i64, i64* %8, align 8
  store i64 %43, i64* %9, align 8
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %47 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i32, i32* @MB_CUR_MAX, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %71

50:                                               ; preds = %44
  %51 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %52 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.bwstring*, %struct.bwstring** %6, align 8
  %56 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @memcpy(i8* %54, i8* %60, i64 %61)
  %63 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %64 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %68 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  store i8 0, i8* %70, align 1
  br label %93

71:                                               ; preds = %44
  %72 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %73 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.bwstring*, %struct.bwstring** %6, align 8
  %77 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i64, i64* %7, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = load i64, i64* %9, align 8
  %83 = call i64 @SIZEOF_WCHAR_STRING(i64 %82)
  %84 = call i32 @memcpy(i8* %75, i8* %81, i64 %83)
  %85 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %86 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %90 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  store i8 0, i8* %92, align 1
  br label %93

93:                                               ; preds = %71, %50
  br label %94

94:                                               ; preds = %93, %15
  %95 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  ret %struct.bwstring* %95
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @SIZEOF_WCHAR_STRING(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
