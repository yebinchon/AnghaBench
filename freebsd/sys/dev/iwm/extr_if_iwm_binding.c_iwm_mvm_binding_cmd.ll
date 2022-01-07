; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_binding.c_iwm_mvm_binding_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_binding.c_iwm_mvm_binding_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32 }
%struct.iwm_mvm_iface_iterator_data = type { i32, i32*, i32*, %struct.iwm_mvm_phy_ctxt* }
%struct.iwm_mvm_phy_ctxt = type { i32, i32 }
%struct.iwm_binding_cmd = type { i8**, i8*, i8*, i8* }

@IWM_MAX_MACS_IN_BINDING = common dso_local global i32 0, align 4
@IWM_FW_CTXT_INVALID = common dso_local global i64 0, align 8
@IWM_BINDING_CONTEXT_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to send binding (action:%d): %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Binding command failed: %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*, i64, %struct.iwm_mvm_iface_iterator_data*)* @iwm_mvm_binding_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_mvm_binding_cmd(%struct.iwm_softc* %0, i64 %1, %struct.iwm_mvm_iface_iterator_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwm_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iwm_mvm_iface_iterator_data*, align 8
  %8 = alloca %struct.iwm_binding_cmd, align 8
  %9 = alloca %struct.iwm_mvm_phy_ctxt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.iwm_softc* %0, %struct.iwm_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.iwm_mvm_iface_iterator_data* %2, %struct.iwm_mvm_iface_iterator_data** %7, align 8
  %13 = load %struct.iwm_mvm_iface_iterator_data*, %struct.iwm_mvm_iface_iterator_data** %7, align 8
  %14 = getelementptr inbounds %struct.iwm_mvm_iface_iterator_data, %struct.iwm_mvm_iface_iterator_data* %13, i32 0, i32 3
  %15 = load %struct.iwm_mvm_phy_ctxt*, %struct.iwm_mvm_phy_ctxt** %14, align 8
  store %struct.iwm_mvm_phy_ctxt* %15, %struct.iwm_mvm_phy_ctxt** %9, align 8
  %16 = call i32 @memset(%struct.iwm_binding_cmd* %8, i32 0, i32 32)
  %17 = load %struct.iwm_mvm_phy_ctxt*, %struct.iwm_mvm_phy_ctxt** %9, align 8
  %18 = getelementptr inbounds %struct.iwm_mvm_phy_ctxt, %struct.iwm_mvm_phy_ctxt* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.iwm_mvm_phy_ctxt*, %struct.iwm_mvm_phy_ctxt** %9, align 8
  %21 = getelementptr inbounds %struct.iwm_mvm_phy_ctxt, %struct.iwm_mvm_phy_ctxt* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @IWM_FW_CMD_ID_AND_COLOR(i32 %19, i32 %22)
  %24 = call i8* @htole32(i64 %23)
  %25 = getelementptr inbounds %struct.iwm_binding_cmd, %struct.iwm_binding_cmd* %8, i32 0, i32 3
  store i8* %24, i8** %25, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i8* @htole32(i64 %26)
  %28 = getelementptr inbounds %struct.iwm_binding_cmd, %struct.iwm_binding_cmd* %8, i32 0, i32 2
  store i8* %27, i8** %28, align 8
  %29 = load %struct.iwm_mvm_phy_ctxt*, %struct.iwm_mvm_phy_ctxt** %9, align 8
  %30 = getelementptr inbounds %struct.iwm_mvm_phy_ctxt, %struct.iwm_mvm_phy_ctxt* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.iwm_mvm_phy_ctxt*, %struct.iwm_mvm_phy_ctxt** %9, align 8
  %33 = getelementptr inbounds %struct.iwm_mvm_phy_ctxt, %struct.iwm_mvm_phy_ctxt* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @IWM_FW_CMD_ID_AND_COLOR(i32 %31, i32 %34)
  %36 = call i8* @htole32(i64 %35)
  %37 = getelementptr inbounds %struct.iwm_binding_cmd, %struct.iwm_binding_cmd* %8, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %50, %3
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @IWM_MAX_MACS_IN_BINDING, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i64, i64* @IWM_FW_CTXT_INVALID, align 8
  %44 = call i8* @htole32(i64 %43)
  %45 = getelementptr inbounds %struct.iwm_binding_cmd, %struct.iwm_binding_cmd* %8, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  store i8* %44, i8** %49, align 8
  br label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %38

53:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %82, %53
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.iwm_mvm_iface_iterator_data*, %struct.iwm_mvm_iface_iterator_data** %7, align 8
  %57 = getelementptr inbounds %struct.iwm_mvm_iface_iterator_data, %struct.iwm_mvm_iface_iterator_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %85

60:                                               ; preds = %54
  %61 = load %struct.iwm_mvm_iface_iterator_data*, %struct.iwm_mvm_iface_iterator_data** %7, align 8
  %62 = getelementptr inbounds %struct.iwm_mvm_iface_iterator_data, %struct.iwm_mvm_iface_iterator_data* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.iwm_mvm_iface_iterator_data*, %struct.iwm_mvm_iface_iterator_data** %7, align 8
  %69 = getelementptr inbounds %struct.iwm_mvm_iface_iterator_data, %struct.iwm_mvm_iface_iterator_data* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @IWM_FW_CMD_ID_AND_COLOR(i32 %67, i32 %74)
  %76 = call i8* @htole32(i64 %75)
  %77 = getelementptr inbounds %struct.iwm_binding_cmd, %struct.iwm_binding_cmd* %8, i32 0, i32 0
  %78 = load i8**, i8*** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  store i8* %76, i8** %81, align 8
  br label %82

82:                                               ; preds = %60
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %54

85:                                               ; preds = %54
  store i64 0, i64* %12, align 8
  %86 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %87 = load i32, i32* @IWM_BINDING_CONTEXT_CMD, align 4
  %88 = call i32 @iwm_mvm_send_cmd_pdu_status(%struct.iwm_softc* %86, i32 %87, i32 32, %struct.iwm_binding_cmd* %8, i64* %12)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %93 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* %6, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %94, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %95, i32 %96)
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %4, align 4
  br label %111

99:                                               ; preds = %85
  %100 = load i64, i64* %12, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %104 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i64, i64* %12, align 8
  %107 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %106)
  %108 = load i32, i32* @EIO, align 4
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %102, %99
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %109, %91
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @memset(%struct.iwm_binding_cmd*, i32, i32) #1

declare dso_local i8* @htole32(i64) #1

declare dso_local i64 @IWM_FW_CMD_ID_AND_COLOR(i32, i32) #1

declare dso_local i32 @iwm_mvm_send_cmd_pdu_status(%struct.iwm_softc*, i32, i32, %struct.iwm_binding_cmd*, i64*) #1

declare dso_local i32 @device_printf(i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
