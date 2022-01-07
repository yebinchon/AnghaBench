; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_mknod.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.vnode = type { i32 }
%struct.componentname = type { i32 }
%struct.vattr = type { i32, i32, i32 }
%struct.fuse_data = type { i32 }
%struct.fuse_mknod_in = type { i32, i32, i32 }

@curthread = common dso_local global %struct.TYPE_6__* null, align 8
@FUSE_COMPAT_MKNOD_IN_SIZE = common dso_local global i64 0, align 8
@FUSE_MKNOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_internal_mknod(%struct.vnode* %0, %struct.vnode** %1, %struct.componentname* %2, %struct.vattr* %3) #0 {
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vnode**, align 8
  %7 = alloca %struct.componentname*, align 8
  %8 = alloca %struct.vattr*, align 8
  %9 = alloca %struct.fuse_data*, align 8
  %10 = alloca %struct.fuse_mknod_in, align 4
  %11 = alloca i64, align 8
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.vnode** %1, %struct.vnode*** %6, align 8
  store %struct.componentname* %2, %struct.componentname** %7, align 8
  store %struct.vattr* %3, %struct.vattr** %8, align 8
  %12 = load %struct.vnode*, %struct.vnode** %5, align 8
  %13 = getelementptr inbounds %struct.vnode, %struct.vnode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.fuse_data* @fuse_get_mpdata(i32 %14)
  store %struct.fuse_data* %15, %struct.fuse_data** %9, align 8
  %16 = load %struct.vattr*, %struct.vattr** %8, align 8
  %17 = getelementptr inbounds %struct.vattr, %struct.vattr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vattr*, %struct.vattr** %8, align 8
  %20 = getelementptr inbounds %struct.vattr, %struct.vattr* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @MAKEIMODE(i32 %18, i32 %21)
  %23 = getelementptr inbounds %struct.fuse_mknod_in, %struct.fuse_mknod_in* %10, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load %struct.vattr*, %struct.vattr** %8, align 8
  %25 = getelementptr inbounds %struct.vattr, %struct.vattr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.fuse_mknod_in, %struct.fuse_mknod_in* %10, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.fuse_data*, %struct.fuse_data** %9, align 8
  %29 = call i64 @fuse_libabi_geq(%struct.fuse_data* %28, i32 7, i32 12)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %4
  store i64 12, i64* %11, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curthread, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.fuse_mknod_in, %struct.fuse_mknod_in* %10, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  br label %42

40:                                               ; preds = %4
  %41 = load i64, i64* @FUSE_COMPAT_MKNOD_IN_SIZE, align 8
  store i64 %41, i64* %11, align 8
  br label %42

42:                                               ; preds = %40, %31
  %43 = load %struct.vnode*, %struct.vnode** %5, align 8
  %44 = load %struct.vnode**, %struct.vnode*** %6, align 8
  %45 = load %struct.componentname*, %struct.componentname** %7, align 8
  %46 = load i32, i32* @FUSE_MKNOD, align 4
  %47 = load i64, i64* %11, align 8
  %48 = load %struct.vattr*, %struct.vattr** %8, align 8
  %49 = getelementptr inbounds %struct.vattr, %struct.vattr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @fuse_internal_newentry(%struct.vnode* %43, %struct.vnode** %44, %struct.componentname* %45, i32 %46, %struct.fuse_mknod_in* %10, i64 %47, i32 %50)
  ret i32 %51
}

declare dso_local %struct.fuse_data* @fuse_get_mpdata(i32) #1

declare dso_local i32 @MAKEIMODE(i32, i32) #1

declare dso_local i64 @fuse_libabi_geq(%struct.fuse_data*, i32, i32) #1

declare dso_local i32 @fuse_internal_newentry(%struct.vnode*, %struct.vnode**, %struct.componentname*, i32, %struct.fuse_mknod_in*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
