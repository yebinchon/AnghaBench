; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sa_query.c_recv_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sa_query.c_recv_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent = type { i32 }
%struct.ib_mad_send_buf = type { %struct.ib_sa_query** }
%struct.ib_sa_query = type { i32 (%struct.ib_sa_query*, i32, %struct.ib_sa_mad*)* }
%struct.ib_sa_mad = type opaque
%struct.ib_mad_recv_wc = type { %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.ib_sa_mad.0 = type { i32 }

@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_agent*, %struct.ib_mad_send_buf*, %struct.ib_mad_recv_wc*)* @recv_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recv_handler(%struct.ib_mad_agent* %0, %struct.ib_mad_send_buf* %1, %struct.ib_mad_recv_wc* %2) #0 {
  %4 = alloca %struct.ib_mad_agent*, align 8
  %5 = alloca %struct.ib_mad_send_buf*, align 8
  %6 = alloca %struct.ib_mad_recv_wc*, align 8
  %7 = alloca %struct.ib_sa_query*, align 8
  store %struct.ib_mad_agent* %0, %struct.ib_mad_agent** %4, align 8
  store %struct.ib_mad_send_buf* %1, %struct.ib_mad_send_buf** %5, align 8
  store %struct.ib_mad_recv_wc* %2, %struct.ib_mad_recv_wc** %6, align 8
  %8 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %9 = icmp ne %struct.ib_mad_send_buf* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %67

11:                                               ; preds = %3
  %12 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %13 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %12, i32 0, i32 0
  %14 = load %struct.ib_sa_query**, %struct.ib_sa_query*** %13, align 8
  %15 = getelementptr inbounds %struct.ib_sa_query*, %struct.ib_sa_query** %14, i64 0
  %16 = load %struct.ib_sa_query*, %struct.ib_sa_query** %15, align 8
  store %struct.ib_sa_query* %16, %struct.ib_sa_query** %7, align 8
  %17 = load %struct.ib_sa_query*, %struct.ib_sa_query** %7, align 8
  %18 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %17, i32 0, i32 0
  %19 = load i32 (%struct.ib_sa_query*, i32, %struct.ib_sa_mad*)*, i32 (%struct.ib_sa_query*, i32, %struct.ib_sa_mad*)** %18, align 8
  %20 = icmp ne i32 (%struct.ib_sa_query*, i32, %struct.ib_sa_mad*)* %19, null
  br i1 %20, label %21, label %64

21:                                               ; preds = %11
  %22 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %23 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IB_WC_SUCCESS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %21
  %30 = load %struct.ib_sa_query*, %struct.ib_sa_query** %7, align 8
  %31 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %30, i32 0, i32 0
  %32 = load i32 (%struct.ib_sa_query*, i32, %struct.ib_sa_mad*)*, i32 (%struct.ib_sa_query*, i32, %struct.ib_sa_mad*)** %31, align 8
  %33 = load %struct.ib_sa_query*, %struct.ib_sa_query** %7, align 8
  %34 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %35 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %29
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  br label %46

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i32 [ %44, %42 ], [ 0, %45 ]
  %48 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %49 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = bitcast %struct.TYPE_6__* %51 to %struct.ib_sa_mad.0*
  %53 = bitcast %struct.ib_sa_mad.0* %52 to %struct.ib_sa_mad*
  %54 = call i32 %32(%struct.ib_sa_query* %33, i32 %47, %struct.ib_sa_mad* %53)
  br label %63

55:                                               ; preds = %21
  %56 = load %struct.ib_sa_query*, %struct.ib_sa_query** %7, align 8
  %57 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %56, i32 0, i32 0
  %58 = load i32 (%struct.ib_sa_query*, i32, %struct.ib_sa_mad*)*, i32 (%struct.ib_sa_query*, i32, %struct.ib_sa_mad*)** %57, align 8
  %59 = load %struct.ib_sa_query*, %struct.ib_sa_query** %7, align 8
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  %62 = call i32 %58(%struct.ib_sa_query* %59, i32 %61, %struct.ib_sa_mad* null)
  br label %63

63:                                               ; preds = %55, %46
  br label %64

64:                                               ; preds = %63, %11
  %65 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %66 = call i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc* %65)
  br label %67

67:                                               ; preds = %64, %10
  ret void
}

declare dso_local i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
