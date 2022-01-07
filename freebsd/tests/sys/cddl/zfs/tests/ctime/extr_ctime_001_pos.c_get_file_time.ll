; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/tests/ctime/extr_ctime_001_pos.c_get_file_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/tests/ctime/extr_ctime_001_pos.c_get_file_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_file_time(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.stat, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32*, i32** %7, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  store i32 -1, i32* %4, align 4
  br label %35

15:                                               ; preds = %11
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @stat(i8* %16, %struct.stat* %8)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %35

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %34 [
    i32 130, label %22
    i32 129, label %26
    i32 128, label %30
  ]

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  store i32 0, i32* %4, align 4
  br label %35

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %7, align 8
  store i32 %28, i32* %29, align 4
  store i32 0, i32* %4, align 4
  br label %35

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  store i32 0, i32* %4, align 4
  br label %35

34:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %30, %26, %22, %19, %14
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
