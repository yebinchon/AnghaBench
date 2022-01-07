; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_statfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_statfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.stat = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.stat*, %struct.ucred*, %struct.thread*)* @vn_statfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vn_statfile(%struct.file* %0, %struct.stat* %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.stat*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.stat* %1, %struct.stat** %6, align 8
  store %struct.ucred* %2, %struct.ucred** %7, align 8
  store %struct.thread* %3, %struct.thread** %8, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 1
  %13 = load %struct.vnode*, %struct.vnode** %12, align 8
  store %struct.vnode* %13, %struct.vnode** %9, align 8
  %14 = load %struct.vnode*, %struct.vnode** %9, align 8
  %15 = load i32, i32* @LK_SHARED, align 4
  %16 = load i32, i32* @LK_RETRY, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @vn_lock(%struct.vnode* %14, i32 %17)
  %19 = load %struct.vnode*, %struct.vnode** %9, align 8
  %20 = load %struct.stat*, %struct.stat** %6, align 8
  %21 = load %struct.ucred*, %struct.ucred** %7, align 8
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.thread*, %struct.thread** %8, align 8
  %26 = call i32 @vn_stat(%struct.vnode* %19, %struct.stat* %20, %struct.ucred* %21, i32 %24, %struct.thread* %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.vnode*, %struct.vnode** %9, align 8
  %28 = call i32 @VOP_UNLOCK(%struct.vnode* %27, i32 0)
  %29 = load i32, i32* %10, align 4
  ret i32 %29
}

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @vn_stat(%struct.vnode*, %struct.stat*, %struct.ucred*, i32, %struct.thread*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
