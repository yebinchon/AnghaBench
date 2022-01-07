; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_mknod.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_mknod_args = type { %struct.vattr*, %struct.componentname*, %struct.vnode**, %struct.vnode* }
%struct.vattr = type { i64 }
%struct.componentname = type { i32 }
%struct.vnode = type { i32 }

@VBLK = common dso_local global i64 0, align 8
@VCHR = common dso_local global i64 0, align 8
@VFIFO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_mknod_args*)* @tmpfs_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmpfs_mknod(%struct.vop_mknod_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_mknod_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vnode**, align 8
  %6 = alloca %struct.componentname*, align 8
  %7 = alloca %struct.vattr*, align 8
  store %struct.vop_mknod_args* %0, %struct.vop_mknod_args** %3, align 8
  %8 = load %struct.vop_mknod_args*, %struct.vop_mknod_args** %3, align 8
  %9 = getelementptr inbounds %struct.vop_mknod_args, %struct.vop_mknod_args* %8, i32 0, i32 3
  %10 = load %struct.vnode*, %struct.vnode** %9, align 8
  store %struct.vnode* %10, %struct.vnode** %4, align 8
  %11 = load %struct.vop_mknod_args*, %struct.vop_mknod_args** %3, align 8
  %12 = getelementptr inbounds %struct.vop_mknod_args, %struct.vop_mknod_args* %11, i32 0, i32 2
  %13 = load %struct.vnode**, %struct.vnode*** %12, align 8
  store %struct.vnode** %13, %struct.vnode*** %5, align 8
  %14 = load %struct.vop_mknod_args*, %struct.vop_mknod_args** %3, align 8
  %15 = getelementptr inbounds %struct.vop_mknod_args, %struct.vop_mknod_args* %14, i32 0, i32 1
  %16 = load %struct.componentname*, %struct.componentname** %15, align 8
  store %struct.componentname* %16, %struct.componentname** %6, align 8
  %17 = load %struct.vop_mknod_args*, %struct.vop_mknod_args** %3, align 8
  %18 = getelementptr inbounds %struct.vop_mknod_args, %struct.vop_mknod_args* %17, i32 0, i32 0
  %19 = load %struct.vattr*, %struct.vattr** %18, align 8
  store %struct.vattr* %19, %struct.vattr** %7, align 8
  %20 = load %struct.vattr*, %struct.vattr** %7, align 8
  %21 = getelementptr inbounds %struct.vattr, %struct.vattr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VBLK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %1
  %26 = load %struct.vattr*, %struct.vattr** %7, align 8
  %27 = getelementptr inbounds %struct.vattr, %struct.vattr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @VCHR, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.vattr*, %struct.vattr** %7, align 8
  %33 = getelementptr inbounds %struct.vattr, %struct.vattr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VFIFO, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %2, align 4
  br label %45

39:                                               ; preds = %31, %25, %1
  %40 = load %struct.vnode*, %struct.vnode** %4, align 8
  %41 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %42 = load %struct.vattr*, %struct.vattr** %7, align 8
  %43 = load %struct.componentname*, %struct.componentname** %6, align 8
  %44 = call i32 @tmpfs_alloc_file(%struct.vnode* %40, %struct.vnode** %41, %struct.vattr* %42, %struct.componentname* %43, i32* null)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %39, %37
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @tmpfs_alloc_file(%struct.vnode*, %struct.vnode**, %struct.vattr*, %struct.componentname*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
