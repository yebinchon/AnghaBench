; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bws_setlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bws_setlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwstring = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32* }

@MB_CUR_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bws_setlen(%struct.bwstring* %0, i64 %1) #0 {
  %3 = alloca %struct.bwstring*, align 8
  %4 = alloca i64, align 8
  store %struct.bwstring* %0, %struct.bwstring** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %6 = icmp ne %struct.bwstring* %5, null
  br i1 %6, label %7, label %40

7:                                                ; preds = %2
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %10 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %7
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %16 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ule i64 %14, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %13
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %22 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* @MB_CUR_MAX, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %27 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8 0, i8* %31, align 1
  br label %39

32:                                               ; preds = %19
  %33 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %34 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %32, %25
  br label %40

40:                                               ; preds = %39, %13, %7, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
