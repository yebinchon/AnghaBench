; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_brelvp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_brelvp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, %struct.bufobj*, %struct.vnode*, i32 }
%struct.bufobj = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.vnode = type { i32 }

@KTR_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"brelvp(%p) vp %p flags %X\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"brelvp: NULL\00", align 1
@BX_VNDIRTY = common dso_local global i32 0, align 4
@BX_VNCLEAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"brelvp: Buffer %p not on queue.\00", align 1
@BO_ONWORKLST = common dso_local global i32 0, align 4
@sync_mtx = common dso_local global i32 0, align 4
@bo_synclist = common dso_local global i32 0, align 4
@syncer_worklist_len = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brelvp(%struct.buf* %0) #0 {
  %2 = alloca %struct.buf*, align 8
  %3 = alloca %struct.bufobj*, align 8
  %4 = alloca %struct.vnode*, align 8
  store %struct.buf* %0, %struct.buf** %2, align 8
  %5 = load i32, i32* @KTR_BUF, align 4
  %6 = load %struct.buf*, %struct.buf** %2, align 8
  %7 = load %struct.buf*, %struct.buf** %2, align 8
  %8 = getelementptr inbounds %struct.buf, %struct.buf* %7, i32 0, i32 2
  %9 = load %struct.vnode*, %struct.vnode** %8, align 8
  %10 = load %struct.buf*, %struct.buf** %2, align 8
  %11 = getelementptr inbounds %struct.buf, %struct.buf* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @CTR3(i32 %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.buf* %6, %struct.vnode* %9, i32 %12)
  %14 = load %struct.buf*, %struct.buf** %2, align 8
  %15 = getelementptr inbounds %struct.buf, %struct.buf* %14, i32 0, i32 2
  %16 = load %struct.vnode*, %struct.vnode** %15, align 8
  %17 = icmp ne %struct.vnode* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.buf*, %struct.buf** %2, align 8
  %21 = getelementptr inbounds %struct.buf, %struct.buf* %20, i32 0, i32 2
  %22 = load %struct.vnode*, %struct.vnode** %21, align 8
  store %struct.vnode* %22, %struct.vnode** %4, align 8
  %23 = load %struct.buf*, %struct.buf** %2, align 8
  %24 = getelementptr inbounds %struct.buf, %struct.buf* %23, i32 0, i32 1
  %25 = load %struct.bufobj*, %struct.bufobj** %24, align 8
  store %struct.bufobj* %25, %struct.bufobj** %3, align 8
  %26 = load %struct.bufobj*, %struct.bufobj** %3, align 8
  %27 = call i32 @BO_LOCK(%struct.bufobj* %26)
  %28 = load %struct.buf*, %struct.buf** %2, align 8
  %29 = getelementptr inbounds %struct.buf, %struct.buf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @BX_VNDIRTY, align 4
  %32 = load i32, i32* @BX_VNCLEAN, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %1
  %37 = load %struct.buf*, %struct.buf** %2, align 8
  %38 = call i32 @buf_vlist_remove(%struct.buf* %37)
  br label %42

39:                                               ; preds = %1
  %40 = load %struct.buf*, %struct.buf** %2, align 8
  %41 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), %struct.buf* %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.bufobj*, %struct.bufobj** %3, align 8
  %44 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @BO_ONWORKLST, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %42
  %50 = load %struct.bufobj*, %struct.bufobj** %3, align 8
  %51 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %49
  %56 = load i32, i32* @BO_ONWORKLST, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.bufobj*, %struct.bufobj** %3, align 8
  %59 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = call i32 @mtx_lock(i32* @sync_mtx)
  %63 = load %struct.bufobj*, %struct.bufobj** %3, align 8
  %64 = load i32, i32* @bo_synclist, align 4
  %65 = call i32 @LIST_REMOVE(%struct.bufobj* %63, i32 %64)
  %66 = load i32, i32* @syncer_worklist_len, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* @syncer_worklist_len, align 4
  %68 = call i32 @mtx_unlock(i32* @sync_mtx)
  br label %69

69:                                               ; preds = %55, %49, %42
  %70 = load %struct.buf*, %struct.buf** %2, align 8
  %71 = getelementptr inbounds %struct.buf, %struct.buf* %70, i32 0, i32 2
  store %struct.vnode* null, %struct.vnode** %71, align 8
  %72 = load %struct.buf*, %struct.buf** %2, align 8
  %73 = getelementptr inbounds %struct.buf, %struct.buf* %72, i32 0, i32 1
  store %struct.bufobj* null, %struct.bufobj** %73, align 8
  %74 = load %struct.bufobj*, %struct.bufobj** %3, align 8
  %75 = call i32 @BO_UNLOCK(%struct.bufobj* %74)
  %76 = load %struct.vnode*, %struct.vnode** %4, align 8
  %77 = call i32 @vdrop(%struct.vnode* %76)
  ret void
}

declare dso_local i32 @CTR3(i32, i8*, %struct.buf*, %struct.vnode*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @BO_LOCK(%struct.bufobj*) #1

declare dso_local i32 @buf_vlist_remove(%struct.buf*) #1

declare dso_local i32 @panic(i8*, %struct.buf*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.bufobj*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @BO_UNLOCK(%struct.bufobj*) #1

declare dso_local i32 @vdrop(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
