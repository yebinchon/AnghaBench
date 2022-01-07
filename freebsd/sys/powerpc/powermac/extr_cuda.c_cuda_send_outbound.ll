; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cuda.c_cuda_send_outbound.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cuda.c_cuda_send_outbound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cuda_softc = type { i32, i64, i32*, i32, i32, i32, i64, i64, i32 }
%struct.cuda_packet = type { i64, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@pkt_q = common dso_local global i32 0, align 4
@CUDA_IDLE = common dso_local global i64 0, align 8
@CUDA_OUT = common dso_local global i64 0, align 8
@vSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cuda_softc*)* @cuda_send_outbound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cuda_send_outbound(%struct.cuda_softc* %0) #0 {
  %2 = alloca %struct.cuda_softc*, align 8
  %3 = alloca %struct.cuda_packet*, align 8
  store %struct.cuda_softc* %0, %struct.cuda_softc** %2, align 8
  %4 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %5 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %4, i32 0, i32 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @mtx_assert(i32* %5, i32 %6)
  %8 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %9 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %8, i32 0, i32 5
  %10 = call %struct.cuda_packet* @STAILQ_FIRST(i32* %9)
  store %struct.cuda_packet* %10, %struct.cuda_packet** %3, align 8
  %11 = load %struct.cuda_packet*, %struct.cuda_packet** %3, align 8
  %12 = icmp eq %struct.cuda_packet* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %76

14:                                               ; preds = %1
  %15 = load %struct.cuda_packet*, %struct.cuda_packet** %3, align 8
  %16 = getelementptr inbounds %struct.cuda_packet, %struct.cuda_packet* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  %19 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %20 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %19, i32 0, i32 7
  store i64 %18, i64* %20, align 8
  %21 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %22 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.cuda_packet*, %struct.cuda_packet** %3, align 8
  %25 = getelementptr inbounds %struct.cuda_packet, %struct.cuda_packet* %24, i32 0, i32 1
  %26 = load %struct.cuda_packet*, %struct.cuda_packet** %3, align 8
  %27 = getelementptr inbounds %struct.cuda_packet, %struct.cuda_packet* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  %30 = call i32 @memcpy(i32* %23, i32* %25, i64 %29)
  %31 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %32 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %31, i32 0, i32 6
  store i64 0, i64* %32, align 8
  %33 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %34 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %33, i32 0, i32 5
  %35 = load i32, i32* @pkt_q, align 4
  %36 = call i32 @STAILQ_REMOVE_HEAD(i32* %34, i32 %35)
  %37 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %38 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %37, i32 0, i32 4
  %39 = load %struct.cuda_packet*, %struct.cuda_packet** %3, align 8
  %40 = load i32, i32* @pkt_q, align 4
  %41 = call i32 @STAILQ_INSERT_TAIL(i32* %38, %struct.cuda_packet* %39, i32 %40)
  %42 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %43 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %45 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @cuda_poll(i32 %46)
  %48 = call i32 @DELAY(i32 150)
  %49 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %50 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CUDA_IDLE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %14
  %55 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %56 = call i32 @cuda_intr_state(%struct.cuda_softc* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %76, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* @CUDA_OUT, align 8
  %60 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %61 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %63 = call i32 @cuda_out(%struct.cuda_softc* %62)
  %64 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %65 = load i32, i32* @vSR, align 4
  %66 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %67 = getelementptr inbounds %struct.cuda_softc, %struct.cuda_softc* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @cuda_write_reg(%struct.cuda_softc* %64, i32 %65, i32 %70)
  %72 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %73 = call i32 @cuda_ack_off(%struct.cuda_softc* %72)
  %74 = load %struct.cuda_softc*, %struct.cuda_softc** %2, align 8
  %75 = call i32 @cuda_tip(%struct.cuda_softc* %74)
  br label %76

76:                                               ; preds = %13, %58, %54, %14
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.cuda_packet* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.cuda_packet*, i32) #1

declare dso_local i32 @cuda_poll(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @cuda_intr_state(%struct.cuda_softc*) #1

declare dso_local i32 @cuda_out(%struct.cuda_softc*) #1

declare dso_local i32 @cuda_write_reg(%struct.cuda_softc*, i32, i32) #1

declare dso_local i32 @cuda_ack_off(%struct.cuda_softc*) #1

declare dso_local i32 @cuda_tip(%struct.cuda_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
