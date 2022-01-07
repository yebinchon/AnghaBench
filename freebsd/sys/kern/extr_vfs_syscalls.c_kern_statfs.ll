; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_statfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.statfs = type { i32 }
%struct.mount = type { i32 }
%struct.nameidata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mount* }

@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@LOCKSHARED = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_statfs(%struct.thread* %0, i8* %1, i32 %2, %struct.statfs* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.statfs*, align 8
  %10 = alloca %struct.mount*, align 8
  %11 = alloca %struct.nameidata, align 8
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.statfs* %3, %struct.statfs** %9, align 8
  %13 = load i32, i32* @LOOKUP, align 4
  %14 = load i32, i32* @FOLLOW, align 4
  %15 = load i32, i32* @LOCKSHARED, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @LOCKLEAF, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @AUDITVNODE1, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %8, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.thread*, %struct.thread** %6, align 8
  %24 = call i32 @NDINIT(%struct.nameidata* %11, i32 %13, i32 %20, i32 %21, i8* %22, %struct.thread* %23)
  %25 = call i32 @namei(%struct.nameidata* %11)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %5, align 4
  br label %46

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %11, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.mount*, %struct.mount** %33, align 8
  store %struct.mount* %34, %struct.mount** %10, align 8
  %35 = load %struct.mount*, %struct.mount** %10, align 8
  %36 = call i32 @vfs_ref(%struct.mount* %35)
  %37 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %38 = call i32 @NDFREE(%struct.nameidata* %11, i32 %37)
  %39 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %11, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = call i32 @vput(%struct.TYPE_2__* %40)
  %42 = load %struct.thread*, %struct.thread** %6, align 8
  %43 = load %struct.mount*, %struct.mount** %10, align 8
  %44 = load %struct.statfs*, %struct.statfs** %9, align 8
  %45 = call i32 @kern_do_statfs(%struct.thread* %42, %struct.mount* %43, %struct.statfs* %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %30, %28
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i8*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @vfs_ref(%struct.mount*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @vput(%struct.TYPE_2__*) #1

declare dso_local i32 @kern_do_statfs(%struct.thread*, %struct.mount*, %struct.statfs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
