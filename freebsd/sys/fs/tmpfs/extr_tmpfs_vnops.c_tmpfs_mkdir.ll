; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_mkdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_mkdir_args = type { %struct.vattr*, %struct.componentname*, %struct.vnode**, %struct.vnode* }
%struct.vattr = type { i64 }
%struct.componentname = type { i32 }
%struct.vnode = type { i32 }

@VDIR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_mkdir_args*)* @tmpfs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmpfs_mkdir(%struct.vop_mkdir_args* %0) #0 {
  %2 = alloca %struct.vop_mkdir_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.vnode**, align 8
  %5 = alloca %struct.componentname*, align 8
  %6 = alloca %struct.vattr*, align 8
  store %struct.vop_mkdir_args* %0, %struct.vop_mkdir_args** %2, align 8
  %7 = load %struct.vop_mkdir_args*, %struct.vop_mkdir_args** %2, align 8
  %8 = getelementptr inbounds %struct.vop_mkdir_args, %struct.vop_mkdir_args* %7, i32 0, i32 3
  %9 = load %struct.vnode*, %struct.vnode** %8, align 8
  store %struct.vnode* %9, %struct.vnode** %3, align 8
  %10 = load %struct.vop_mkdir_args*, %struct.vop_mkdir_args** %2, align 8
  %11 = getelementptr inbounds %struct.vop_mkdir_args, %struct.vop_mkdir_args* %10, i32 0, i32 2
  %12 = load %struct.vnode**, %struct.vnode*** %11, align 8
  store %struct.vnode** %12, %struct.vnode*** %4, align 8
  %13 = load %struct.vop_mkdir_args*, %struct.vop_mkdir_args** %2, align 8
  %14 = getelementptr inbounds %struct.vop_mkdir_args, %struct.vop_mkdir_args* %13, i32 0, i32 1
  %15 = load %struct.componentname*, %struct.componentname** %14, align 8
  store %struct.componentname* %15, %struct.componentname** %5, align 8
  %16 = load %struct.vop_mkdir_args*, %struct.vop_mkdir_args** %2, align 8
  %17 = getelementptr inbounds %struct.vop_mkdir_args, %struct.vop_mkdir_args* %16, i32 0, i32 0
  %18 = load %struct.vattr*, %struct.vattr** %17, align 8
  store %struct.vattr* %18, %struct.vattr** %6, align 8
  %19 = load %struct.vattr*, %struct.vattr** %6, align 8
  %20 = getelementptr inbounds %struct.vattr, %struct.vattr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VDIR, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @MPASS(i32 %24)
  %26 = load %struct.vnode*, %struct.vnode** %3, align 8
  %27 = load %struct.vnode**, %struct.vnode*** %4, align 8
  %28 = load %struct.vattr*, %struct.vattr** %6, align 8
  %29 = load %struct.componentname*, %struct.componentname** %5, align 8
  %30 = call i32 @tmpfs_alloc_file(%struct.vnode* %26, %struct.vnode** %27, %struct.vattr* %28, %struct.componentname* %29, i32* null)
  ret i32 %30
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @tmpfs_alloc_file(%struct.vnode*, %struct.vnode**, %struct.vattr*, %struct.componentname*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
