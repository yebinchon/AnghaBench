; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vnops.c_pfs_getextattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vnops.c_pfs_getextattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_getextattr_args = type { i32, i32, i32, i32, i32, %struct.vnode* }
%struct.vnode = type { %struct.pfs_vdata* }
%struct.pfs_vdata = type { i32, %struct.pfs_node* }
%struct.pfs_node = type { i32*, i32 }
%struct.proc = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@curthread = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_getextattr_args*)* @pfs_getextattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfs_getextattr(%struct.vop_getextattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_getextattr_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.pfs_vdata*, align 8
  %6 = alloca %struct.pfs_node*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca i32, align 4
  store %struct.vop_getextattr_args* %0, %struct.vop_getextattr_args** %3, align 8
  %9 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %10 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %9, i32 0, i32 5
  %11 = load %struct.vnode*, %struct.vnode** %10, align 8
  store %struct.vnode* %11, %struct.vnode** %4, align 8
  %12 = load %struct.vnode*, %struct.vnode** %4, align 8
  %13 = getelementptr inbounds %struct.vnode, %struct.vnode* %12, i32 0, i32 0
  %14 = load %struct.pfs_vdata*, %struct.pfs_vdata** %13, align 8
  store %struct.pfs_vdata* %14, %struct.pfs_vdata** %5, align 8
  %15 = load %struct.pfs_vdata*, %struct.pfs_vdata** %5, align 8
  %16 = getelementptr inbounds %struct.pfs_vdata, %struct.pfs_vdata* %15, i32 0, i32 1
  %17 = load %struct.pfs_node*, %struct.pfs_node** %16, align 8
  store %struct.pfs_node* %17, %struct.pfs_node** %6, align 8
  %18 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %19 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @PFS_TRACE(i8* %22)
  %24 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %25 = call i32 @pfs_assert_not_owned(%struct.pfs_node* %24)
  %26 = load i32, i32* @curthread, align 4
  %27 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %28 = load %struct.pfs_vdata*, %struct.pfs_vdata** %5, align 8
  %29 = getelementptr inbounds %struct.pfs_vdata, %struct.pfs_vdata* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @pfs_visible(i32 %26, %struct.pfs_node* %27, i32 %30, %struct.proc** %7)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %1
  %34 = load i32, i32* @EIO, align 4
  %35 = call i32 @PFS_RETURN(i32 %34)
  br label %36

36:                                               ; preds = %33, %1
  %37 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %38 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %42, i32* %8, align 4
  br label %63

43:                                               ; preds = %36
  %44 = load i32, i32* @curthread, align 4
  %45 = load %struct.proc*, %struct.proc** %7, align 8
  %46 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %47 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %48 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %51 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %54 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %57 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.vop_getextattr_args*, %struct.vop_getextattr_args** %3, align 8
  %60 = getelementptr inbounds %struct.vop_getextattr_args, %struct.vop_getextattr_args* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @pn_getextattr(i32 %44, %struct.proc* %45, %struct.pfs_node* %46, i32 %49, i32 %52, i32 %55, i32 %58, i32 %61)
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %43, %41
  %64 = load %struct.proc*, %struct.proc** %7, align 8
  %65 = icmp ne %struct.proc* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.proc*, %struct.proc** %7, align 8
  %68 = call i32 @PROC_UNLOCK(%struct.proc* %67)
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @PFS_RETURN(i32 %70)
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @PFS_TRACE(i8*) #1

declare dso_local i32 @pfs_assert_not_owned(%struct.pfs_node*) #1

declare dso_local i32 @pfs_visible(i32, %struct.pfs_node*, i32, %struct.proc**) #1

declare dso_local i32 @PFS_RETURN(i32) #1

declare dso_local i32 @pn_getextattr(i32, %struct.proc*, %struct.pfs_node*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
