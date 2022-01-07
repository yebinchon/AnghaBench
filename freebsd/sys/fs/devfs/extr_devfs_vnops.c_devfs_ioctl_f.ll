; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_ioctl_f.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_ioctl_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.file*, i32, i8*, %struct.ucred*, %struct.thread*)* }
%struct.file = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { %struct.file* }

@vnops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i8*, %struct.ucred*, %struct.thread*)* @devfs_ioctl_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_ioctl_f(%struct.file* %0, i32 %1, i8* %2, %struct.ucred* %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.ucred* %3, %struct.ucred** %9, align 8
  store %struct.thread* %4, %struct.thread** %10, align 8
  %13 = load %struct.thread*, %struct.thread** %10, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 0
  %15 = load %struct.file*, %struct.file** %14, align 8
  store %struct.file* %15, %struct.file** %11, align 8
  %16 = load %struct.file*, %struct.file** %6, align 8
  %17 = load %struct.thread*, %struct.thread** %10, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 0
  store %struct.file* %16, %struct.file** %18, align 8
  %19 = load i32 (%struct.file*, i32, i8*, %struct.ucred*, %struct.thread*)*, i32 (%struct.file*, i32, i8*, %struct.ucred*, %struct.thread*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vnops, i32 0, i32 0), align 8
  %20 = load %struct.file*, %struct.file** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.ucred*, %struct.ucred** %9, align 8
  %24 = load %struct.thread*, %struct.thread** %10, align 8
  %25 = call i32 %19(%struct.file* %20, i32 %21, i8* %22, %struct.ucred* %23, %struct.thread* %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.file*, %struct.file** %11, align 8
  %27 = load %struct.thread*, %struct.thread** %10, align 8
  %28 = getelementptr inbounds %struct.thread, %struct.thread* %27, i32 0, i32 0
  store %struct.file* %26, %struct.file** %28, align 8
  %29 = load i32, i32* %12, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
