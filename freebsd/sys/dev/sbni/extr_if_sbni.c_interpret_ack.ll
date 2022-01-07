; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_interpret_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_interpret_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbni_softc = type { i32, i64, i64, i32, i64, i64 }

@FRAME_SENT_OK = common dso_local global i64 0, align 8
@FL_NEED_RESEND = common dso_local global i32 0, align 4
@FL_WAIT_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbni_softc*, i64)* @interpret_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interpret_ack(%struct.sbni_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.sbni_softc*, align 8
  %4 = alloca i64, align 8
  store %struct.sbni_softc* %0, %struct.sbni_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @FRAME_SENT_OK, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %55

8:                                                ; preds = %2
  %9 = load i32, i32* @FL_NEED_RESEND, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %12 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %16 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @FL_WAIT_ACK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %8
  %22 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %23 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %26 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, %24
  store i64 %28, i64* %26, align 8
  %29 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %30 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* %30, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %21
  %35 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %36 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %39 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %42 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  %45 = call i64 @min(i32 %37, i64 %44)
  %46 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %47 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %46, i32 0, i32 4
  store i64 %45, i64* %47, align 8
  br label %53

48:                                               ; preds = %21
  %49 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %50 = call i32 @send_complete(%struct.sbni_softc* %49)
  %51 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %52 = call i32 @prepare_to_send(%struct.sbni_softc* %51)
  br label %53

53:                                               ; preds = %48, %34
  br label %54

54:                                               ; preds = %53, %8
  br label %55

55:                                               ; preds = %54, %2
  %56 = load i32, i32* @FL_WAIT_ACK, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.sbni_softc*, %struct.sbni_softc** %3, align 8
  %59 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  ret void
}

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @send_complete(%struct.sbni_softc*) #1

declare dso_local i32 @prepare_to_send(%struct.sbni_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
