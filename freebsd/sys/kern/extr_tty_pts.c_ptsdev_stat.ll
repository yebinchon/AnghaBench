; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_pts.c_ptsdev_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_pts.c_ptsdev_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.tty* }
%struct.tty = type { %struct.cdev* }
%struct.cdev = type { i32, i32, i32, i32, i32, i32 }
%struct.stat = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@S_IFCHR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.stat*, %struct.ucred*, %struct.thread*)* @ptsdev_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptsdev_stat(%struct.file* %0, %struct.stat* %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.stat*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.tty*, align 8
  %10 = alloca %struct.cdev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.stat* %1, %struct.stat** %6, align 8
  store %struct.ucred* %2, %struct.ucred** %7, align 8
  store %struct.thread* %3, %struct.thread** %8, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.tty*, %struct.tty** %12, align 8
  store %struct.tty* %13, %struct.tty** %9, align 8
  %14 = load %struct.tty*, %struct.tty** %9, align 8
  %15 = getelementptr inbounds %struct.tty, %struct.tty* %14, i32 0, i32 0
  %16 = load %struct.cdev*, %struct.cdev** %15, align 8
  store %struct.cdev* %16, %struct.cdev** %10, align 8
  %17 = load %struct.stat*, %struct.stat** %6, align 8
  %18 = call i32 @bzero(%struct.stat* %17, i32 32)
  %19 = load %struct.tty*, %struct.tty** %9, align 8
  %20 = call i32 @tty_udev(%struct.tty* %19)
  %21 = load %struct.stat*, %struct.stat** %6, align 8
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 4
  %23 = load %struct.stat*, %struct.stat** %6, align 8
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %23, i32 0, i32 7
  store i32 %20, i32* %24, align 4
  %25 = load %struct.cdev*, %struct.cdev** %10, align 8
  %26 = getelementptr inbounds %struct.cdev, %struct.cdev* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.stat*, %struct.stat** %6, align 8
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.cdev*, %struct.cdev** %10, align 8
  %31 = getelementptr inbounds %struct.cdev, %struct.cdev* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.stat*, %struct.stat** %6, align 8
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.cdev*, %struct.cdev** %10, align 8
  %36 = getelementptr inbounds %struct.cdev, %struct.cdev* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.stat*, %struct.stat** %6, align 8
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.cdev*, %struct.cdev** %10, align 8
  %41 = getelementptr inbounds %struct.cdev, %struct.cdev* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.stat*, %struct.stat** %6, align 8
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.cdev*, %struct.cdev** %10, align 8
  %46 = getelementptr inbounds %struct.cdev, %struct.cdev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.stat*, %struct.stat** %6, align 8
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.cdev*, %struct.cdev** %10, align 8
  %51 = getelementptr inbounds %struct.cdev, %struct.cdev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @S_IFCHR, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.stat*, %struct.stat** %6, align 8
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  ret i32 0
}

declare dso_local i32 @bzero(%struct.stat*, i32) #1

declare dso_local i32 @tty_udev(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
