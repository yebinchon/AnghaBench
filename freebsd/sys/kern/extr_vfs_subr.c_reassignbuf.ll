; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_reassignbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_reassignbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32, %struct.bufobj*, %struct.vnode* }
%struct.bufobj = type { i32, %struct.bufv, %struct.bufv }
%struct.bufv = type { i64, i32 }
%struct.vnode = type { i32 }

@reassignbufcalls = common dso_local global i32 0, align 4
@KTR_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"reassignbuf(%p) vp %p flags %X\00", align 1
@B_PAGING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"cannot reassign paging buffer\00", align 1
@BX_VNDIRTY = common dso_local global i32 0, align 4
@BX_VNCLEAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"reassignbuf: Buffer %p not on queue.\00", align 1
@B_DELWRI = common dso_local global i32 0, align 4
@BO_ONWORKLST = common dso_local global i32 0, align 4
@dirdelay = common dso_local global i32 0, align 4
@metadelay = common dso_local global i32 0, align 4
@filedelay = common dso_local global i32 0, align 4
@sync_mtx = common dso_local global i32 0, align 4
@bo_synclist = common dso_local global i32 0, align 4
@syncer_worklist_len = common dso_local global i32 0, align 4
@buflists = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reassignbuf(%struct.buf* %0) #0 {
  %2 = alloca %struct.buf*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.bufobj*, align 8
  %5 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %2, align 8
  %6 = load %struct.buf*, %struct.buf** %2, align 8
  %7 = getelementptr inbounds %struct.buf, %struct.buf* %6, i32 0, i32 3
  %8 = load %struct.vnode*, %struct.vnode** %7, align 8
  store %struct.vnode* %8, %struct.vnode** %3, align 8
  %9 = load %struct.buf*, %struct.buf** %2, align 8
  %10 = getelementptr inbounds %struct.buf, %struct.buf* %9, i32 0, i32 2
  %11 = load %struct.bufobj*, %struct.bufobj** %10, align 8
  store %struct.bufobj* %11, %struct.bufobj** %4, align 8
  %12 = load i32, i32* @reassignbufcalls, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @reassignbufcalls, align 4
  %14 = load i32, i32* @KTR_BUF, align 4
  %15 = load %struct.buf*, %struct.buf** %2, align 8
  %16 = load %struct.buf*, %struct.buf** %2, align 8
  %17 = getelementptr inbounds %struct.buf, %struct.buf* %16, i32 0, i32 3
  %18 = load %struct.vnode*, %struct.vnode** %17, align 8
  %19 = load %struct.buf*, %struct.buf** %2, align 8
  %20 = getelementptr inbounds %struct.buf, %struct.buf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @CTR3(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.buf* %15, %struct.vnode* %18, i32 %21)
  %23 = load %struct.buf*, %struct.buf** %2, align 8
  %24 = getelementptr inbounds %struct.buf, %struct.buf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @B_PAGING, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %1
  %32 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %33 = call i32 @BO_LOCK(%struct.bufobj* %32)
  %34 = load %struct.buf*, %struct.buf** %2, align 8
  %35 = getelementptr inbounds %struct.buf, %struct.buf* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BX_VNDIRTY, align 4
  %38 = load i32, i32* @BX_VNCLEAN, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load %struct.buf*, %struct.buf** %2, align 8
  %44 = call i32 @buf_vlist_remove(%struct.buf* %43)
  br label %48

45:                                               ; preds = %31
  %46 = load %struct.buf*, %struct.buf** %2, align 8
  %47 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), %struct.buf* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load %struct.buf*, %struct.buf** %2, align 8
  %50 = getelementptr inbounds %struct.buf, %struct.buf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @B_DELWRI, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %81

55:                                               ; preds = %48
  %56 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %57 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @BO_ONWORKLST, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %55
  %63 = load %struct.vnode*, %struct.vnode** %3, align 8
  %64 = getelementptr inbounds %struct.vnode, %struct.vnode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %70 [
    i32 128, label %66
    i32 129, label %68
  ]

66:                                               ; preds = %62
  %67 = load i32, i32* @dirdelay, align 4
  store i32 %67, i32* %5, align 4
  br label %72

68:                                               ; preds = %62
  %69 = load i32, i32* @metadelay, align 4
  store i32 %69, i32* %5, align 4
  br label %72

70:                                               ; preds = %62
  %71 = load i32, i32* @filedelay, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %68, %66
  %73 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @vn_syncer_add_to_worklist(%struct.bufobj* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %55
  %77 = load %struct.buf*, %struct.buf** %2, align 8
  %78 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %79 = load i32, i32* @BX_VNDIRTY, align 4
  %80 = call i32 @buf_vlist_add(%struct.buf* %77, %struct.bufobj* %78, i32 %79)
  br label %113

81:                                               ; preds = %48
  %82 = load %struct.buf*, %struct.buf** %2, align 8
  %83 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %84 = load i32, i32* @BX_VNCLEAN, align 4
  %85 = call i32 @buf_vlist_add(%struct.buf* %82, %struct.bufobj* %83, i32 %84)
  %86 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %87 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @BO_ONWORKLST, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %81
  %93 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %94 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.bufv, %struct.bufv* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %92
  %99 = call i32 @mtx_lock(i32* @sync_mtx)
  %100 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %101 = load i32, i32* @bo_synclist, align 4
  %102 = call i32 @LIST_REMOVE(%struct.bufobj* %100, i32 %101)
  %103 = load i32, i32* @syncer_worklist_len, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* @syncer_worklist_len, align 4
  %105 = call i32 @mtx_unlock(i32* @sync_mtx)
  %106 = load i32, i32* @BO_ONWORKLST, align 4
  %107 = xor i32 %106, -1
  %108 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %109 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %98, %92, %81
  br label %113

113:                                              ; preds = %112, %76
  %114 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %115 = call i32 @BO_UNLOCK(%struct.bufobj* %114)
  ret void
}

declare dso_local i32 @CTR3(i32, i8*, %struct.buf*, %struct.vnode*, i32) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @BO_LOCK(%struct.bufobj*) #1

declare dso_local i32 @buf_vlist_remove(%struct.buf*) #1

declare dso_local i32 @vn_syncer_add_to_worklist(%struct.bufobj*, i32) #1

declare dso_local i32 @buf_vlist_add(%struct.buf*, %struct.bufobj*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.bufobj*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @BO_UNLOCK(%struct.bufobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
