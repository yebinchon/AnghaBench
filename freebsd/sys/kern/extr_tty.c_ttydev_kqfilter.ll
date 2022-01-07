; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_ttydev_kqfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_ttydev_kqfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.tty* }
%struct.tty = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.knote = type { i32, i32*, %struct.tty* }

@tty_kqops_read = common dso_local global i32 0, align 4
@tty_kqops_write = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.knote*)* @ttydev_kqfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttydev_kqfilter(%struct.cdev* %0, %struct.knote* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.knote*, align 8
  %6 = alloca %struct.tty*, align 8
  %7 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.knote* %1, %struct.knote** %5, align 8
  %8 = load %struct.cdev*, %struct.cdev** %4, align 8
  %9 = getelementptr inbounds %struct.cdev, %struct.cdev* %8, i32 0, i32 0
  %10 = load %struct.tty*, %struct.tty** %9, align 8
  store %struct.tty* %10, %struct.tty** %6, align 8
  %11 = load %struct.tty*, %struct.tty** %6, align 8
  %12 = call i32 @ttydev_enter(%struct.tty* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %49

17:                                               ; preds = %2
  %18 = load %struct.knote*, %struct.knote** %5, align 8
  %19 = getelementptr inbounds %struct.knote, %struct.knote* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %43 [
    i32 129, label %21
    i32 128, label %32
  ]

21:                                               ; preds = %17
  %22 = load %struct.tty*, %struct.tty** %6, align 8
  %23 = load %struct.knote*, %struct.knote** %5, align 8
  %24 = getelementptr inbounds %struct.knote, %struct.knote* %23, i32 0, i32 2
  store %struct.tty* %22, %struct.tty** %24, align 8
  %25 = load %struct.knote*, %struct.knote** %5, align 8
  %26 = getelementptr inbounds %struct.knote, %struct.knote* %25, i32 0, i32 1
  store i32* @tty_kqops_read, i32** %26, align 8
  %27 = load %struct.tty*, %struct.tty** %6, align 8
  %28 = getelementptr inbounds %struct.tty, %struct.tty* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.knote*, %struct.knote** %5, align 8
  %31 = call i32 @knlist_add(i32* %29, %struct.knote* %30, i32 1)
  br label %45

32:                                               ; preds = %17
  %33 = load %struct.tty*, %struct.tty** %6, align 8
  %34 = load %struct.knote*, %struct.knote** %5, align 8
  %35 = getelementptr inbounds %struct.knote, %struct.knote* %34, i32 0, i32 2
  store %struct.tty* %33, %struct.tty** %35, align 8
  %36 = load %struct.knote*, %struct.knote** %5, align 8
  %37 = getelementptr inbounds %struct.knote, %struct.knote* %36, i32 0, i32 1
  store i32* @tty_kqops_write, i32** %37, align 8
  %38 = load %struct.tty*, %struct.tty** %6, align 8
  %39 = getelementptr inbounds %struct.tty, %struct.tty* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.knote*, %struct.knote** %5, align 8
  %42 = call i32 @knlist_add(i32* %40, %struct.knote* %41, i32 1)
  br label %45

43:                                               ; preds = %17
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %32, %21
  %46 = load %struct.tty*, %struct.tty** %6, align 8
  %47 = call i32 @tty_unlock(%struct.tty* %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %15
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @ttydev_enter(%struct.tty*) #1

declare dso_local i32 @knlist_add(i32*, %struct.knote*, i32) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
