; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqfs_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqfs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_remove_args = type { %struct.TYPE_5__*, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.mqfs_info = type { i32 }
%struct.mqfs_node = type { i32 }

@VDIR = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_remove_args*)* @mqfs_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqfs_remove(%struct.vop_remove_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_remove_args*, align 8
  %4 = alloca %struct.mqfs_info*, align 8
  %5 = alloca %struct.mqfs_node*, align 8
  %6 = alloca i32, align 4
  store %struct.vop_remove_args* %0, %struct.vop_remove_args** %3, align 8
  %7 = load %struct.vop_remove_args*, %struct.vop_remove_args** %3, align 8
  %8 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mqfs_info* @VFSTOMQFS(i32 %11)
  store %struct.mqfs_info* %12, %struct.mqfs_info** %4, align 8
  %13 = load %struct.vop_remove_args*, %struct.vop_remove_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VDIR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @EPERM, align 4
  store i32 %21, i32* %2, align 4
  br label %41

22:                                               ; preds = %1
  %23 = load %struct.vop_remove_args*, %struct.vop_remove_args** %3, align 8
  %24 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = call %struct.mqfs_node* @VTON(%struct.TYPE_6__* %25)
  store %struct.mqfs_node* %26, %struct.mqfs_node** %5, align 8
  %27 = load %struct.mqfs_info*, %struct.mqfs_info** %4, align 8
  %28 = getelementptr inbounds %struct.mqfs_info, %struct.mqfs_info* %27, i32 0, i32 0
  %29 = call i32 @sx_xlock(i32* %28)
  %30 = load %struct.mqfs_node*, %struct.mqfs_node** %5, align 8
  %31 = load %struct.vop_remove_args*, %struct.vop_remove_args** %3, align 8
  %32 = getelementptr inbounds %struct.vop_remove_args, %struct.vop_remove_args* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @do_unlink(%struct.mqfs_node* %30, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.mqfs_info*, %struct.mqfs_info** %4, align 8
  %38 = getelementptr inbounds %struct.mqfs_info, %struct.mqfs_info* %37, i32 0, i32 0
  %39 = call i32 @sx_xunlock(i32* %38)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %22, %20
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.mqfs_info* @VFSTOMQFS(i32) #1

declare dso_local %struct.mqfs_node* @VTON(%struct.TYPE_6__*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @do_unlink(%struct.mqfs_node*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
