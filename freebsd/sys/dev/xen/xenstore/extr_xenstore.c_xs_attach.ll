; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore.c_xs_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore.c_xs_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.proc = type { i32 }
%struct.evtchn_alloc_unbound = type { i64, i8*, i8* }

@xs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@DOMID_SELF = common dso_local global i8* null, align 8
@EVTCHNOP_alloc_unbound = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"unable to alloc event channel for Dom0: %d\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@M_XENSTORE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@xen_store = common dso_local global i64 0, align 8
@PAT_WRITE_BACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"ring lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"reply lock\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"xenwatch\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"xenstore request\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"watches\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"watch events\00", align 1
@xenwatch_thread = common dso_local global i32 0, align 4
@RFHIGHPID = common dso_local global i32 0, align 4
@xs_rcv_thread = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"xenstore_rcv\00", align 1
@xs_attach_deferred = common dso_local global i32 0, align 4
@xs_attach_late = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xs_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xs_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.evtchn_alloc_unbound, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 14), align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @device_set_softc(i32 %8, %struct.TYPE_4__* @xs)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 0), align 8
  %10 = call i64 (...) @xen_get_xenstore_evtchn()
  store i64 %10, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 1), align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 1), align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load i8*, i8** @DOMID_SELF, align 8
  %15 = getelementptr inbounds %struct.evtchn_alloc_unbound, %struct.evtchn_alloc_unbound* %6, i32 0, i32 2
  store i8* %14, i8** %15, align 8
  %16 = load i8*, i8** @DOMID_SELF, align 8
  %17 = getelementptr inbounds %struct.evtchn_alloc_unbound, %struct.evtchn_alloc_unbound* %6, i32 0, i32 1
  store i8* %16, i8** %17, align 8
  %18 = load i32, i32* @EVTCHNOP_alloc_unbound, align 4
  %19 = call i32 @HYPERVISOR_event_channel_op(i32 %18, %struct.evtchn_alloc_unbound* %6)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %22, %13
  %26 = getelementptr inbounds %struct.evtchn_alloc_unbound, %struct.evtchn_alloc_unbound* %6, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 1), align 8
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = load i32, i32* @M_XENSTORE, align 4
  %30 = load i32, i32* @M_WAITOK, align 4
  %31 = load i32, i32* @M_ZERO, align 4
  %32 = or i32 %30, %31
  %33 = call i64 @malloc(i32 %28, i32 %29, i32 %32)
  store i64 %33, i64* @xen_store, align 8
  %34 = load i64, i64* @xen_store, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @pmap_kextract(i32 %35)
  %37 = call i32 @atop(i32 %36)
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 13), align 4
  br label %45

38:                                               ; preds = %1
  %39 = call i32 (...) @xen_get_xenstore_mfn()
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 13), align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 13), align 4
  %41 = call i32 @ptoa(i32 %40)
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = load i32, i32* @PAT_WRITE_BACK, align 4
  %44 = call i64 @pmap_mapdev_attr(i32 %41, i32 %42, i32 %43)
  store i64 %44, i64* @xen_store, align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 0), align 8
  br label %45

45:                                               ; preds = %38, %25
  %46 = call i32 @TAILQ_INIT(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 12))
  %47 = call i32 @TAILQ_INIT(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 11))
  %48 = load i32, i32* @MTX_DEF, align 4
  %49 = call i32 @mtx_init(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 10), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %48)
  %50 = load i32, i32* @MTX_DEF, align 4
  %51 = call i32 @mtx_init(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 9), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %50)
  %52 = call i32 @sx_init(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 8), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %53 = call i32 @sx_init(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 7), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i32, i32* @MTX_DEF, align 4
  %55 = call i32 @mtx_init(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 6), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 %54)
  %56 = load i32, i32* @MTX_DEF, align 4
  %57 = call i32 @mtx_init(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 5), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32* null, i32 %56)
  %58 = call i32 (...) @xs_init_comms()
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %45
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %88

63:                                               ; preds = %45
  %64 = load i32, i32* @xenwatch_thread, align 4
  %65 = load i32, i32* @RFHIGHPID, align 4
  %66 = call i32 @kproc_create(i32 %64, i32* null, %struct.proc** %5, i32 %65, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %88

71:                                               ; preds = %63
  %72 = load %struct.proc*, %struct.proc** %5, align 8
  %73 = getelementptr inbounds %struct.proc, %struct.proc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 4), align 8
  %75 = load i32, i32* @xs_rcv_thread, align 4
  %76 = load i32, i32* @RFHIGHPID, align 4
  %77 = call i32 @kproc_create(i32 %75, i32* null, %struct.proc** null, i32 %76, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* @xs_attach_deferred, align 4
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 3, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 3, i32 0), align 8
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 0), align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = call i32 @config_intrhook_establish(%struct.TYPE_5__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 3))
  br label %86

83:                                               ; preds = %71
  %84 = load i32, i32* @xs_attach_late, align 4
  %85 = call i32 @TASK_INIT(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xs, i32 0, i32 2), i32 0, i32 %84, i32* null)
  br label %86

86:                                               ; preds = %83, %81
  %87 = load i32, i32* %4, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %86, %69, %61
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @device_set_softc(i32, %struct.TYPE_4__*) #1

declare dso_local i64 @xen_get_xenstore_evtchn(...) #1

declare dso_local i32 @HYPERVISOR_event_channel_op(i32, %struct.evtchn_alloc_unbound*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @atop(i32) #1

declare dso_local i32 @pmap_kextract(i32) #1

declare dso_local i32 @xen_get_xenstore_mfn(...) #1

declare dso_local i64 @pmap_mapdev_attr(i32, i32, i32) #1

declare dso_local i32 @ptoa(i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @xs_init_comms(...) #1

declare dso_local i32 @kproc_create(i32, i32*, %struct.proc**, i32, i32, i8*) #1

declare dso_local i32 @config_intrhook_establish(%struct.TYPE_5__*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
