; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_fw_cap_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_fw_cap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bce_softc = type { i32 }

@BCE_FW_CAP_MB = common dso_local global i32 0, align 4
@BCE_FW_CAP_SIGNATURE_MAGIC_MASK = common dso_local global i32 0, align 4
@BCE_FW_CAP_SIGNATURE_MAGIC = common dso_local global i32 0, align 4
@BCE_FW_CAP_MFW_KEEP_VLAN = common dso_local global i32 0, align 4
@BCE_FW_CAP_BC_KEEP_VLAN = common dso_local global i32 0, align 4
@BCE_DRV_ACK_CAP_SIGNATURE_MAGIC = common dso_local global i32 0, align 4
@BCE_PHY_SERDES_FLAG = common dso_local global i32 0, align 4
@BCE_FW_CAP_REMOTE_PHY_CAP = common dso_local global i32 0, align 4
@BCE_PHY_REMOTE_PORT_FIBER_FLAG = common dso_local global i32 0, align 4
@BCE_PHY_REMOTE_CAP_FLAG = common dso_local global i32 0, align 4
@BCE_LINK_STATUS = common dso_local global i32 0, align 4
@BCE_LINK_STATUS_SERDES_LINK = common dso_local global i32 0, align 4
@BCE_DRV_ACK_CAP_MB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bce_softc*)* @bce_fw_cap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bce_fw_cap_init(%struct.bce_softc* %0) #0 {
  %2 = alloca %struct.bce_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bce_softc* %0, %struct.bce_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %7 = load i32, i32* @BCE_FW_CAP_MB, align 4
  %8 = call i32 @bce_shmem_rd(%struct.bce_softc* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @BCE_FW_CAP_SIGNATURE_MAGIC_MASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @BCE_FW_CAP_SIGNATURE_MAGIC, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %84

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @BCE_FW_CAP_MFW_KEEP_VLAN, align 4
  %18 = load i32, i32* @BCE_FW_CAP_BC_KEEP_VLAN, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = load i32, i32* @BCE_FW_CAP_MFW_KEEP_VLAN, align 4
  %22 = load i32, i32* @BCE_FW_CAP_BC_KEEP_VLAN, align 4
  %23 = or i32 %21, %22
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %15
  %26 = load i32, i32* @BCE_DRV_ACK_CAP_SIGNATURE_MAGIC, align 4
  %27 = load i32, i32* @BCE_FW_CAP_MFW_KEEP_VLAN, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @BCE_FW_CAP_BC_KEEP_VLAN, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %25, %15
  %34 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %35 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BCE_PHY_SERDES_FLAG, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %76

40:                                               ; preds = %33
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @BCE_FW_CAP_REMOTE_PHY_CAP, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %76

45:                                               ; preds = %40
  %46 = load i32, i32* @BCE_PHY_REMOTE_PORT_FIBER_FLAG, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %49 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @BCE_PHY_REMOTE_CAP_FLAG, align 4
  %53 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %54 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %58 = load i32, i32* @BCE_LINK_STATUS, align 4
  %59 = call i32 @bce_shmem_rd(%struct.bce_softc* %57, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @BCE_LINK_STATUS_SERDES_LINK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %45
  %65 = load i32, i32* @BCE_PHY_REMOTE_PORT_FIBER_FLAG, align 4
  %66 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %67 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %64, %45
  %71 = load i32, i32* @BCE_DRV_ACK_CAP_SIGNATURE_MAGIC, align 4
  %72 = load i32, i32* @BCE_FW_CAP_REMOTE_PHY_CAP, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %3, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %70, %40, %33
  %77 = load i32, i32* %3, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %81 = load i32, i32* @BCE_DRV_ACK_CAP_MB, align 4
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @bce_shmem_wr(%struct.bce_softc* %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %14, %79, %76
  ret void
}

declare dso_local i32 @bce_shmem_rd(%struct.bce_softc*, i32) #1

declare dso_local i32 @bce_shmem_wr(%struct.bce_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
