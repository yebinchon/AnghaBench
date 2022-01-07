; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ngb_mod_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ngb_mod_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.thread = type { i32 }

@ng_typelist_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"netgraph types\00", align 1
@ng_idhash_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"netgraph idhash\00", align 1
@ng_namehash_lock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"netgraph namehash\00", align 1
@ng_topo_lock = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"netgraph topology mutex\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"NetGraph items\00", align 1
@UMA_ALIGN_CACHE = common dso_local global i32 0, align 4
@ng_qzone = common dso_local global i32 0, align 4
@maxalloc = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"NetGraph data items\00", align 1
@ng_qdzone = common dso_local global i32 0, align 4
@maxdata = common dso_local global i32 0, align 4
@numthreads = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@ngthread = common dso_local global i32 0, align 4
@RFHIGHPID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"ng_queue\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"ng_queue%d\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@ng_nodelist_mtx = common dso_local global i32 0, align 4
@ngq_mtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @ngb_mod_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngb_mod_event(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %52 [
    i32 129, label %12
    i32 128, label %50
  ]

12:                                               ; preds = %3
  %13 = call i32 (...) @NG_WORKLIST_LOCK_INIT()
  %14 = call i32 @rw_init(i32* @ng_typelist_lock, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @rw_init(i32* @ng_idhash_lock, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @rw_init(i32* @ng_namehash_lock, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %17 = call i32 @rw_init(i32* @ng_topo_lock, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %18 = load i32, i32* @UMA_ALIGN_CACHE, align 4
  %19 = call i32 @uma_zcreate(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %18, i32 0)
  store i32 %19, i32* @ng_qzone, align 4
  %20 = load i32, i32* @ng_qzone, align 4
  %21 = load i32, i32* @maxalloc, align 4
  %22 = call i32 @uma_zone_set_max(i32 %20, i32 %21)
  %23 = load i32, i32* @UMA_ALIGN_CACHE, align 4
  %24 = call i32 @uma_zcreate(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %23, i32 0)
  store i32 %24, i32* @ng_qdzone, align 4
  %25 = load i32, i32* @ng_qdzone, align 4
  %26 = load i32, i32* @maxdata, align 4
  %27 = call i32 @uma_zone_set_max(i32 %25, i32 %26)
  %28 = load i32, i32* @numthreads, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %12
  %31 = load i32, i32* @mp_ncpus, align 4
  store i32 %31, i32* @numthreads, align 4
  br label %32

32:                                               ; preds = %30, %12
  store %struct.proc* null, %struct.proc** %7, align 8
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %46, %32
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @numthreads, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load i32, i32* @ngthread, align 4
  %39 = load i32, i32* @RFHIGHPID, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @kproc_kthread_add(i32 %38, i32* null, %struct.proc** %7, %struct.thread** %8, i32 %39, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* @numthreads, align 4
  br label %49

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %33

49:                                               ; preds = %43, %33
  br label %54

50:                                               ; preds = %3
  %51 = load i32, i32* @EBUSY, align 4
  store i32 %51, i32* %10, align 4
  br label %54

52:                                               ; preds = %3
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %52, %50, %49
  %55 = load i32, i32* %10, align 4
  ret i32 %55
}

declare dso_local i32 @NG_WORKLIST_LOCK_INIT(...) #1

declare dso_local i32 @rw_init(i32*, i8*) #1

declare dso_local i32 @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @uma_zone_set_max(i32, i32) #1

declare dso_local i32 @kproc_kthread_add(i32, i32*, %struct.proc**, %struct.thread**, i32, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
