; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_sf.c_iwm_mvm_sf_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_sf.c_iwm_mvm_sf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_node = type { i32 }
%struct.iwm_sf_cfg_cmd = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Invalid state: %d. not sending Smart Fifo cmd\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IWM_REPLY_SF_CFG_CMD = common dso_local global i32 0, align 4
@IWM_CMD_ASYNC = common dso_local global i32 0, align 4
@IWM_SF_CFG_DUMMY_NOTIF_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*, %struct.ieee80211_node*, i32)* @iwm_mvm_sf_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_mvm_sf_config(%struct.iwm_softc* %0, %struct.ieee80211_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwm_softc*, align 8
  %6 = alloca %struct.ieee80211_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwm_sf_cfg_cmd, align 4
  %9 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %5, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = getelementptr inbounds %struct.iwm_sf_cfg_cmd, %struct.iwm_sf_cfg_cmd* %8, i32 0, i32 0
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @htole32(i32 %11)
  store i32 %12, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 130
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %17 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %54

22:                                               ; preds = %15, %3
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %34 [
    i32 128, label %24
    i32 130, label %27
    i32 129, label %31
  ]

24:                                               ; preds = %22
  %25 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %26 = call i32 @iwm_mvm_fill_sf_command(%struct.iwm_softc* %25, %struct.iwm_sf_cfg_cmd* %8, %struct.ieee80211_node* null)
  br label %41

27:                                               ; preds = %22
  %28 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %29 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %30 = call i32 @iwm_mvm_fill_sf_command(%struct.iwm_softc* %28, %struct.iwm_sf_cfg_cmd* %8, %struct.ieee80211_node* %29)
  br label %41

31:                                               ; preds = %22
  %32 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %33 = call i32 @iwm_mvm_fill_sf_command(%struct.iwm_softc* %32, %struct.iwm_sf_cfg_cmd* %8, %struct.ieee80211_node* null)
  br label %41

34:                                               ; preds = %22
  %35 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %36 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %4, align 4
  br label %54

41:                                               ; preds = %31, %27, %24
  %42 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %43 = load i32, i32* @IWM_REPLY_SF_CFG_CMD, align 4
  %44 = load i32, i32* @IWM_CMD_ASYNC, align 4
  %45 = call i32 @iwm_mvm_send_cmd_pdu(%struct.iwm_softc* %42, i32 %43, i32 %44, i32 4, %struct.iwm_sf_cfg_cmd* %8)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %51 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %48, %41
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %34, %21
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @iwm_mvm_fill_sf_command(%struct.iwm_softc*, %struct.iwm_sf_cfg_cmd*, %struct.ieee80211_node*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @iwm_mvm_send_cmd_pdu(%struct.iwm_softc*, i32, i32, i32, %struct.iwm_sf_cfg_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
