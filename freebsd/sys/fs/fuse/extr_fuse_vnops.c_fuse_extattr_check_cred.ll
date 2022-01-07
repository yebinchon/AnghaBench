; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_extattr_check_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_extattr_check_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.vnode = type { i32 }
%struct.thread = type { i32 }
%struct.mount = type { i32 }
%struct.fuse_data = type { i32 }

@NOCRED = common dso_local global %struct.ucred* null, align 8
@FSESS_DEFAULT_PERMISSIONS = common dso_local global i32 0, align 4
@PRIV_VFS_EXTATTR_SYSTEM = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i32, %struct.ucred*, %struct.thread*, i32)* @fuse_extattr_check_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_extattr_check_cred(%struct.vnode* %0, i32 %1, %struct.ucred* %2, %struct.thread* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca %struct.thread*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mount*, align 8
  %13 = alloca %struct.fuse_data*, align 8
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ucred* %2, %struct.ucred** %9, align 8
  store %struct.thread* %3, %struct.thread** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.vnode*, %struct.vnode** %7, align 8
  %15 = call %struct.mount* @vnode_mount(%struct.vnode* %14)
  store %struct.mount* %15, %struct.mount** %12, align 8
  %16 = load %struct.mount*, %struct.mount** %12, align 8
  %17 = call %struct.fuse_data* @fuse_get_mpdata(%struct.mount* %16)
  store %struct.fuse_data* %17, %struct.fuse_data** %13, align 8
  %18 = load %struct.ucred*, %struct.ucred** %9, align 8
  %19 = load %struct.ucred*, %struct.ucred** @NOCRED, align 8
  %20 = icmp eq %struct.ucred* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %44

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %42 [
    i32 129, label %24
    i32 128, label %36
  ]

24:                                               ; preds = %22
  %25 = load %struct.fuse_data*, %struct.fuse_data** %13, align 8
  %26 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FSESS_DEFAULT_PERMISSIONS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.ucred*, %struct.ucred** %9, align 8
  %33 = load i32, i32* @PRIV_VFS_EXTATTR_SYSTEM, align 4
  %34 = call i32 @priv_check_cred(%struct.ucred* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  br label %44

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %22, %35
  %37 = load %struct.vnode*, %struct.vnode** %7, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.thread*, %struct.thread** %10, align 8
  %40 = load %struct.ucred*, %struct.ucred** %9, align 8
  %41 = call i32 @fuse_internal_access(%struct.vnode* %37, i32 %38, %struct.thread* %39, %struct.ucred* %40)
  store i32 %41, i32* %6, align 4
  br label %44

42:                                               ; preds = %22
  %43 = load i32, i32* @EPERM, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %42, %36, %31, %21
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local %struct.mount* @vnode_mount(%struct.vnode*) #1

declare dso_local %struct.fuse_data* @fuse_get_mpdata(%struct.mount*) #1

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i32 @fuse_internal_access(%struct.vnode*, i32, %struct.thread*, %struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
