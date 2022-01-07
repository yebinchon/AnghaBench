; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vnops.c_pfs_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vnops.c_pfs_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_close_args = type { i32, %struct.vnode* }
%struct.vnode = type { %struct.pfs_vdata* }
%struct.pfs_vdata = type { i64, %struct.pfs_node* }
%struct.pfs_node = type { i32*, i32 }
%struct.proc = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@NO_PID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_close_args*)* @pfs_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfs_close(%struct.vop_close_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_close_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.pfs_vdata*, align 8
  %6 = alloca %struct.pfs_node*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca i32, align 4
  store %struct.vop_close_args* %0, %struct.vop_close_args** %3, align 8
  %9 = load %struct.vop_close_args*, %struct.vop_close_args** %3, align 8
  %10 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %9, i32 0, i32 1
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
  %26 = load %struct.vnode*, %struct.vnode** %4, align 8
  %27 = call i32 @vrefcnt(%struct.vnode* %26)
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %34, label %29

29:                                               ; preds = %1
  %30 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %31 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29, %1
  %35 = call i32 @PFS_RETURN(i32 0)
  br label %36

36:                                               ; preds = %34, %29
  %37 = load %struct.pfs_vdata*, %struct.pfs_vdata** %5, align 8
  %38 = getelementptr inbounds %struct.pfs_vdata, %struct.pfs_vdata* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NO_PID, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.pfs_vdata*, %struct.pfs_vdata** %5, align 8
  %44 = getelementptr inbounds %struct.pfs_vdata, %struct.pfs_vdata* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call %struct.proc* @pfind(i64 %45)
  store %struct.proc* %46, %struct.proc** %7, align 8
  br label %48

47:                                               ; preds = %36
  store %struct.proc* null, %struct.proc** %7, align 8
  br label %48

48:                                               ; preds = %47, %42
  %49 = load %struct.vop_close_args*, %struct.vop_close_args** %3, align 8
  %50 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.proc*, %struct.proc** %7, align 8
  %53 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %54 = call i32 @pn_close(i32 %51, %struct.proc* %52, %struct.pfs_node* %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.proc*, %struct.proc** %7, align 8
  %56 = icmp ne %struct.proc* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load %struct.proc*, %struct.proc** %7, align 8
  %59 = call i32 @PROC_UNLOCK(%struct.proc* %58)
  br label %60

60:                                               ; preds = %57, %48
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @PFS_RETURN(i32 %61)
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @PFS_TRACE(i8*) #1

declare dso_local i32 @pfs_assert_not_owned(%struct.pfs_node*) #1

declare dso_local i32 @vrefcnt(%struct.vnode*) #1

declare dso_local i32 @PFS_RETURN(i32) #1

declare dso_local %struct.proc* @pfind(i64) #1

declare dso_local i32 @pn_close(i32, %struct.proc*, %struct.pfs_node*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
