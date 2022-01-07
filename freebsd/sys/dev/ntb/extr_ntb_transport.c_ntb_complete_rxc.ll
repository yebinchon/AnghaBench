; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_complete_rxc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_complete_rxc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_qp = type { i32, i32, i32 (%struct.ntb_transport_qp*, i32, %struct.mbuf*, i32)*, i64, i32, i32, %struct.TYPE_4__* }
%struct.mbuf = type opaque
%struct.TYPE_4__ = type { i32 }
%struct.ntb_queue_entry = type { i32, i32, i32, %struct.mbuf.0*, i32, %struct.TYPE_3__* }
%struct.mbuf.0 = type { i32 }
%struct.TYPE_3__ = type { i64 }

@KTR_NTB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"RX: rx_completion_task\00", align 1
@NTBT_DESC_DONE_FLAG = common dso_local global i32 0, align 4
@transport_mtu = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"RX: completing entry %p, mbuf %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_transport_qp*)* @ntb_complete_rxc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_complete_rxc(%struct.ntb_transport_qp* %0) #0 {
  %2 = alloca %struct.ntb_transport_qp*, align 8
  %3 = alloca %struct.ntb_queue_entry*, align 8
  %4 = alloca %struct.mbuf.0*, align 8
  %5 = alloca i32, align 4
  store %struct.ntb_transport_qp* %0, %struct.ntb_transport_qp** %2, align 8
  %6 = load i32, i32* @KTR_NTB, align 4
  %7 = call i32 @CTR0(i32 %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %9 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %8, i32 0, i32 0
  %10 = call i32 @mtx_lock_spin(i32* %9)
  br label %11

11:                                               ; preds = %97, %1
  %12 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %13 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %12, i32 0, i32 5
  %14 = call i32 @STAILQ_EMPTY(i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %101

17:                                               ; preds = %11
  %18 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %19 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %18, i32 0, i32 5
  %20 = call %struct.ntb_queue_entry* @STAILQ_FIRST(i32* %19)
  store %struct.ntb_queue_entry* %20, %struct.ntb_queue_entry** %3, align 8
  %21 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %22 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @NTBT_DESC_DONE_FLAG, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %101

28:                                               ; preds = %17
  %29 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %30 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %29, i32 0, i32 5
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %34 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %37 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %36, i32 0, i32 6
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @iowrite32(i32 %35, i32* %39)
  %41 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %42 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %41, i32 0, i32 5
  %43 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %44 = call i32 @STAILQ_REMOVE_HEAD(i32* %42, %struct.ntb_queue_entry* %43)
  %45 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %46 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %5, align 4
  %48 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %49 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %48, i32 0, i32 3
  %50 = load %struct.mbuf.0*, %struct.mbuf.0** %49, align 8
  store %struct.mbuf.0* %50, %struct.mbuf.0** %4, align 8
  %51 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %52 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %51, i32 0, i32 3
  store %struct.mbuf.0* null, %struct.mbuf.0** %52, align 8
  %53 = load i32, i32* @transport_mtu, align 4
  %54 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %55 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %57 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %60 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %62 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %61, i32 0, i32 4
  %63 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %64 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %65 = call i32 @STAILQ_INSERT_TAIL(i32* %62, %struct.ntb_queue_entry* %63, %struct.ntb_queue_entry* %64)
  %66 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %67 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %66, i32 0, i32 0
  %68 = call i32 @mtx_unlock_spin(i32* %67)
  %69 = load i32, i32* @KTR_NTB, align 4
  %70 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %3, align 8
  %71 = load %struct.mbuf.0*, %struct.mbuf.0** %4, align 8
  %72 = call i32 @CTR2(i32 %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.ntb_queue_entry* %70, %struct.mbuf.0* %71)
  %73 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %74 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %73, i32 0, i32 2
  %75 = load i32 (%struct.ntb_transport_qp*, i32, %struct.mbuf*, i32)*, i32 (%struct.ntb_transport_qp*, i32, %struct.mbuf*, i32)** %74, align 8
  %76 = icmp ne i32 (%struct.ntb_transport_qp*, i32, %struct.mbuf*, i32)* %75, null
  br i1 %76, label %77, label %94

77:                                               ; preds = %28
  %78 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %79 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %77
  %83 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %84 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %83, i32 0, i32 2
  %85 = load i32 (%struct.ntb_transport_qp*, i32, %struct.mbuf*, i32)*, i32 (%struct.ntb_transport_qp*, i32, %struct.mbuf*, i32)** %84, align 8
  %86 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %87 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %88 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.mbuf.0*, %struct.mbuf.0** %4, align 8
  %91 = bitcast %struct.mbuf.0* %90 to %struct.mbuf*
  %92 = load i32, i32* %5, align 4
  %93 = call i32 %85(%struct.ntb_transport_qp* %86, i32 %89, %struct.mbuf* %91, i32 %92)
  br label %97

94:                                               ; preds = %77, %28
  %95 = load %struct.mbuf.0*, %struct.mbuf.0** %4, align 8
  %96 = call i32 @m_freem(%struct.mbuf.0* %95)
  br label %97

97:                                               ; preds = %94, %82
  %98 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %99 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %98, i32 0, i32 0
  %100 = call i32 @mtx_lock_spin(i32* %99)
  br label %11

101:                                              ; preds = %27, %11
  %102 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %103 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %102, i32 0, i32 0
  %104 = call i32 @mtx_unlock_spin(i32* %103)
  ret void
}

declare dso_local i32 @CTR0(i32, i8*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local %struct.ntb_queue_entry* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, %struct.ntb_queue_entry*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.ntb_queue_entry*, %struct.ntb_queue_entry*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @CTR2(i32, i8*, %struct.ntb_queue_entry*, %struct.mbuf.0*) #1

declare dso_local i32 @m_freem(%struct.mbuf.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
