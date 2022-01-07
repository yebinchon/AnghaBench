; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_zuncompress.c_zdopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_zuncompress.c_zdopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_zstate = type { i32, i32*, %struct.TYPE_4__, i64, i32, i64, i64, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@S_START = common dso_local global i32 0, align 4
@HSIZE = common dso_local global i32 0, align 4
@BLOCK_MASK = common dso_local global i32 0, align 4
@CHECK_GAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@zread = common dso_local global i32 0, align 4
@zclose = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @zdopen(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.s_zstate*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call %struct.s_zstate* @calloc(i32 1, i32 88)
  store %struct.s_zstate* %5, %struct.s_zstate** %4, align 8
  %6 = icmp eq %struct.s_zstate* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %52

8:                                                ; preds = %1
  %9 = load i32, i32* @S_START, align 4
  %10 = load %struct.s_zstate*, %struct.s_zstate** %4, align 8
  %11 = getelementptr inbounds %struct.s_zstate, %struct.s_zstate* %10, i32 0, i32 10
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @HSIZE, align 4
  %13 = load %struct.s_zstate*, %struct.s_zstate** %4, align 8
  %14 = getelementptr inbounds %struct.s_zstate, %struct.s_zstate* %13, i32 0, i32 9
  store i32 %12, i32* %14, align 8
  %15 = load %struct.s_zstate*, %struct.s_zstate** %4, align 8
  %16 = getelementptr inbounds %struct.s_zstate, %struct.s_zstate* %15, i32 0, i32 8
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @BLOCK_MASK, align 4
  %18 = load %struct.s_zstate*, %struct.s_zstate** %4, align 8
  %19 = getelementptr inbounds %struct.s_zstate, %struct.s_zstate* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 8
  %20 = load %struct.s_zstate*, %struct.s_zstate** %4, align 8
  %21 = getelementptr inbounds %struct.s_zstate, %struct.s_zstate* %20, i32 0, i32 6
  store i64 0, i64* %21, align 8
  %22 = load %struct.s_zstate*, %struct.s_zstate** %4, align 8
  %23 = getelementptr inbounds %struct.s_zstate, %struct.s_zstate* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @CHECK_GAP, align 4
  %25 = load %struct.s_zstate*, %struct.s_zstate** %4, align 8
  %26 = getelementptr inbounds %struct.s_zstate, %struct.s_zstate* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load %struct.s_zstate*, %struct.s_zstate** %4, align 8
  %28 = getelementptr inbounds %struct.s_zstate, %struct.s_zstate* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.s_zstate*, %struct.s_zstate** %4, align 8
  %30 = getelementptr inbounds %struct.s_zstate, %struct.s_zstate* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.s_zstate*, %struct.s_zstate** %4, align 8
  %32 = getelementptr inbounds %struct.s_zstate, %struct.s_zstate* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.s_zstate*, %struct.s_zstate** %4, align 8
  %36 = getelementptr inbounds %struct.s_zstate, %struct.s_zstate* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32* @fdopen(i32 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.s_zstate*, %struct.s_zstate** %4, align 8
  %42 = getelementptr inbounds %struct.s_zstate, %struct.s_zstate* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = icmp eq i32* %40, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %8
  %45 = load %struct.s_zstate*, %struct.s_zstate** %4, align 8
  %46 = call i32 @free(%struct.s_zstate* %45)
  store i32* null, i32** %2, align 8
  br label %52

47:                                               ; preds = %8
  %48 = load %struct.s_zstate*, %struct.s_zstate** %4, align 8
  %49 = load i32, i32* @zread, align 4
  %50 = load i32, i32* @zclose, align 4
  %51 = call i32* @funopen(%struct.s_zstate* %48, i32 %49, i32* null, i32* null, i32 %50)
  store i32* %51, i32** %2, align 8
  br label %52

52:                                               ; preds = %47, %44, %7
  %53 = load i32*, i32** %2, align 8
  ret i32* %53
}

declare dso_local %struct.s_zstate* @calloc(i32, i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @free(%struct.s_zstate*) #1

declare dso_local i32* @funopen(%struct.s_zstate*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
