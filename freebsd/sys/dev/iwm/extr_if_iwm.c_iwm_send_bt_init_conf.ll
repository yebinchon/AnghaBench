; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_send_bt_init_conf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_send_bt_init_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32 }
%struct.iwm_bt_coex_cmd = type { i8*, i8* }

@IWM_BT_COEX_WIFI = common dso_local global i32 0, align 4
@IWM_BT_COEX_HIGH_BAND_RET = common dso_local global i32 0, align 4
@IWM_BT_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*)* @iwm_send_bt_init_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_send_bt_init_conf(%struct.iwm_softc* %0) #0 {
  %2 = alloca %struct.iwm_softc*, align 8
  %3 = alloca %struct.iwm_bt_coex_cmd, align 8
  store %struct.iwm_softc* %0, %struct.iwm_softc** %2, align 8
  %4 = load i32, i32* @IWM_BT_COEX_WIFI, align 4
  %5 = call i8* @htole32(i32 %4)
  %6 = getelementptr inbounds %struct.iwm_bt_coex_cmd, %struct.iwm_bt_coex_cmd* %3, i32 0, i32 1
  store i8* %5, i8** %6, align 8
  %7 = load i32, i32* @IWM_BT_COEX_HIGH_BAND_RET, align 4
  %8 = call i8* @htole32(i32 %7)
  %9 = getelementptr inbounds %struct.iwm_bt_coex_cmd, %struct.iwm_bt_coex_cmd* %3, i32 0, i32 0
  store i8* %8, i8** %9, align 8
  %10 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %11 = load i32, i32* @IWM_BT_CONFIG, align 4
  %12 = call i32 @iwm_mvm_send_cmd_pdu(%struct.iwm_softc* %10, i32 %11, i32 0, i32 16, %struct.iwm_bt_coex_cmd* %3)
  ret i32 %12
}

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @iwm_mvm_send_cmd_pdu(%struct.iwm_softc*, i32, i32, i32, %struct.iwm_bt_coex_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
