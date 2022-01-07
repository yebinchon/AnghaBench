; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_mod_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_mod_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mod_event.loaded = internal global i32 0, align 4
@mlu = common dso_local global i32 0, align 4
@CPL_SET_TCB_RPL = common dso_local global i32 0, align 4
@t4_filter_rpl = common dso_local global i32 0, align 4
@CPL_COOKIE_FILTER = common dso_local global i32 0, align 4
@CPL_L2T_WRITE_RPL = common dso_local global i32 0, align 4
@do_l2t_write_rpl = common dso_local global i32 0, align 4
@CPL_ACT_OPEN_RPL = common dso_local global i32 0, align 4
@t4_hashfilter_ao_rpl = common dso_local global i32 0, align 4
@CPL_COOKIE_HASHFILTER = common dso_local global i32 0, align 4
@t4_hashfilter_tcb_rpl = common dso_local global i32 0, align 4
@CPL_ABORT_RPL_RSS = common dso_local global i32 0, align 4
@t4_del_hashfilter_rpl = common dso_local global i32 0, align 4
@CPL_TRACE_PKT = common dso_local global i32 0, align 4
@t4_trace_pkt = common dso_local global i32 0, align 4
@CPL_T5_TRACE_PKT = common dso_local global i32 0, align 4
@t5_trace_pkt = common dso_local global i32 0, align 4
@CPL_SMT_WRITE_RPL = common dso_local global i32 0, align 4
@do_smt_write_rpl = common dso_local global i32 0, align 4
@t4_list_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"T4/T5 adapters\00", align 1
@t4_list = common dso_local global i32 0, align 4
@fatal_callout = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"%ju clusters with custom free routine still is use.\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"t4unload\00", align 1
@hz = common dso_local global i32 0, align 4
@t4_uld_list = common dso_local global i32 0, align 4
@t4_uld_list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @mod_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mod_event(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %97 [
    i32 129, label %10
    i32 128, label %53
  ]

10:                                               ; preds = %3
  %11 = call i32 @sx_xlock(i32* @mlu)
  %12 = load i32, i32* @mod_event.loaded, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @mod_event.loaded, align 4
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %10
  %16 = call i32 (...) @t4_sge_modload()
  %17 = load i32, i32* @CPL_SET_TCB_RPL, align 4
  %18 = load i32, i32* @t4_filter_rpl, align 4
  %19 = load i32, i32* @CPL_COOKIE_FILTER, align 4
  %20 = call i32 @t4_register_shared_cpl_handler(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @CPL_L2T_WRITE_RPL, align 4
  %22 = load i32, i32* @do_l2t_write_rpl, align 4
  %23 = load i32, i32* @CPL_COOKIE_FILTER, align 4
  %24 = call i32 @t4_register_shared_cpl_handler(i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @CPL_ACT_OPEN_RPL, align 4
  %26 = load i32, i32* @t4_hashfilter_ao_rpl, align 4
  %27 = load i32, i32* @CPL_COOKIE_HASHFILTER, align 4
  %28 = call i32 @t4_register_shared_cpl_handler(i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* @CPL_SET_TCB_RPL, align 4
  %30 = load i32, i32* @t4_hashfilter_tcb_rpl, align 4
  %31 = load i32, i32* @CPL_COOKIE_HASHFILTER, align 4
  %32 = call i32 @t4_register_shared_cpl_handler(i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* @CPL_ABORT_RPL_RSS, align 4
  %34 = load i32, i32* @t4_del_hashfilter_rpl, align 4
  %35 = load i32, i32* @CPL_COOKIE_HASHFILTER, align 4
  %36 = call i32 @t4_register_shared_cpl_handler(i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* @CPL_TRACE_PKT, align 4
  %38 = load i32, i32* @t4_trace_pkt, align 4
  %39 = call i32 @t4_register_cpl_handler(i32 %37, i32 %38)
  %40 = load i32, i32* @CPL_T5_TRACE_PKT, align 4
  %41 = load i32, i32* @t5_trace_pkt, align 4
  %42 = call i32 @t4_register_cpl_handler(i32 %40, i32 %41)
  %43 = load i32, i32* @CPL_SMT_WRITE_RPL, align 4
  %44 = load i32, i32* @do_smt_write_rpl, align 4
  %45 = call i32 @t4_register_cpl_handler(i32 %43, i32 %44)
  %46 = call i32 @sx_init(i32* @t4_list_lock, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %47 = call i32 @SLIST_INIT(i32* @t4_list)
  %48 = call i32 @callout_init(i32* @fatal_callout, i32 1)
  %49 = call i32 (...) @t4_tracer_modload()
  %50 = call i32 (...) @tweak_tunables()
  br label %51

51:                                               ; preds = %15, %10
  %52 = call i32 @sx_xunlock(i32* @mlu)
  br label %97

53:                                               ; preds = %3
  %54 = call i32 @sx_xlock(i32* @mlu)
  %55 = load i32, i32* @mod_event.loaded, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* @mod_event.loaded, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %94

58:                                               ; preds = %53
  %59 = call i32 @sx_slock(i32* @t4_list_lock)
  %60 = call i32 @SLIST_EMPTY(i32* @t4_list)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @EBUSY, align 4
  store i32 %63, i32* %7, align 4
  %64 = call i32 @sx_sunlock(i32* @t4_list_lock)
  br label %95

65:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %75, %65
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  %69 = icmp slt i32 %67, 5
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = call i32 (...) @t4_sge_extfree_refs()
  %72 = icmp ne i32 %71, 0
  br label %73

73:                                               ; preds = %70, %66
  %74 = phi i1 [ false, %66 ], [ %72, %70 ]
  br i1 %74, label %75, label %81

75:                                               ; preds = %73
  %76 = call i32 (...) @t4_sge_extfree_refs()
  %77 = call i32 @uprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @hz, align 4
  %79 = mul nsw i32 2, %78
  %80 = call i32 @pause(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  br label %66

81:                                               ; preds = %73
  %82 = call i32 @sx_sunlock(i32* @t4_list_lock)
  %83 = call i32 (...) @t4_sge_extfree_refs()
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = call i32 (...) @t4_tracer_modunload()
  %87 = call i32 @sx_destroy(i32* @t4_list_lock)
  %88 = call i32 (...) @t4_sge_modunload()
  store i32 0, i32* @mod_event.loaded, align 4
  br label %93

89:                                               ; preds = %81
  %90 = load i32, i32* @EBUSY, align 4
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* @mod_event.loaded, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* @mod_event.loaded, align 4
  br label %93

93:                                               ; preds = %89, %85
  br label %94

94:                                               ; preds = %93, %53
  br label %95

95:                                               ; preds = %94, %62
  %96 = call i32 @sx_xunlock(i32* @mlu)
  br label %97

97:                                               ; preds = %3, %95, %51
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @t4_sge_modload(...) #1

declare dso_local i32 @t4_register_shared_cpl_handler(i32, i32, i32) #1

declare dso_local i32 @t4_register_cpl_handler(i32, i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @t4_tracer_modload(...) #1

declare dso_local i32 @tweak_tunables(...) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @sx_slock(i32*) #1

declare dso_local i32 @SLIST_EMPTY(i32*) #1

declare dso_local i32 @sx_sunlock(i32*) #1

declare dso_local i32 @t4_sge_extfree_refs(...) #1

declare dso_local i32 @uprintf(i8*, i32) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @t4_tracer_modunload(...) #1

declare dso_local i32 @sx_destroy(i32*) #1

declare dso_local i32 @t4_sge_modunload(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
