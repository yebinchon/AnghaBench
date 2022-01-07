; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_getattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.vop_getattr_args = type { %struct.ucred*, %struct.vattr*, %struct.vnode* }
%struct.ucred = type { i32 }
%struct.vattr = type { i32 }
%struct.vnode = type { i32 }
%struct.TYPE_3__ = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@FSESS_INITED = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_getattr_args*)* @fuse_vnop_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_vnop_getattr(%struct.vop_getattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_getattr_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vattr*, align 8
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vop_getattr_args* %0, %struct.vop_getattr_args** %3, align 8
  %10 = load %struct.vop_getattr_args*, %struct.vop_getattr_args** %3, align 8
  %11 = getelementptr inbounds %struct.vop_getattr_args, %struct.vop_getattr_args* %10, i32 0, i32 2
  %12 = load %struct.vnode*, %struct.vnode** %11, align 8
  store %struct.vnode* %12, %struct.vnode** %4, align 8
  %13 = load %struct.vop_getattr_args*, %struct.vop_getattr_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_getattr_args, %struct.vop_getattr_args* %13, i32 0, i32 1
  %15 = load %struct.vattr*, %struct.vattr** %14, align 8
  store %struct.vattr* %15, %struct.vattr** %5, align 8
  %16 = load %struct.vop_getattr_args*, %struct.vop_getattr_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_getattr_args, %struct.vop_getattr_args* %16, i32 0, i32 0
  %18 = load %struct.ucred*, %struct.ucred** %17, align 8
  store %struct.ucred* %18, %struct.ucred** %6, align 8
  %19 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %19, %struct.thread** %7, align 8
  store i32 0, i32* %8, align 4
  %20 = load %struct.vnode*, %struct.vnode** %4, align 8
  %21 = call i32 @vnode_mount(%struct.vnode* %20)
  %22 = call %struct.TYPE_3__* @fuse_get_mpdata(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @FSESS_INITED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %1
  %30 = load %struct.vnode*, %struct.vnode** %4, align 8
  %31 = call i64 @vnode_isvroot(%struct.vnode* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = load %struct.vnode*, %struct.vnode** %4, align 8
  %35 = call i32 @vnode_mount(%struct.vnode* %34)
  %36 = call %struct.TYPE_3__* @fuse_get_mpdata(i32 %35)
  %37 = call i32 @fdata_set_dead(%struct.TYPE_3__* %36)
  %38 = load i32, i32* @ENOTCONN, align 4
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %2, align 4
  br label %64

40:                                               ; preds = %29
  br label %57

41:                                               ; preds = %1
  %42 = load %struct.vnode*, %struct.vnode** %4, align 8
  %43 = load %struct.vattr*, %struct.vattr** %5, align 8
  %44 = load %struct.ucred*, %struct.ucred** %6, align 8
  %45 = load %struct.thread*, %struct.thread** %7, align 8
  %46 = call i32 @fuse_internal_getattr(%struct.vnode* %42, %struct.vattr* %43, %struct.ucred* %44, %struct.thread* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @ENOTCONN, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load %struct.vnode*, %struct.vnode** %4, align 8
  %52 = call i64 @vnode_isvroot(%struct.vnode* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %57

55:                                               ; preds = %50, %41
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %2, align 4
  br label %64

57:                                               ; preds = %54, %40
  %58 = load %struct.vattr*, %struct.vattr** %5, align 8
  %59 = call i32 @bzero(%struct.vattr* %58, i32 4)
  %60 = load %struct.vnode*, %struct.vnode** %4, align 8
  %61 = call i32 @vnode_vtype(%struct.vnode* %60)
  %62 = load %struct.vattr*, %struct.vattr** %5, align 8
  %63 = getelementptr inbounds %struct.vattr, %struct.vattr* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %57, %55, %33
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_3__* @fuse_get_mpdata(i32) #1

declare dso_local i32 @vnode_mount(%struct.vnode*) #1

declare dso_local i64 @vnode_isvroot(%struct.vnode*) #1

declare dso_local i32 @fdata_set_dead(%struct.TYPE_3__*) #1

declare dso_local i32 @fuse_internal_getattr(%struct.vnode*, %struct.vattr*, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @bzero(%struct.vattr*, i32) #1

declare dso_local i32 @vnode_vtype(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
