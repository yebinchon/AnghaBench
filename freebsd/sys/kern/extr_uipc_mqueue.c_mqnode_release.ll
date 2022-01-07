; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqnode_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqnode_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqfs_node = type { i64, i32, %struct.mqfs_info* }
%struct.mqfs_info = type { i32 }

@mqfstype_dir = common dso_local global i64 0, align 8
@mqfstype_root = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mqfs_node*)* @mqnode_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mqnode_release(%struct.mqfs_node* %0) #0 {
  %2 = alloca %struct.mqfs_node*, align 8
  %3 = alloca %struct.mqfs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mqfs_node* %0, %struct.mqfs_node** %2, align 8
  %7 = load %struct.mqfs_node*, %struct.mqfs_node** %2, align 8
  %8 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %7, i32 0, i32 2
  %9 = load %struct.mqfs_info*, %struct.mqfs_info** %8, align 8
  store %struct.mqfs_info* %9, %struct.mqfs_info** %3, align 8
  %10 = load %struct.mqfs_node*, %struct.mqfs_node** %2, align 8
  %11 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %10, i32 0, i32 1
  %12 = call i32 @atomic_fetchadd_int(i32* %11, i32 -1)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.mqfs_node*, %struct.mqfs_node** %2, align 8
  %14 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @mqfstype_dir, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.mqfs_node*, %struct.mqfs_node** %2, align 8
  %20 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @mqfstype_root, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %1
  store i32 3, i32* %5, align 4
  br label %26

25:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %26
  %31 = load %struct.mqfs_info*, %struct.mqfs_info** %3, align 8
  %32 = getelementptr inbounds %struct.mqfs_info, %struct.mqfs_info* %31, i32 0, i32 0
  %33 = call i32 @sx_xlocked(i32* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load %struct.mqfs_info*, %struct.mqfs_info** %3, align 8
  %38 = getelementptr inbounds %struct.mqfs_info, %struct.mqfs_info* %37, i32 0, i32 0
  %39 = call i32 @sx_xlock(i32* %38)
  br label %40

40:                                               ; preds = %36, %30
  %41 = load %struct.mqfs_node*, %struct.mqfs_node** %2, align 8
  %42 = call i32 @mqfs_destroy(%struct.mqfs_node* %41)
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load %struct.mqfs_info*, %struct.mqfs_info** %3, align 8
  %47 = getelementptr inbounds %struct.mqfs_info, %struct.mqfs_info* %46, i32 0, i32 0
  %48 = call i32 @sx_xunlock(i32* %47)
  br label %49

49:                                               ; preds = %45, %40
  br label %50

50:                                               ; preds = %49, %26
  ret void
}

declare dso_local i32 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local i32 @sx_xlocked(i32*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @mqfs_destroy(%struct.mqfs_node*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
