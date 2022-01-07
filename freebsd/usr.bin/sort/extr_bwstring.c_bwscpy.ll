; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bwscpy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bwscpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwstring = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@MB_CUR_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bwscpy(%struct.bwstring* %0, %struct.bwstring* %1) #0 {
  %3 = alloca %struct.bwstring*, align 8
  %4 = alloca %struct.bwstring*, align 8
  %5 = alloca i64, align 8
  store %struct.bwstring* %0, %struct.bwstring** %3, align 8
  store %struct.bwstring* %1, %struct.bwstring** %4, align 8
  %6 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %7 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %11 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ugt i64 %9, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %16 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %21 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load i32, i32* @MB_CUR_MAX, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %43

24:                                               ; preds = %18
  %25 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %26 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %30 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @memcpy(i8* %28, i8* %32, i64 %33)
  %35 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %36 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %40 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  store i8 0, i8* %42, align 1
  br label %64

43:                                               ; preds = %18
  %44 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %45 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %49 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = add i64 %52, 1
  %54 = call i64 @SIZEOF_WCHAR_STRING(i64 %53)
  %55 = call i32 @memcpy(i8* %47, i8* %51, i64 %54)
  %56 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %57 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %61 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  store i8 0, i8* %63, align 1
  br label %64

64:                                               ; preds = %43, %24
  %65 = load i64, i64* %5, align 8
  ret i64 %65
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @SIZEOF_WCHAR_STRING(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
