; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_free_sgmbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_free_sgmbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio_instr_queue = type { i32, %struct.octeon_device*, %struct.TYPE_5__ }
%struct.octeon_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.lio_mbuf_free_info = type { i32, i32, %struct.lio_gather* }
%struct.lio_gather = type { i32 }
%struct.lio = type { i32*, i32* }

@entries = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lio_free_sgmbuf(%struct.lio_instr_queue* %0, %struct.lio_mbuf_free_info* %1) #0 {
  %3 = alloca %struct.lio_instr_queue*, align 8
  %4 = alloca %struct.lio_mbuf_free_info*, align 8
  %5 = alloca %struct.lio_gather*, align 8
  %6 = alloca %struct.octeon_device*, align 8
  %7 = alloca %struct.lio*, align 8
  %8 = alloca i32, align 4
  store %struct.lio_instr_queue* %0, %struct.lio_instr_queue** %3, align 8
  store %struct.lio_mbuf_free_info* %1, %struct.lio_mbuf_free_info** %4, align 8
  %9 = load %struct.lio_mbuf_free_info*, %struct.lio_mbuf_free_info** %4, align 8
  %10 = getelementptr inbounds %struct.lio_mbuf_free_info, %struct.lio_mbuf_free_info* %9, i32 0, i32 2
  %11 = load %struct.lio_gather*, %struct.lio_gather** %10, align 8
  store %struct.lio_gather* %11, %struct.lio_gather** %5, align 8
  %12 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %3, align 8
  %13 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %3, align 8
  %18 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %17, i32 0, i32 1
  %19 = load %struct.octeon_device*, %struct.octeon_device** %18, align 8
  store %struct.octeon_device* %19, %struct.octeon_device** %6, align 8
  %20 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %21 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.lio* @if_getsoftc(i32 %23)
  store %struct.lio* %24, %struct.lio** %7, align 8
  %25 = load %struct.lio*, %struct.lio** %7, align 8
  %26 = getelementptr inbounds %struct.lio, %struct.lio* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @mtx_lock(i32* %30)
  %32 = load %struct.lio*, %struct.lio** %7, align 8
  %33 = getelementptr inbounds %struct.lio, %struct.lio* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load %struct.lio_gather*, %struct.lio_gather** %5, align 8
  %39 = getelementptr inbounds %struct.lio_gather, %struct.lio_gather* %38, i32 0, i32 0
  %40 = load i32, i32* @entries, align 4
  %41 = call i32 @STAILQ_INSERT_TAIL(i32* %37, i32* %39, i32 %40)
  %42 = load %struct.lio*, %struct.lio** %7, align 8
  %43 = getelementptr inbounds %struct.lio, %struct.lio* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @mtx_unlock(i32* %47)
  %49 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %3, align 8
  %50 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.lio_mbuf_free_info*, %struct.lio_mbuf_free_info** %4, align 8
  %53 = getelementptr inbounds %struct.lio_mbuf_free_info, %struct.lio_mbuf_free_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %56 = call i32 @bus_dmamap_sync(i32 %51, i32 %54, i32 %55)
  %57 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %3, align 8
  %58 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.lio_mbuf_free_info*, %struct.lio_mbuf_free_info** %4, align 8
  %61 = getelementptr inbounds %struct.lio_mbuf_free_info, %struct.lio_mbuf_free_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @bus_dmamap_unload(i32 %59, i32 %62)
  %64 = load %struct.lio_mbuf_free_info*, %struct.lio_mbuf_free_info** %4, align 8
  %65 = getelementptr inbounds %struct.lio_mbuf_free_info, %struct.lio_mbuf_free_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @m_freem(i32 %66)
  ret void
}

declare dso_local %struct.lio* @if_getsoftc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
