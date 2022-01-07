; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_append_frame_to_pkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_append_frame_to_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbni_softc = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ETHER_MAX_LEN = common dso_local global i64 0, align 8
@CRC32_REMAINDER = common dso_local global i64 0, align 8
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbni_softc*, i64, i32)* @append_frame_to_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_frame_to_pkt(%struct.sbni_softc* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sbni_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.sbni_softc* %0, %struct.sbni_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sbni_softc*, %struct.sbni_softc** %5, align 8
  %10 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i64, i64* @ETHER_MAX_LEN, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %69

17:                                               ; preds = %3
  %18 = load %struct.sbni_softc*, %struct.sbni_softc** %5, align 8
  %19 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.sbni_softc*, %struct.sbni_softc** %5, align 8
  %24 = call i32 @get_rx_buf(%struct.sbni_softc* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %69

27:                                               ; preds = %22, %17
  %28 = load %struct.sbni_softc*, %struct.sbni_softc** %5, align 8
  %29 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.sbni_softc*, %struct.sbni_softc** %5, align 8
  %34 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  store i64 %36, i64* %8, align 8
  %37 = load %struct.sbni_softc*, %struct.sbni_softc** %5, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @sbni_insb(%struct.sbni_softc* %37, i64 %38, i64 %39)
  %41 = load i32, i32* %7, align 4
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @calc_crc32(i32 %41, i64 %42, i64 %43)
  %45 = load i64, i64* @CRC32_REMAINDER, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %69

48:                                               ; preds = %27
  %49 = load i64, i64* %6, align 8
  %50 = sub nsw i64 %49, 4
  %51 = load %struct.sbni_softc*, %struct.sbni_softc** %5, align 8
  %52 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, %50
  store i64 %54, i64* %52, align 8
  %55 = load %struct.sbni_softc*, %struct.sbni_softc** %5, align 8
  %56 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, -1
  store i64 %58, i64* %56, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %48
  %61 = load %struct.sbni_softc*, %struct.sbni_softc** %5, align 8
  %62 = call i32 @indicate_pkt(%struct.sbni_softc* %61)
  %63 = load %struct.sbni_softc*, %struct.sbni_softc** %5, align 8
  %64 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %67 = call i32 @if_inc_counter(i32 %65, i32 %66, i32 1)
  br label %68

68:                                               ; preds = %60, %48
  store i32 1, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %47, %26, %16
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @get_rx_buf(%struct.sbni_softc*) #1

declare dso_local i32 @sbni_insb(%struct.sbni_softc*, i64, i64) #1

declare dso_local i64 @calc_crc32(i32, i64, i64) #1

declare dso_local i32 @indicate_pkt(%struct.sbni_softc*) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
