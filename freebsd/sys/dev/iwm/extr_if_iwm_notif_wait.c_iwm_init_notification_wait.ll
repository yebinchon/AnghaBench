; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_notif_wait.c_iwm_init_notification_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_notif_wait.c_iwm_init_notification_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_notif_wait_data = type { i32 }
%struct.iwm_notification_wait = type { i32 (%struct.iwm_softc*, %struct.iwm_rx_packet*, i8*)*, i32, i64, i64, i32, i8* }
%struct.iwm_softc = type opaque
%struct.iwm_rx_packet = type opaque
%struct.iwm_softc.0 = type opaque
%struct.iwm_rx_packet.1 = type opaque

@IWM_MAX_NOTIF_CMDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"n_cmds %d is too large\00", align 1
@entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwm_init_notification_wait(%struct.iwm_notif_wait_data* %0, %struct.iwm_notification_wait* %1, i32* %2, i32 %3, i32 (%struct.iwm_softc.0*, %struct.iwm_rx_packet.1*, i8*)* %4, i8* %5) #0 {
  %7 = alloca %struct.iwm_notif_wait_data*, align 8
  %8 = alloca %struct.iwm_notification_wait*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32 (%struct.iwm_softc.0*, %struct.iwm_rx_packet.1*, i8*)*, align 8
  %12 = alloca i8*, align 8
  store %struct.iwm_notif_wait_data* %0, %struct.iwm_notif_wait_data** %7, align 8
  store %struct.iwm_notification_wait* %1, %struct.iwm_notification_wait** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 (%struct.iwm_softc.0*, %struct.iwm_rx_packet.1*, i8*)* %4, i32 (%struct.iwm_softc.0*, %struct.iwm_rx_packet.1*, i8*)** %11, align 8
  store i8* %5, i8** %12, align 8
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @IWM_MAX_NOTIF_CMDS, align 4
  %15 = icmp sle i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @KASSERT(i32 %16, i8* %19)
  %21 = load i32 (%struct.iwm_softc.0*, %struct.iwm_rx_packet.1*, i8*)*, i32 (%struct.iwm_softc.0*, %struct.iwm_rx_packet.1*, i8*)** %11, align 8
  %22 = bitcast i32 (%struct.iwm_softc.0*, %struct.iwm_rx_packet.1*, i8*)* %21 to i32 (%struct.iwm_softc*, %struct.iwm_rx_packet*, i8*)*
  %23 = load %struct.iwm_notification_wait*, %struct.iwm_notification_wait** %8, align 8
  %24 = getelementptr inbounds %struct.iwm_notification_wait, %struct.iwm_notification_wait* %23, i32 0, i32 0
  store i32 (%struct.iwm_softc*, %struct.iwm_rx_packet*, i8*)* %22, i32 (%struct.iwm_softc*, %struct.iwm_rx_packet*, i8*)** %24, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load %struct.iwm_notification_wait*, %struct.iwm_notification_wait** %8, align 8
  %27 = getelementptr inbounds %struct.iwm_notification_wait, %struct.iwm_notification_wait* %26, i32 0, i32 5
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.iwm_notification_wait*, %struct.iwm_notification_wait** %8, align 8
  %30 = getelementptr inbounds %struct.iwm_notification_wait, %struct.iwm_notification_wait* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.iwm_notification_wait*, %struct.iwm_notification_wait** %8, align 8
  %32 = getelementptr inbounds %struct.iwm_notification_wait, %struct.iwm_notification_wait* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memcpy(i32 %33, i32* %34, i32 %38)
  %40 = load %struct.iwm_notification_wait*, %struct.iwm_notification_wait** %8, align 8
  %41 = getelementptr inbounds %struct.iwm_notification_wait, %struct.iwm_notification_wait* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.iwm_notification_wait*, %struct.iwm_notification_wait** %8, align 8
  %43 = getelementptr inbounds %struct.iwm_notification_wait, %struct.iwm_notification_wait* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.iwm_notif_wait_data*, %struct.iwm_notif_wait_data** %7, align 8
  %45 = call i32 @IWM_WAIT_LOCK(%struct.iwm_notif_wait_data* %44)
  %46 = load %struct.iwm_notif_wait_data*, %struct.iwm_notif_wait_data** %7, align 8
  %47 = getelementptr inbounds %struct.iwm_notif_wait_data, %struct.iwm_notif_wait_data* %46, i32 0, i32 0
  %48 = load %struct.iwm_notification_wait*, %struct.iwm_notification_wait** %8, align 8
  %49 = load i32, i32* @entry, align 4
  %50 = call i32 @STAILQ_INSERT_TAIL(i32* %47, %struct.iwm_notification_wait* %48, i32 %49)
  %51 = load %struct.iwm_notif_wait_data*, %struct.iwm_notif_wait_data** %7, align 8
  %52 = call i32 @IWM_WAIT_UNLOCK(%struct.iwm_notif_wait_data* %51)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @IWM_WAIT_LOCK(%struct.iwm_notif_wait_data*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.iwm_notification_wait*, i32) #1

declare dso_local i32 @IWM_WAIT_UNLOCK(%struct.iwm_notif_wait_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
