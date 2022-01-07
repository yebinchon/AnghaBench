; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_user.c_tws_circular_aenq_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_user.c_tws_circular_aenq_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32 }
%struct.tws_circular_q = type { i64, i64, i64, i32, i64 }
%struct.tws_event_packet = type { i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@TWS_AEN_RETRIEVED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tws_circular_aenq_insert(%struct.tws_softc* %0, %struct.tws_circular_q* %1, %struct.tws_event_packet* %2) #0 {
  %4 = alloca %struct.tws_softc*, align 8
  %5 = alloca %struct.tws_circular_q*, align 8
  %6 = alloca %struct.tws_event_packet*, align 8
  %7 = alloca %struct.tws_event_packet*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.tws_softc* %0, %struct.tws_softc** %4, align 8
  store %struct.tws_circular_q* %1, %struct.tws_circular_q** %5, align 8
  store %struct.tws_event_packet* %2, %struct.tws_event_packet** %6, align 8
  %11 = load %struct.tws_circular_q*, %struct.tws_circular_q** %5, align 8
  %12 = getelementptr inbounds %struct.tws_circular_q, %struct.tws_circular_q* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.tws_event_packet*
  store %struct.tws_event_packet* %14, %struct.tws_event_packet** %7, align 8
  %15 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %16 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %15, i32 0, i32 0
  %17 = load i32, i32* @MA_OWNED, align 4
  %18 = call i32 @mtx_assert(i32* %16, i32 %17)
  %19 = load %struct.tws_circular_q*, %struct.tws_circular_q** %5, align 8
  %20 = getelementptr inbounds %struct.tws_circular_q, %struct.tws_circular_q* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store volatile i64 %21, i64* %8, align 8
  %22 = load %struct.tws_circular_q*, %struct.tws_circular_q** %5, align 8
  %23 = getelementptr inbounds %struct.tws_circular_q, %struct.tws_circular_q* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store volatile i64 %24, i64* %9, align 8
  %25 = load %struct.tws_event_packet*, %struct.tws_event_packet** %7, align 8
  %26 = load volatile i64, i64* %9, align 8
  %27 = getelementptr inbounds %struct.tws_event_packet, %struct.tws_event_packet* %25, i64 %26
  %28 = getelementptr inbounds %struct.tws_event_packet, %struct.tws_event_packet* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %10, align 8
  %30 = load %struct.tws_event_packet*, %struct.tws_event_packet** %7, align 8
  %31 = load volatile i64, i64* %9, align 8
  %32 = getelementptr inbounds %struct.tws_event_packet, %struct.tws_event_packet* %30, i64 %31
  %33 = load %struct.tws_event_packet*, %struct.tws_event_packet** %6, align 8
  %34 = call i32 @memcpy(%struct.tws_event_packet* %32, %struct.tws_event_packet* %33, i32 8)
  %35 = load volatile i64, i64* %9, align 8
  %36 = add i64 %35, 1
  %37 = load %struct.tws_circular_q*, %struct.tws_circular_q** %5, align 8
  %38 = getelementptr inbounds %struct.tws_circular_q, %struct.tws_circular_q* %37, i32 0, i32 2
  %39 = load volatile i64, i64* %38, align 8
  %40 = urem i64 %36, %39
  store volatile i64 %40, i64* %9, align 8
  %41 = load volatile i64, i64* %8, align 8
  %42 = load volatile i64, i64* %9, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %3
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @TWS_AEN_RETRIEVED, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.tws_circular_q*, %struct.tws_circular_q** %5, align 8
  %50 = getelementptr inbounds %struct.tws_circular_q, %struct.tws_circular_q* %49, i32 0, i32 3
  store i32 1, i32* %50, align 8
  br label %51

51:                                               ; preds = %48, %44
  %52 = load volatile i64, i64* %8, align 8
  %53 = add i64 %52, 1
  %54 = load %struct.tws_circular_q*, %struct.tws_circular_q** %5, align 8
  %55 = getelementptr inbounds %struct.tws_circular_q, %struct.tws_circular_q* %54, i32 0, i32 2
  %56 = load volatile i64, i64* %55, align 8
  %57 = urem i64 %53, %56
  %58 = load %struct.tws_circular_q*, %struct.tws_circular_q** %5, align 8
  %59 = getelementptr inbounds %struct.tws_circular_q, %struct.tws_circular_q* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %51, %3
  %61 = load volatile i64, i64* %9, align 8
  %62 = load %struct.tws_circular_q*, %struct.tws_circular_q** %5, align 8
  %63 = getelementptr inbounds %struct.tws_circular_q, %struct.tws_circular_q* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @memcpy(%struct.tws_event_packet*, %struct.tws_event_packet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
