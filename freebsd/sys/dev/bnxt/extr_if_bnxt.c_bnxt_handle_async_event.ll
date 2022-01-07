; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_handle_async_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_handle_async_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, i32 }
%struct.cmpl_base = type { i32 }
%struct.hwrm_async_event_cmpl = type { i32 }
%struct.ifmediareq = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Unhandled async completion type %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Unknown async completion type %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_softc*, %struct.cmpl_base*)* @bnxt_handle_async_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_handle_async_event(%struct.bnxt_softc* %0, %struct.cmpl_base* %1) #0 {
  %3 = alloca %struct.bnxt_softc*, align 8
  %4 = alloca %struct.cmpl_base*, align 8
  %5 = alloca %struct.hwrm_async_event_cmpl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifmediareq, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %3, align 8
  store %struct.cmpl_base* %1, %struct.cmpl_base** %4, align 8
  %8 = load %struct.cmpl_base*, %struct.cmpl_base** %4, align 8
  %9 = bitcast %struct.cmpl_base* %8 to i8*
  %10 = bitcast i8* %9 to %struct.hwrm_async_event_cmpl*
  store %struct.hwrm_async_event_cmpl* %10, %struct.hwrm_async_event_cmpl** %5, align 8
  %11 = load %struct.hwrm_async_event_cmpl*, %struct.hwrm_async_event_cmpl** %5, align 8
  %12 = getelementptr inbounds %struct.hwrm_async_event_cmpl, %struct.hwrm_async_event_cmpl* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le16toh(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %27 [
    i32 135, label %16
    i32 136, label %16
    i32 138, label %16
    i32 139, label %21
    i32 143, label %21
    i32 131, label %21
    i32 137, label %21
    i32 141, label %21
    i32 142, label %21
    i32 133, label %21
    i32 134, label %21
    i32 129, label %21
    i32 128, label %21
    i32 132, label %21
    i32 130, label %21
    i32 140, label %21
  ]

16:                                               ; preds = %2, %2, %2
  %17 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %18 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bnxt_media_status(i32 %19, %struct.ifmediareq* %7)
  br label %33

21:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %22 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %23 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %33

27:                                               ; preds = %2
  %28 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %29 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %27, %21, %16
  ret void
}

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @bnxt_media_status(i32, %struct.ifmediareq*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
