; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqfs_reclaim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqfs_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_reclaim_args = type { %struct.vnode* }
%struct.vnode = type { %struct.mqfs_vdata*, i32 }
%struct.mqfs_vdata = type { %struct.mqfs_node* }
%struct.mqfs_node = type { i32 }
%struct.mqfs_info = type { i32 }

@mv_link = common dso_local global i32 0, align 4
@mvdata_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_reclaim_args*)* @mqfs_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqfs_reclaim(%struct.vop_reclaim_args* %0) #0 {
  %2 = alloca %struct.vop_reclaim_args*, align 8
  %3 = alloca %struct.mqfs_info*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.mqfs_node*, align 8
  %6 = alloca %struct.mqfs_vdata*, align 8
  store %struct.vop_reclaim_args* %0, %struct.vop_reclaim_args** %2, align 8
  %7 = load %struct.vop_reclaim_args*, %struct.vop_reclaim_args** %2, align 8
  %8 = getelementptr inbounds %struct.vop_reclaim_args, %struct.vop_reclaim_args* %7, i32 0, i32 0
  %9 = load %struct.vnode*, %struct.vnode** %8, align 8
  %10 = getelementptr inbounds %struct.vnode, %struct.vnode* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.mqfs_info* @VFSTOMQFS(i32 %11)
  store %struct.mqfs_info* %12, %struct.mqfs_info** %3, align 8
  %13 = load %struct.vop_reclaim_args*, %struct.vop_reclaim_args** %2, align 8
  %14 = getelementptr inbounds %struct.vop_reclaim_args, %struct.vop_reclaim_args* %13, i32 0, i32 0
  %15 = load %struct.vnode*, %struct.vnode** %14, align 8
  store %struct.vnode* %15, %struct.vnode** %4, align 8
  %16 = load %struct.vnode*, %struct.vnode** %4, align 8
  %17 = getelementptr inbounds %struct.vnode, %struct.vnode* %16, i32 0, i32 0
  %18 = load %struct.mqfs_vdata*, %struct.mqfs_vdata** %17, align 8
  store %struct.mqfs_vdata* %18, %struct.mqfs_vdata** %6, align 8
  %19 = load %struct.mqfs_vdata*, %struct.mqfs_vdata** %6, align 8
  %20 = getelementptr inbounds %struct.mqfs_vdata, %struct.mqfs_vdata* %19, i32 0, i32 0
  %21 = load %struct.mqfs_node*, %struct.mqfs_node** %20, align 8
  store %struct.mqfs_node* %21, %struct.mqfs_node** %5, align 8
  %22 = load %struct.mqfs_info*, %struct.mqfs_info** %3, align 8
  %23 = getelementptr inbounds %struct.mqfs_info, %struct.mqfs_info* %22, i32 0, i32 0
  %24 = call i32 @sx_xlock(i32* %23)
  %25 = load %struct.vnode*, %struct.vnode** %4, align 8
  %26 = getelementptr inbounds %struct.vnode, %struct.vnode* %25, i32 0, i32 0
  store %struct.mqfs_vdata* null, %struct.mqfs_vdata** %26, align 8
  %27 = load %struct.mqfs_vdata*, %struct.mqfs_vdata** %6, align 8
  %28 = load i32, i32* @mv_link, align 4
  %29 = call i32 @LIST_REMOVE(%struct.mqfs_vdata* %27, i32 %28)
  %30 = load i32, i32* @mvdata_zone, align 4
  %31 = load %struct.mqfs_vdata*, %struct.mqfs_vdata** %6, align 8
  %32 = call i32 @uma_zfree(i32 %30, %struct.mqfs_vdata* %31)
  %33 = load %struct.mqfs_node*, %struct.mqfs_node** %5, align 8
  %34 = call i32 @mqnode_release(%struct.mqfs_node* %33)
  %35 = load %struct.mqfs_info*, %struct.mqfs_info** %3, align 8
  %36 = getelementptr inbounds %struct.mqfs_info, %struct.mqfs_info* %35, i32 0, i32 0
  %37 = call i32 @sx_xunlock(i32* %36)
  ret i32 0
}

declare dso_local %struct.mqfs_info* @VFSTOMQFS(i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.mqfs_vdata*, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.mqfs_vdata*) #1

declare dso_local i32 @mqnode_release(%struct.mqfs_node*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
