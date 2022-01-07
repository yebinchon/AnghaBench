; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_mkdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.vop_mkdir_args = type { %struct.vattr*, %struct.componentname*, %struct.vnode**, %struct.vnode* }
%struct.vattr = type { i32, i32 }
%struct.componentname = type { i32 }
%struct.vnode = type { i32 }
%struct.fuse_mkdir_in = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_6__* null, align 8
@FUSE_MKDIR = common dso_local global i32 0, align 4
@VDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_mkdir_args*)* @fuse_vnop_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_vnop_mkdir(%struct.vop_mkdir_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_mkdir_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vnode**, align 8
  %6 = alloca %struct.componentname*, align 8
  %7 = alloca %struct.vattr*, align 8
  %8 = alloca %struct.fuse_mkdir_in, align 4
  store %struct.vop_mkdir_args* %0, %struct.vop_mkdir_args** %3, align 8
  %9 = load %struct.vop_mkdir_args*, %struct.vop_mkdir_args** %3, align 8
  %10 = getelementptr inbounds %struct.vop_mkdir_args, %struct.vop_mkdir_args* %9, i32 0, i32 3
  %11 = load %struct.vnode*, %struct.vnode** %10, align 8
  store %struct.vnode* %11, %struct.vnode** %4, align 8
  %12 = load %struct.vop_mkdir_args*, %struct.vop_mkdir_args** %3, align 8
  %13 = getelementptr inbounds %struct.vop_mkdir_args, %struct.vop_mkdir_args* %12, i32 0, i32 2
  %14 = load %struct.vnode**, %struct.vnode*** %13, align 8
  store %struct.vnode** %14, %struct.vnode*** %5, align 8
  %15 = load %struct.vop_mkdir_args*, %struct.vop_mkdir_args** %3, align 8
  %16 = getelementptr inbounds %struct.vop_mkdir_args, %struct.vop_mkdir_args* %15, i32 0, i32 1
  %17 = load %struct.componentname*, %struct.componentname** %16, align 8
  store %struct.componentname* %17, %struct.componentname** %6, align 8
  %18 = load %struct.vop_mkdir_args*, %struct.vop_mkdir_args** %3, align 8
  %19 = getelementptr inbounds %struct.vop_mkdir_args, %struct.vop_mkdir_args* %18, i32 0, i32 0
  %20 = load %struct.vattr*, %struct.vattr** %19, align 8
  store %struct.vattr* %20, %struct.vattr** %7, align 8
  %21 = load %struct.vnode*, %struct.vnode** %4, align 8
  %22 = call i64 @fuse_isdeadfs(%struct.vnode* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %49

26:                                               ; preds = %1
  %27 = load %struct.vattr*, %struct.vattr** %7, align 8
  %28 = getelementptr inbounds %struct.vattr, %struct.vattr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vattr*, %struct.vattr** %7, align 8
  %31 = getelementptr inbounds %struct.vattr, %struct.vattr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @MAKEIMODE(i32 %29, i32 %32)
  %34 = getelementptr inbounds %struct.fuse_mkdir_in, %struct.fuse_mkdir_in* %8, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curthread, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.fuse_mkdir_in, %struct.fuse_mkdir_in* %8, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.vnode*, %struct.vnode** %4, align 8
  %44 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %45 = load %struct.componentname*, %struct.componentname** %6, align 8
  %46 = load i32, i32* @FUSE_MKDIR, align 4
  %47 = load i32, i32* @VDIR, align 4
  %48 = call i32 @fuse_internal_newentry(%struct.vnode* %43, %struct.vnode** %44, %struct.componentname* %45, i32 %46, %struct.fuse_mkdir_in* %8, i32 8, i32 %47)
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %26, %24
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @fuse_isdeadfs(%struct.vnode*) #1

declare dso_local i32 @MAKEIMODE(i32, i32) #1

declare dso_local i32 @fuse_internal_newentry(%struct.vnode*, %struct.vnode**, %struct.componentname*, i32, %struct.fuse_mkdir_in*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
