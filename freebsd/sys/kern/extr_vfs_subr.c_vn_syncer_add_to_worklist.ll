; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vn_syncer_add_to_worklist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vn_syncer_add_to_worklist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufobj = type { i32 }

@sync_mtx = common dso_local global i32 0, align 4
@BO_ONWORKLST = common dso_local global i32 0, align 4
@bo_synclist = common dso_local global i32 0, align 4
@syncer_worklist_len = common dso_local global i32 0, align 4
@syncer_maxdelay = common dso_local global i32 0, align 4
@syncer_delayno = common dso_local global i32 0, align 4
@syncer_mask = common dso_local global i32 0, align 4
@syncer_workitem_pending = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufobj*, i32)* @vn_syncer_add_to_worklist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vn_syncer_add_to_worklist(%struct.bufobj* %0, i32 %1) #0 {
  %3 = alloca %struct.bufobj*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bufobj* %0, %struct.bufobj** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bufobj*, %struct.bufobj** %3, align 8
  %7 = call i32 @ASSERT_BO_WLOCKED(%struct.bufobj* %6)
  %8 = call i32 @mtx_lock(i32* @sync_mtx)
  %9 = load %struct.bufobj*, %struct.bufobj** %3, align 8
  %10 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @BO_ONWORKLST, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.bufobj*, %struct.bufobj** %3, align 8
  %17 = load i32, i32* @bo_synclist, align 4
  %18 = call i32 @LIST_REMOVE(%struct.bufobj* %16, i32 %17)
  br label %27

19:                                               ; preds = %2
  %20 = load i32, i32* @BO_ONWORKLST, align 4
  %21 = load %struct.bufobj*, %struct.bufobj** %3, align 8
  %22 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @syncer_worklist_len, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @syncer_worklist_len, align 4
  br label %27

27:                                               ; preds = %19, %15
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @syncer_maxdelay, align 4
  %30 = sub nsw i32 %29, 2
  %31 = icmp sgt i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @syncer_maxdelay, align 4
  %34 = sub nsw i32 %33, 2
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* @syncer_delayno, align 4
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* @syncer_mask, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %5, align 4
  %41 = load i32*, i32** @syncer_workitem_pending, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load %struct.bufobj*, %struct.bufobj** %3, align 8
  %46 = load i32, i32* @bo_synclist, align 4
  %47 = call i32 @LIST_INSERT_HEAD(i32* %44, %struct.bufobj* %45, i32 %46)
  %48 = call i32 @mtx_unlock(i32* @sync_mtx)
  ret void
}

declare dso_local i32 @ASSERT_BO_WLOCKED(%struct.bufobj*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.bufobj*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.bufobj*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
