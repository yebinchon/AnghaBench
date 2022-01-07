; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_devioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_devioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.cdev = type { i32 }
%struct.thread = type { i32 }

@devsoftc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @devioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %39 [
    i32 131, label %13
    i32 134, label %21
    i32 128, label %29
    i32 132, label %34
    i32 133, label %38
    i32 130, label %38
    i32 129, label %38
  ]

13:                                               ; preds = %5
  %14 = load i64, i64* %9, align 8
  %15 = inttoptr i64 %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @devsoftc, i32 0, i32 0), align 4
  br label %20

19:                                               ; preds = %13
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @devsoftc, i32 0, i32 0), align 4
  br label %20

20:                                               ; preds = %19, %18
  store i32 0, i32* %6, align 4
  br label %42

21:                                               ; preds = %5
  %22 = load i64, i64* %9, align 8
  %23 = inttoptr i64 %22 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @devsoftc, i32 0, i32 1), align 4
  br label %28

27:                                               ; preds = %21
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @devsoftc, i32 0, i32 1), align 4
  br label %28

28:                                               ; preds = %27, %26
  store i32 0, i32* %6, align 4
  br label %42

29:                                               ; preds = %5
  %30 = load i64, i64* %9, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @fsetown(i32 %32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @devsoftc, i32 0, i32 2))
  store i32 %33, i32* %6, align 4
  br label %42

34:                                               ; preds = %5
  %35 = call i32 @fgetown(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @devsoftc, i32 0, i32 2))
  %36 = load i64, i64* %9, align 8
  %37 = inttoptr i64 %36 to i32*
  store i32 %35, i32* %37, align 4
  store i32 0, i32* %6, align 4
  br label %42

38:                                               ; preds = %5, %5, %5
  br label %39

39:                                               ; preds = %5, %38
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* @ENOTTY, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %40, %34, %29, %28, %20
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @fsetown(i32, i32*) #1

declare dso_local i32 @fgetown(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
