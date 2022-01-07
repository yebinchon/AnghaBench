; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_vnops.c_ufs_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_vnops.c_ufs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_open_args = type { i32, i32, %struct.vnode* }
%struct.vnode = type { i64 }
%struct.inode = type { i32 }

@VCHR = common dso_local global i64 0, align 8
@VBLK = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@APPEND = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@i_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_open_args*)* @ufs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_open(%struct.vop_open_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_open_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.inode*, align 8
  store %struct.vop_open_args* %0, %struct.vop_open_args** %3, align 8
  %6 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %7 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %6, i32 0, i32 2
  %8 = load %struct.vnode*, %struct.vnode** %7, align 8
  store %struct.vnode* %8, %struct.vnode** %4, align 8
  %9 = load %struct.vnode*, %struct.vnode** %4, align 8
  %10 = getelementptr inbounds %struct.vnode, %struct.vnode* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @VCHR, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.vnode*, %struct.vnode** %4, align 8
  %16 = getelementptr inbounds %struct.vnode, %struct.vnode* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VBLK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14, %1
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %21, i32* %2, align 4
  br label %52

22:                                               ; preds = %14
  %23 = load %struct.vnode*, %struct.vnode** %4, align 8
  %24 = call %struct.inode* @VTOI(%struct.vnode* %23)
  store %struct.inode* %24, %struct.inode** %5, align 8
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @APPEND, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %22
  %32 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %33 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @FWRITE, align 4
  %36 = load i32, i32* @O_APPEND, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = load i32, i32* @FWRITE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* @EPERM, align 4
  store i32 %42, i32* %2, align 4
  br label %52

43:                                               ; preds = %31, %22
  %44 = load %struct.vnode*, %struct.vnode** %4, align 8
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = load i32, i32* @i_size, align 4
  %47 = call i32 @DIP(%struct.inode* %45, i32 %46)
  %48 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %49 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @vnode_create_vobject(%struct.vnode* %44, i32 %47, i32 %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %43, %41, %20
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local i32 @vnode_create_vobject(%struct.vnode*, i32, i32) #1

declare dso_local i32 @DIP(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
