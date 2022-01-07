; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_free_mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_free_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio_instr_queue = type { i32 }
%struct.lio_mbuf_free_info = type { i32, i32 }

@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lio_free_mbuf(%struct.lio_instr_queue* %0, %struct.lio_mbuf_free_info* %1) #0 {
  %3 = alloca %struct.lio_instr_queue*, align 8
  %4 = alloca %struct.lio_mbuf_free_info*, align 8
  store %struct.lio_instr_queue* %0, %struct.lio_instr_queue** %3, align 8
  store %struct.lio_mbuf_free_info* %1, %struct.lio_mbuf_free_info** %4, align 8
  %5 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %3, align 8
  %6 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.lio_mbuf_free_info*, %struct.lio_mbuf_free_info** %4, align 8
  %9 = getelementptr inbounds %struct.lio_mbuf_free_info, %struct.lio_mbuf_free_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %12 = call i32 @bus_dmamap_sync(i32 %7, i32 %10, i32 %11)
  %13 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %3, align 8
  %14 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.lio_mbuf_free_info*, %struct.lio_mbuf_free_info** %4, align 8
  %17 = getelementptr inbounds %struct.lio_mbuf_free_info, %struct.lio_mbuf_free_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bus_dmamap_unload(i32 %15, i32 %18)
  %20 = load %struct.lio_mbuf_free_info*, %struct.lio_mbuf_free_info** %4, align 8
  %21 = getelementptr inbounds %struct.lio_mbuf_free_info, %struct.lio_mbuf_free_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @m_freem(i32 %22)
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
