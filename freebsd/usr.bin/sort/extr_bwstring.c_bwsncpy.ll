; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bwsncpy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bwsncpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwstring = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@MB_CUR_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bwstring* @bwsncpy(%struct.bwstring* %0, %struct.bwstring* %1, i64 %2) #0 {
  %4 = alloca %struct.bwstring*, align 8
  %5 = alloca %struct.bwstring*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.bwstring* %0, %struct.bwstring** %4, align 8
  store %struct.bwstring* %1, %struct.bwstring** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %9 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %13 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ugt i64 %11, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %18 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %16, %3
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i64, i64* %6, align 8
  store i64 %25, i64* %7, align 8
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %29 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* @MB_CUR_MAX, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %51

32:                                               ; preds = %26
  %33 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %34 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %38 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @memcpy(i8* %36, i8* %40, i64 %41)
  %43 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %44 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %48 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  store i8 0, i8* %50, align 1
  br label %72

51:                                               ; preds = %26
  %52 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %53 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %57 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, 1
  %62 = call i64 @SIZEOF_WCHAR_STRING(i64 %61)
  %63 = call i32 @memcpy(i8* %55, i8* %59, i64 %62)
  %64 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %65 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %69 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  store i8 0, i8* %71, align 1
  br label %72

72:                                               ; preds = %51, %32
  %73 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  ret %struct.bwstring* %73
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @SIZEOF_WCHAR_STRING(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
