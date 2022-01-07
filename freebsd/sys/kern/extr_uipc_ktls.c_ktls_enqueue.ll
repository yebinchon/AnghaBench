; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_ktls.c_ktls_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_ktls.c_ktls_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ktls_wq = type { i32, i32, i32 }
%struct.mbuf = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mbuf_ext_pgs* }
%struct.mbuf_ext_pgs = type { i32, %struct.TYPE_4__*, %struct.socket*, %struct.mbuf* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.socket = type { i32 }

@M_NOMAP = common dso_local global i32 0, align 4
@M_NOTREADY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"ktls_enqueue: %p not unready & nomap mbuf\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"enqueueing TLS mbuf with zero page count\00", align 1
@TCP_TLS_MODE_SW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"!SW TLS mbuf\00", align 1
@ktls_wq = common dso_local global %struct.ktls_wq* null, align 8
@stailq = common dso_local global i32 0, align 4
@ktls_cnt_on = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ktls_enqueue(%struct.mbuf* %0, %struct.socket* %1, i32 %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbuf_ext_pgs*, align 8
  %8 = alloca %struct.ktls_wq*, align 8
  %9 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %11 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @M_NOMAP, align 4
  %14 = load i32, i32* @M_NOTREADY, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = load i32, i32* @M_NOMAP, align 4
  %18 = load i32, i32* @M_NOTREADY, align 4
  %19 = or i32 %17, %18
  %20 = icmp eq i32 %16, %19
  %21 = zext i1 %20 to i32
  %22 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %23 = bitcast %struct.mbuf* %22 to i8*
  %24 = call i32 @KASSERT(i32 %21, i8* %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @KASSERT(i32 %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %30 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %31, align 8
  store %struct.mbuf_ext_pgs* %32, %struct.mbuf_ext_pgs** %7, align 8
  %33 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %7, align 8
  %34 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TCP_TLS_MODE_SW, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @KASSERT(i32 %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %7, align 8
  %44 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %46 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %7, align 8
  %47 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %46, i32 0, i32 3
  store %struct.mbuf* %45, %struct.mbuf** %47, align 8
  %48 = load %struct.socket*, %struct.socket** %5, align 8
  %49 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %7, align 8
  %50 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %49, i32 0, i32 2
  store %struct.socket* %48, %struct.socket** %50, align 8
  %51 = load %struct.ktls_wq*, %struct.ktls_wq** @ktls_wq, align 8
  %52 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %7, align 8
  %53 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.ktls_wq, %struct.ktls_wq* %51, i64 %56
  store %struct.ktls_wq* %57, %struct.ktls_wq** %8, align 8
  %58 = load %struct.ktls_wq*, %struct.ktls_wq** %8, align 8
  %59 = getelementptr inbounds %struct.ktls_wq, %struct.ktls_wq* %58, i32 0, i32 1
  %60 = call i32 @mtx_lock(i32* %59)
  %61 = load %struct.ktls_wq*, %struct.ktls_wq** %8, align 8
  %62 = getelementptr inbounds %struct.ktls_wq, %struct.ktls_wq* %61, i32 0, i32 2
  %63 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %7, align 8
  %64 = load i32, i32* @stailq, align 4
  %65 = call i32 @STAILQ_INSERT_TAIL(i32* %62, %struct.mbuf_ext_pgs* %63, i32 %64)
  %66 = load %struct.ktls_wq*, %struct.ktls_wq** %8, align 8
  %67 = getelementptr inbounds %struct.ktls_wq, %struct.ktls_wq* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %9, align 4
  %69 = load %struct.ktls_wq*, %struct.ktls_wq** %8, align 8
  %70 = getelementptr inbounds %struct.ktls_wq, %struct.ktls_wq* %69, i32 0, i32 1
  %71 = call i32 @mtx_unlock(i32* %70)
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %3
  %75 = load %struct.ktls_wq*, %struct.ktls_wq** %8, align 8
  %76 = call i32 @wakeup(%struct.ktls_wq* %75)
  br label %77

77:                                               ; preds = %74, %3
  %78 = load i32, i32* @ktls_cnt_on, align 4
  %79 = call i32 @counter_u64_add(i32 %78, i32 1)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.mbuf_ext_pgs*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @wakeup(%struct.ktls_wq*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
