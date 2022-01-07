; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_util.c_iwm_mvm_send_cmd_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_util.c_iwm_mvm_send_cmd_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32 }
%struct.iwm_host_cmd = type { i32, %struct.iwm_rx_packet* }
%struct.iwm_rx_packet = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iwm_cmd_response = type { i32 }

@IWM_CMD_WANT_SKB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"invalid command\00", align 1
@IWM_CMD_SYNC = common dso_local global i32 0, align 4
@IWM_CMD_FAILED_MSK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwm_mvm_send_cmd_status(%struct.iwm_softc* %0, %struct.iwm_host_cmd* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwm_softc*, align 8
  %6 = alloca %struct.iwm_host_cmd*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.iwm_rx_packet*, align 8
  %9 = alloca %struct.iwm_cmd_response*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %5, align 8
  store %struct.iwm_host_cmd* %1, %struct.iwm_host_cmd** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.iwm_host_cmd*, %struct.iwm_host_cmd** %6, align 8
  %13 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IWM_CMD_WANT_SKB, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @IWM_CMD_SYNC, align 4
  %21 = load i32, i32* @IWM_CMD_WANT_SKB, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.iwm_host_cmd*, %struct.iwm_host_cmd** %6, align 8
  %24 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %28 = load %struct.iwm_host_cmd*, %struct.iwm_host_cmd** %6, align 8
  %29 = call i32 @iwm_send_cmd(%struct.iwm_softc* %27, %struct.iwm_host_cmd* %28)
  store i32 %29, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %74

33:                                               ; preds = %3
  %34 = load %struct.iwm_host_cmd*, %struct.iwm_host_cmd** %6, align 8
  %35 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %34, i32 0, i32 1
  %36 = load %struct.iwm_rx_packet*, %struct.iwm_rx_packet** %35, align 8
  store %struct.iwm_rx_packet* %36, %struct.iwm_rx_packet** %8, align 8
  %37 = load %struct.iwm_rx_packet*, %struct.iwm_rx_packet** %8, align 8
  %38 = icmp ne %struct.iwm_rx_packet* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  br label %69

40:                                               ; preds = %33
  %41 = load %struct.iwm_rx_packet*, %struct.iwm_rx_packet** %8, align 8
  %42 = getelementptr inbounds %struct.iwm_rx_packet, %struct.iwm_rx_packet* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @IWM_CMD_FAILED_MSK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @EIO, align 4
  store i32 %49, i32* %10, align 4
  br label %69

50:                                               ; preds = %40
  %51 = load %struct.iwm_rx_packet*, %struct.iwm_rx_packet** %8, align 8
  %52 = call i32 @iwm_rx_packet_payload_len(%struct.iwm_rx_packet* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ne i64 %54, 4
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @EIO, align 4
  store i32 %57, i32* %10, align 4
  br label %69

58:                                               ; preds = %50
  %59 = load %struct.iwm_rx_packet*, %struct.iwm_rx_packet** %8, align 8
  %60 = getelementptr inbounds %struct.iwm_rx_packet, %struct.iwm_rx_packet* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = bitcast i8* %62 to %struct.iwm_cmd_response*
  store %struct.iwm_cmd_response* %63, %struct.iwm_cmd_response** %9, align 8
  %64 = load %struct.iwm_cmd_response*, %struct.iwm_cmd_response** %9, align 8
  %65 = getelementptr inbounds %struct.iwm_cmd_response, %struct.iwm_cmd_response* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le32toh(i32 %66)
  %68 = load i32*, i32** %7, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %58, %56, %48, %39
  %70 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %71 = load %struct.iwm_host_cmd*, %struct.iwm_host_cmd** %6, align 8
  %72 = call i32 @iwm_free_resp(%struct.iwm_softc* %70, %struct.iwm_host_cmd* %71)
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %69, %31
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @iwm_send_cmd(%struct.iwm_softc*, %struct.iwm_host_cmd*) #1

declare dso_local i32 @iwm_rx_packet_payload_len(%struct.iwm_rx_packet*) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @iwm_free_resp(%struct.iwm_softc*, %struct.iwm_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
