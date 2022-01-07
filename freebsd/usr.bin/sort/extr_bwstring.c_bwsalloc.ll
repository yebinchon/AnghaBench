; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bwsalloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bwsalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwstring = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32* }

@MB_CUR_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bwstring* @bwsalloc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.bwstring*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @MB_CUR_MAX, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = add i64 25, %7
  %9 = trunc i64 %8 to i32
  %10 = call %struct.bwstring* @sort_malloc(i32 %9)
  store %struct.bwstring* %10, %struct.bwstring** %3, align 8
  br label %19

11:                                               ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = add i64 %12, 1
  %14 = call i32 @SIZEOF_WCHAR_STRING(i64 %13)
  %15 = sext i32 %14 to i64
  %16 = add i64 24, %15
  %17 = trunc i64 %16 to i32
  %18 = call %struct.bwstring* @sort_malloc(i32 %17)
  store %struct.bwstring* %18, %struct.bwstring** %3, align 8
  br label %19

19:                                               ; preds = %11, %6
  %20 = load i64, i64* %2, align 8
  %21 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %22 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* @MB_CUR_MAX, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %27 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %31 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  store i8 0, i8* %33, align 1
  br label %43

34:                                               ; preds = %19
  %35 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %36 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %40 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %34, %25
  %44 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  ret %struct.bwstring* %44
}

declare dso_local %struct.bwstring* @sort_malloc(i32) #1

declare dso_local i32 @SIZEOF_WCHAR_STRING(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
