; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bwsdup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bwsdup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwstring = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MB_CUR_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bwstring* @bwsdup(%struct.bwstring* %0) #0 {
  %2 = alloca %struct.bwstring*, align 8
  %3 = alloca %struct.bwstring*, align 8
  %4 = alloca %struct.bwstring*, align 8
  store %struct.bwstring* %0, %struct.bwstring** %3, align 8
  %5 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %6 = icmp eq %struct.bwstring* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.bwstring* null, %struct.bwstring** %2, align 8
  br label %44

8:                                                ; preds = %1
  %9 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %10 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.bwstring* @bwsalloc(i32 %11)
  store %struct.bwstring* %12, %struct.bwstring** %4, align 8
  %13 = load i32, i32* @MB_CUR_MAX, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %28

15:                                               ; preds = %8
  %16 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %17 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %21 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %25 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @memcpy(i32 %19, i32 %23, i32 %26)
  br label %42

28:                                               ; preds = %8
  %29 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %30 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %34 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %38 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @SIZEOF_WCHAR_STRING(i32 %39)
  %41 = call i32 @memcpy(i32 %32, i32 %36, i32 %40)
  br label %42

42:                                               ; preds = %28, %15
  %43 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  store %struct.bwstring* %43, %struct.bwstring** %2, align 8
  br label %44

44:                                               ; preds = %42, %7
  %45 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  ret %struct.bwstring* %45
}

declare dso_local %struct.bwstring* @bwsalloc(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @SIZEOF_WCHAR_STRING(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
