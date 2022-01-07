; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_insmntque_dtr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_insmntque_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32* }
%struct.devfs_dirent = type { i32* }

@devfs_de_interlock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnode*, i8*)* @devfs_insmntque_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devfs_insmntque_dtr(%struct.vnode* %0, i8* %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.devfs_dirent*, align 8
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.devfs_dirent*
  store %struct.devfs_dirent* %7, %struct.devfs_dirent** %5, align 8
  %8 = call i32 @mtx_lock(i32* @devfs_de_interlock)
  %9 = load %struct.vnode*, %struct.vnode** %3, align 8
  %10 = getelementptr inbounds %struct.vnode, %struct.vnode* %9, i32 0, i32 0
  store i32* null, i32** %10, align 8
  %11 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %12 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  %13 = call i32 @mtx_unlock(i32* @devfs_de_interlock)
  %14 = load %struct.vnode*, %struct.vnode** %3, align 8
  %15 = call i32 @vgone(%struct.vnode* %14)
  %16 = load %struct.vnode*, %struct.vnode** %3, align 8
  %17 = call i32 @vput(%struct.vnode* %16)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @vgone(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
