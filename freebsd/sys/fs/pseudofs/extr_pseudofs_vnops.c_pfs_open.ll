; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vnops.c_pfs_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vnops.c_pfs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_open_args = type { i32, %struct.vnode* }
%struct.vnode = type { %struct.pfs_vdata* }
%struct.pfs_vdata = type { %struct.pfs_node* }
%struct.pfs_node = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"%s (mode 0x%x)\00", align 1
@FREAD = common dso_local global i32 0, align 4
@PFS_RD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@PFS_WR = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@O_SHLOCK = common dso_local global i32 0, align 4
@O_EXLOCK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_open_args*)* @pfs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfs_open(%struct.vop_open_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_open_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.pfs_vdata*, align 8
  %6 = alloca %struct.pfs_node*, align 8
  %7 = alloca i32, align 4
  store %struct.vop_open_args* %0, %struct.vop_open_args** %3, align 8
  %8 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %9 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %8, i32 0, i32 1
  %10 = load %struct.vnode*, %struct.vnode** %9, align 8
  store %struct.vnode* %10, %struct.vnode** %4, align 8
  %11 = load %struct.vnode*, %struct.vnode** %4, align 8
  %12 = getelementptr inbounds %struct.vnode, %struct.vnode* %11, i32 0, i32 0
  %13 = load %struct.pfs_vdata*, %struct.pfs_vdata** %12, align 8
  store %struct.pfs_vdata* %13, %struct.pfs_vdata** %5, align 8
  %14 = load %struct.pfs_vdata*, %struct.pfs_vdata** %5, align 8
  %15 = getelementptr inbounds %struct.pfs_vdata, %struct.pfs_vdata* %14, i32 0, i32 0
  %16 = load %struct.pfs_node*, %struct.pfs_node** %15, align 8
  store %struct.pfs_node* %16, %struct.pfs_node** %6, align 8
  %17 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %18 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %21 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @PFS_TRACE(i8* %25)
  %27 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %28 = call i32 @pfs_assert_not_owned(%struct.pfs_node* %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @FREAD, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @PFS_RD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33, %1
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @FWRITE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @PFS_WR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43, %33
  %49 = load i32, i32* @EPERM, align 4
  %50 = call i32 @PFS_RETURN(i32 %49)
  br label %51

51:                                               ; preds = %48, %43, %38
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @O_SHLOCK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @O_EXLOCK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56, %51
  %62 = load i32, i32* @EOPNOTSUPP, align 4
  %63 = call i32 @PFS_RETURN(i32 %62)
  br label %64

64:                                               ; preds = %61, %56
  %65 = call i32 @PFS_RETURN(i32 0)
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @PFS_TRACE(i8*) #1

declare dso_local i32 @pfs_assert_not_owned(%struct.pfs_node*) #1

declare dso_local i32 @PFS_RETURN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
