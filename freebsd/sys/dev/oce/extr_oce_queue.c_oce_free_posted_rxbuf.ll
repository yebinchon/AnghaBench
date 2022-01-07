; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_free_posted_rxbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_free_posted_rxbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oce_rq = type { i64, %struct.TYPE_2__*, i32, %struct.oce_packet_desc* }
%struct.TYPE_2__ = type { i64 }
%struct.oce_packet_desc = type { i32*, i32 }

@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oce_free_posted_rxbuf(%struct.oce_rq* %0) #0 {
  %2 = alloca %struct.oce_rq*, align 8
  %3 = alloca %struct.oce_packet_desc*, align 8
  store %struct.oce_rq* %0, %struct.oce_rq** %2, align 8
  br label %4

4:                                                ; preds = %45, %1
  %5 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %6 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %54

9:                                                ; preds = %4
  %10 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %11 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %10, i32 0, i32 3
  %12 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %11, align 8
  %13 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %14 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %12, i64 %17
  store %struct.oce_packet_desc* %18, %struct.oce_packet_desc** %3, align 8
  %19 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %20 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %3, align 8
  %23 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %26 = call i32 @bus_dmamap_sync(i32 %21, i32 %24, i32 %25)
  %27 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %28 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %3, align 8
  %31 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @bus_dmamap_unload(i32 %29, i32 %32)
  %34 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %3, align 8
  %35 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %9
  %39 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %3, align 8
  %40 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @m_freem(i32* %41)
  %43 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %3, align 8
  %44 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %38, %9
  %46 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %47 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = call i32 @RING_GET(%struct.TYPE_2__* %48, i32 1)
  %50 = load %struct.oce_rq*, %struct.oce_rq** %2, align 8
  %51 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* %51, align 8
  br label %4

54:                                               ; preds = %4
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @RING_GET(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
