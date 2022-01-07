; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvram/extr_nvram.c_nvram_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvram/extr_nvram.c_nvram_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i64, i32 }

@NVRAM_FIRST = common dso_local global i32 0, align 4
@NVRAM_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @nvram_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvram_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %35, %3
  %12 = load %struct.uio*, %struct.uio** %6, align 8
  %13 = getelementptr inbounds %struct.uio, %struct.uio* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 %17, 0
  br label %19

19:                                               ; preds = %16, %11
  %20 = phi i1 [ false, %11 ], [ %18, %16 ]
  br i1 %20, label %21, label %40

21:                                               ; preds = %19
  %22 = load %struct.uio*, %struct.uio** %6, align 8
  %23 = getelementptr inbounds %struct.uio, %struct.uio* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @NVRAM_FIRST, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @NVRAM_FIRST, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @NVRAM_LAST, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %21
  store i32 0, i32* %4, align 4
  br label %42

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @rtcin(i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.uio*, %struct.uio** %6, align 8
  %39 = call i32 @uiomove(i32* %9, i32 1, %struct.uio* %38)
  store i32 %39, i32* %10, align 4
  br label %11

40:                                               ; preds = %19
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %34
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @rtcin(i32) #1

declare dso_local i32 @uiomove(i32*, i32, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
