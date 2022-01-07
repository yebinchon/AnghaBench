; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_readlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_readlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_readlink_args = type { %struct.ucred*, %struct.uio*, %struct.vnode* }
%struct.ucred = type { i32 }
%struct.uio = type { i32 }
%struct.vnode = type { i32 }
%struct.fuse_dispatcher = type { i8*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_7__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FUSE_READLINK = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@FSESS_PUSH_SYMLINKS_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_readlink_args*)* @fuse_vnop_readlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_vnop_readlink(%struct.vop_readlink_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_readlink_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca %struct.fuse_dispatcher, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.vop_readlink_args* %0, %struct.vop_readlink_args** %3, align 8
  %10 = load %struct.vop_readlink_args*, %struct.vop_readlink_args** %3, align 8
  %11 = getelementptr inbounds %struct.vop_readlink_args, %struct.vop_readlink_args* %10, i32 0, i32 2
  %12 = load %struct.vnode*, %struct.vnode** %11, align 8
  store %struct.vnode* %12, %struct.vnode** %4, align 8
  %13 = load %struct.vop_readlink_args*, %struct.vop_readlink_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_readlink_args, %struct.vop_readlink_args* %13, i32 0, i32 1
  %15 = load %struct.uio*, %struct.uio** %14, align 8
  store %struct.uio* %15, %struct.uio** %5, align 8
  %16 = load %struct.vop_readlink_args*, %struct.vop_readlink_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_readlink_args, %struct.vop_readlink_args* %16, i32 0, i32 0
  %18 = load %struct.ucred*, %struct.ucred** %17, align 8
  store %struct.ucred* %18, %struct.ucred** %6, align 8
  %19 = load %struct.vnode*, %struct.vnode** %4, align 8
  %20 = call i64 @fuse_isdeadfs(%struct.vnode* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %81

24:                                               ; preds = %1
  %25 = load %struct.vnode*, %struct.vnode** %4, align 8
  %26 = call i32 @vnode_islnk(%struct.vnode* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %2, align 4
  br label %81

30:                                               ; preds = %24
  %31 = call i32 @fdisp_init(%struct.fuse_dispatcher* %7, i32 0)
  %32 = load i32, i32* @FUSE_READLINK, align 4
  %33 = load %struct.vnode*, %struct.vnode** %4, align 8
  %34 = load i32, i32* @curthread, align 4
  %35 = load %struct.ucred*, %struct.ucred** %6, align 8
  %36 = call i32 @fdisp_simple_putget_vp(%struct.fuse_dispatcher* %7, i32 %32, %struct.vnode* %33, i32 %34, %struct.ucred* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %78

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %7, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 47
  br i1 %46, label %47, label %67

47:                                               ; preds = %40
  %48 = load %struct.vnode*, %struct.vnode** %4, align 8
  %49 = call %struct.TYPE_6__* @vnode_mount(%struct.vnode* %48)
  %50 = call %struct.TYPE_7__* @fuse_get_mpdata(%struct.TYPE_6__* %49)
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @FSESS_PUSH_SYMLINKS_IN, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %47
  %57 = load %struct.vnode*, %struct.vnode** %4, align 8
  %58 = call %struct.TYPE_6__* @vnode_mount(%struct.vnode* %57)
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %9, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = load %struct.uio*, %struct.uio** %5, align 8
  %66 = call i32 @uiomove(i8* %62, i32 %64, %struct.uio* %65)
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %56, %47, %40
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %7, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %7, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.uio*, %struct.uio** %5, align 8
  %76 = call i32 @uiomove(i8* %72, i32 %74, %struct.uio* %75)
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %70, %67
  br label %78

78:                                               ; preds = %77, %39
  %79 = call i32 @fdisp_destroy(%struct.fuse_dispatcher* %7)
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %78, %28, %22
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i64 @fuse_isdeadfs(%struct.vnode*) #1

declare dso_local i32 @vnode_islnk(%struct.vnode*) #1

declare dso_local i32 @fdisp_init(%struct.fuse_dispatcher*, i32) #1

declare dso_local i32 @fdisp_simple_putget_vp(%struct.fuse_dispatcher*, i32, %struct.vnode*, i32, %struct.ucred*) #1

declare dso_local %struct.TYPE_7__* @fuse_get_mpdata(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @vnode_mount(%struct.vnode*) #1

declare dso_local i32 @uiomove(i8*, i32, %struct.uio*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fdisp_destroy(%struct.fuse_dispatcher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
