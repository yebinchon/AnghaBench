; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_icl_iser.c_icl_iser_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_icl_iser.c_icl_iser_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Starting iSER datamover...\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"icl_iser_pdu\00", align 1
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@icl_pdu_zone = common dso_local global i32 0, align 4
@icl_iser_ncons = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"iser\00", align 1
@iser_limits = common dso_local global i32 0, align 4
@iser_new_conn = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to register iser\00", align 1
@ig = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"global_device_lock\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"iser_global_conn_lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"global_close_conns_lock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @icl_iser_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_iser_load() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @ISER_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %4 = call i32 @uma_zcreate(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %3, i32 0)
  store i32 %4, i32* @icl_pdu_zone, align 4
  %5 = call i32 @refcount_init(i32* @icl_iser_ncons, i32 0)
  %6 = load i32, i32* @iser_limits, align 4
  %7 = load i32, i32* @iser_new_conn, align 4
  %8 = call i32 @icl_register(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 0, i32 %6, i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %13 = call i32 @memset(%struct.TYPE_3__* @ig, i32 0, i32 4)
  %14 = call i32 @sx_init(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ig, i32 0, i32 4), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %15 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ig, i32 0, i32 3))
  %16 = load i32, i32* @MTX_DEF, align 4
  %17 = call i32 @mtx_init(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ig, i32 0, i32 2), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 %16)
  %18 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ig, i32 0, i32 1))
  %19 = call i32 @sx_init(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ig, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @ISER_DBG(i8*) #1

declare dso_local i32 @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

declare dso_local i32 @icl_register(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
