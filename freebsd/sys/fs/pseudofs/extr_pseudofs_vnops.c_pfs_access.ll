; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vnops.c_pfs_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vnops.c_pfs_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_access_args = type { i32, i32, %struct.vnode* }
%struct.vnode = type { i32, %struct.pfs_vdata* }
%struct.pfs_vdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vattr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_access_args*)* @pfs_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfs_access(%struct.vop_access_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_access_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.pfs_vdata*, align 8
  %6 = alloca %struct.vattr, align 4
  %7 = alloca i32, align 4
  store %struct.vop_access_args* %0, %struct.vop_access_args** %3, align 8
  %8 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %9 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %8, i32 0, i32 2
  %10 = load %struct.vnode*, %struct.vnode** %9, align 8
  store %struct.vnode* %10, %struct.vnode** %4, align 8
  %11 = load %struct.vnode*, %struct.vnode** %4, align 8
  %12 = getelementptr inbounds %struct.vnode, %struct.vnode* %11, i32 0, i32 1
  %13 = load %struct.pfs_vdata*, %struct.pfs_vdata** %12, align 8
  store %struct.pfs_vdata* %13, %struct.pfs_vdata** %5, align 8
  %14 = load %struct.pfs_vdata*, %struct.pfs_vdata** %5, align 8
  %15 = getelementptr inbounds %struct.pfs_vdata, %struct.pfs_vdata* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @PFS_TRACE(i8* %20)
  %22 = load %struct.pfs_vdata*, %struct.pfs_vdata** %5, align 8
  %23 = load %struct.vnode*, %struct.vnode** %4, align 8
  %24 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %25 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @VOP_GETATTR(%struct.vnode* %23, %struct.vattr* %6, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @PFS_RETURN(i32 %31)
  br label %33

33:                                               ; preds = %30, %1
  %34 = load %struct.vnode*, %struct.vnode** %4, align 8
  %35 = getelementptr inbounds %struct.vnode, %struct.vnode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.vattr, %struct.vattr* %6, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.vattr, %struct.vattr* %6, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.vattr, %struct.vattr* %6, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %44 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %47 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @vaccess(i32 %36, i32 %38, i32 %40, i32 %42, i32 %45, i32 %48, i32* null)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @PFS_RETURN(i32 %50)
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @PFS_TRACE(i8*) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, i32) #1

declare dso_local i32 @PFS_RETURN(i32) #1

declare dso_local i32 @vaccess(i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
