; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_fw.c_iwm_send_paging_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_fw.c_iwm_send_paging_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.iwm_fw_img = type { i32 }
%struct.iwm_fw_paging_cmd = type { i32*, i32, i32, i32 }

@IWM_BLOCK_2_EXP_SIZE = common dso_local global i32 0, align 4
@IWM_PAGING_CMD_IS_SECURED = common dso_local global i32 0, align 4
@IWM_PAGING_CMD_IS_ENABLED = common dso_local global i32 0, align 4
@IWM_PAGING_CMD_NUM_OF_PAGES_IN_LAST_GRP_POS = common dso_local global i32 0, align 4
@IWM_PAGE_2_EXP_SIZE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@IWM_FW_PAGING_BLOCK_CMD = common dso_local global i32 0, align 4
@IWM_ALWAYS_LONG_GROUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwm_send_paging_cmd(%struct.iwm_softc* %0, %struct.iwm_fw_img* %1) #0 {
  %3 = alloca %struct.iwm_softc*, align 8
  %4 = alloca %struct.iwm_fw_img*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwm_fw_paging_cmd, align 8
  store %struct.iwm_softc* %0, %struct.iwm_softc** %3, align 8
  store %struct.iwm_fw_img* %1, %struct.iwm_fw_img** %4, align 8
  %8 = getelementptr inbounds %struct.iwm_fw_paging_cmd, %struct.iwm_fw_paging_cmd* %7, i32 0, i32 0
  store i32* null, i32** %8, align 8
  %9 = getelementptr inbounds %struct.iwm_fw_paging_cmd, %struct.iwm_fw_paging_cmd* %7, i32 0, i32 1
  %10 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %11 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @htole32(i32 %12)
  store i32 %13, i32* %9, align 8
  %14 = getelementptr inbounds %struct.iwm_fw_paging_cmd, %struct.iwm_fw_paging_cmd* %7, i32 0, i32 2
  %15 = load i32, i32* @IWM_BLOCK_2_EXP_SIZE, align 4
  %16 = call i32 @htole32(i32 %15)
  store i32 %16, i32* %14, align 4
  %17 = getelementptr inbounds %struct.iwm_fw_paging_cmd, %struct.iwm_fw_paging_cmd* %7, i32 0, i32 3
  %18 = load i32, i32* @IWM_PAGING_CMD_IS_SECURED, align 4
  %19 = load i32, i32* @IWM_PAGING_CMD_IS_ENABLED, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %22 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IWM_PAGING_CMD_NUM_OF_PAGES_IN_LAST_GRP_POS, align 4
  %25 = shl i32 %23, %24
  %26 = or i32 %20, %25
  %27 = call i32 @htole32(i32 %26)
  store i32 %27, i32* %17, align 8
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %70, %2
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %31 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %73

35:                                               ; preds = %28
  %36 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %37 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IWM_PAGE_2_EXP_SIZE, align 4
  %46 = ashr i32 %44, %45
  %47 = call i32 @htole32(i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = getelementptr inbounds %struct.iwm_fw_paging_cmd, %struct.iwm_fw_paging_cmd* %7, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %48, i32* %53, align 4
  %54 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %55 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %58 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %67 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @bus_dmamap_sync(i32 %56, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %35
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %28

73:                                               ; preds = %28
  %74 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %75 = load i32, i32* @IWM_FW_PAGING_BLOCK_CMD, align 4
  %76 = load i32, i32* @IWM_ALWAYS_LONG_GROUP, align 4
  %77 = call i32 @iwm_cmd_id(i32 %75, i32 %76, i32 0)
  %78 = call i32 @iwm_mvm_send_cmd_pdu(%struct.iwm_softc* %74, i32 %77, i32 0, i32 24, %struct.iwm_fw_paging_cmd* %7)
  ret i32 %78
}

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @iwm_mvm_send_cmd_pdu(%struct.iwm_softc*, i32, i32, i32, %struct.iwm_fw_paging_cmd*) #1

declare dso_local i32 @iwm_cmd_id(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
