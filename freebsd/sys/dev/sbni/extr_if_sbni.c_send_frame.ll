; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_send_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbni_softc = type { i32, i64, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@CRC32_INITIAL = common dso_local global i32 0, align 4
@FL_NEED_RESEND = common dso_local global i32 0, align 4
@TR_ERROR_COUNT = common dso_local global i64 0, align 8
@FL_WAIT_ACK = common dso_local global i32 0, align 4
@CSR0 = common dso_local global i32 0, align 4
@TR_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbni_softc*)* @send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_frame(%struct.sbni_softc* %0) #0 {
  %2 = alloca %struct.sbni_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sbni_softc* %0, %struct.sbni_softc** %2, align 8
  %5 = load i32, i32* @CRC32_INITIAL, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %7 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @FL_NEED_RESEND, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %1
  %13 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %14 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %12
  %18 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %19 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %23 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %28 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %17
  br label %36

33:                                               ; preds = %12
  %34 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %35 = call i32 @drop_xmit_queue(%struct.sbni_softc* %34)
  br label %69

36:                                               ; preds = %32
  br label %41

37:                                               ; preds = %1
  %38 = load i64, i64* @TR_ERROR_COUNT, align 8
  %39 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %40 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %39, i32 0, i32 4
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %36
  %42 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %43 = call i32 @send_frame_header(%struct.sbni_softc* %42, i32* %3)
  %44 = load i32, i32* @FL_NEED_RESEND, align 4
  %45 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %46 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %50 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %41
  %54 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %55 = call i32 @download_data(%struct.sbni_softc* %54, i32* %3)
  %56 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %57 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* @FL_WAIT_ACK, align 4
  %62 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %63 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %53, %41
  %67 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %68 = call i32 @sbni_outsb(%struct.sbni_softc* %67, i32* %3, i32 4)
  br label %69

69:                                               ; preds = %66, %33
  %70 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %71 = load i32, i32* @CSR0, align 4
  %72 = call i32 @sbni_inb(%struct.sbni_softc* %70, i32 %71)
  store i32 %72, i32* %4, align 4
  %73 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %74 = load i32, i32* @CSR0, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @TR_REQ, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %75, %77
  %79 = call i32 @sbni_outb(%struct.sbni_softc* %73, i32 %74, i32 %78)
  %80 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %81 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %69
  %85 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %86 = load i32, i32* @CSR0, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @TR_REQ, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @sbni_outb(%struct.sbni_softc* %85, i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %84, %69
  ret void
}

declare dso_local i32 @drop_xmit_queue(%struct.sbni_softc*) #1

declare dso_local i32 @send_frame_header(%struct.sbni_softc*, i32*) #1

declare dso_local i32 @download_data(%struct.sbni_softc*, i32*) #1

declare dso_local i32 @sbni_outsb(%struct.sbni_softc*, i32*, i32) #1

declare dso_local i32 @sbni_inb(%struct.sbni_softc*, i32) #1

declare dso_local i32 @sbni_outb(%struct.sbni_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
