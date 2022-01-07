; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_enable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_enable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i64, i32, i32, %struct.ixgbe_hw, %struct.ix_rx_queue* }
%struct.ixgbe_hw = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ix_rx_queue = type { i32 }

@IXGBE_EIMS_ENABLE_MASK = common dso_local global i32 0, align 4
@IXGBE_EIMS_RTX_QUEUE = common dso_local global i32 0, align 4
@IXGBE_EIMS_ECC = common dso_local global i32 0, align 4
@IXGBE_EIMS_GPI_SDP0 = common dso_local global i32 0, align 4
@IXGBE_EIMS_GPI_SDP1 = common dso_local global i32 0, align 4
@IXGBE_EIMS_GPI_SDP2 = common dso_local global i32 0, align 4
@IXGBE_FWSM = common dso_local global i32 0, align 4
@IXGBE_FWSM_TS_ENABLED = common dso_local global i32 0, align 4
@IXGBE_EIMS_TS = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_X_SFP = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_A_SFP = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_A_SFP_N = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_X_10G_T = common dso_local global i32 0, align 4
@ixgbe_phy_x550em_ext_t = common dso_local global i32 0, align 4
@IXGBE_EICR_GPI_SDP0_X540 = common dso_local global i32 0, align 4
@IXGBE_FEATURE_FAN_FAIL = common dso_local global i32 0, align 4
@IXGBE_FEATURE_SRIOV = common dso_local global i32 0, align 4
@IXGBE_EIMS_MAILBOX = common dso_local global i32 0, align 4
@IXGBE_FEATURE_FDIR = common dso_local global i32 0, align 4
@IXGBE_EIMS_FLOW_DIR = common dso_local global i32 0, align 4
@IXGBE_EIMS = common dso_local global i32 0, align 4
@IFLIB_INTR_MSIX = common dso_local global i64 0, align 8
@IXGBE_EIMS_OTHER = common dso_local global i32 0, align 4
@IXGBE_EIMS_LSC = common dso_local global i32 0, align 4
@IXGBE_EIAC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_if_enable_intr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca %struct.ix_rx_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.adapter* @iflib_get_softc(i32 %9)
  store %struct.adapter* %10, %struct.adapter** %3, align 8
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 4
  store %struct.ixgbe_hw* %12, %struct.ixgbe_hw** %4, align 8
  %13 = load %struct.adapter*, %struct.adapter** %3, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 5
  %15 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %14, align 8
  store %struct.ix_rx_queue* %15, %struct.ix_rx_queue** %5, align 8
  %16 = load i32, i32* @IXGBE_EIMS_ENABLE_MASK, align 4
  %17 = load i32, i32* @IXGBE_EIMS_RTX_QUEUE, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.adapter*, %struct.adapter** %3, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %105 [
    i32 132, label %25
    i32 131, label %38
    i32 130, label %54
    i32 128, label %61
    i32 129, label %61
  ]

25:                                               ; preds = %1
  %26 = load i32, i32* @IXGBE_EIMS_ECC, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @IXGBE_EIMS_GPI_SDP0, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @IXGBE_EIMS_GPI_SDP1, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @IXGBE_EIMS_GPI_SDP2, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %106

38:                                               ; preds = %1
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %40 = load i32, i32* @IXGBE_FWSM, align 4
  %41 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @IXGBE_FWSM_TS_ENABLED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* @IXGBE_EIMS_TS, align 4
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %46, %38
  %51 = load i32, i32* @IXGBE_EIMS_ECC, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %106

54:                                               ; preds = %1
  %55 = load i32, i32* @IXGBE_EIMS_TS, align 4
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* @IXGBE_EIMS_ECC, align 4
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %106

61:                                               ; preds = %1, %1
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %63 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IXGBE_DEV_ID_X550EM_X_SFP, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %85, label %67

67:                                               ; preds = %61
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %69 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @IXGBE_DEV_ID_X550EM_A_SFP, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %85, label %73

73:                                               ; preds = %67
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %75 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @IXGBE_DEV_ID_X550EM_A_SFP_N, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %81 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @IXGBE_DEV_ID_X550EM_X_10G_T, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %79, %73, %67, %61
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %87 = call i32 @IXGBE_EIMS_GPI_SDP0_BY_MAC(%struct.ixgbe_hw* %86)
  %88 = load i32, i32* %6, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %85, %79
  %91 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %92 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @ixgbe_phy_x550em_ext_t, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load i32, i32* @IXGBE_EICR_GPI_SDP0_X540, align 4
  %99 = load i32, i32* %6, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %97, %90
  %102 = load i32, i32* @IXGBE_EIMS_ECC, align 4
  %103 = load i32, i32* %6, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %6, align 4
  br label %106

105:                                              ; preds = %1
  br label %106

106:                                              ; preds = %105, %101, %54, %50, %25
  %107 = load %struct.adapter*, %struct.adapter** %3, align 8
  %108 = getelementptr inbounds %struct.adapter, %struct.adapter* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @IXGBE_FEATURE_FAN_FAIL, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load i32, i32* @IXGBE_EIMS_GPI_SDP1, align 4
  %115 = load i32, i32* %6, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %113, %106
  %118 = load %struct.adapter*, %struct.adapter** %3, align 8
  %119 = getelementptr inbounds %struct.adapter, %struct.adapter* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @IXGBE_FEATURE_SRIOV, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %117
  %125 = load i32, i32* @IXGBE_EIMS_MAILBOX, align 4
  %126 = load i32, i32* %6, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %124, %117
  %129 = load %struct.adapter*, %struct.adapter** %3, align 8
  %130 = getelementptr inbounds %struct.adapter, %struct.adapter* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @IXGBE_FEATURE_FDIR, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %128
  %136 = load i32, i32* @IXGBE_EIMS_FLOW_DIR, align 4
  %137 = load i32, i32* %6, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %135, %128
  %140 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %141 = load i32, i32* @IXGBE_EIMS, align 4
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %140, i32 %141, i32 %142)
  %144 = load %struct.adapter*, %struct.adapter** %3, align 8
  %145 = getelementptr inbounds %struct.adapter, %struct.adapter* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @IFLIB_INTR_MSIX, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %175

149:                                              ; preds = %139
  %150 = load i32, i32* @IXGBE_EIMS_ENABLE_MASK, align 4
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* @IXGBE_EIMS_OTHER, align 4
  %152 = xor i32 %151, -1
  %153 = load i32, i32* %6, align 4
  %154 = and i32 %153, %152
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* @IXGBE_EIMS_LSC, align 4
  %156 = xor i32 %155, -1
  %157 = load i32, i32* %6, align 4
  %158 = and i32 %157, %156
  store i32 %158, i32* %6, align 4
  %159 = load %struct.adapter*, %struct.adapter** %3, align 8
  %160 = getelementptr inbounds %struct.adapter, %struct.adapter* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @IXGBE_FEATURE_SRIOV, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %149
  %166 = load i32, i32* @IXGBE_EIMS_MAILBOX, align 4
  %167 = xor i32 %166, -1
  %168 = load i32, i32* %6, align 4
  %169 = and i32 %168, %167
  store i32 %169, i32* %6, align 4
  br label %170

170:                                              ; preds = %165, %149
  %171 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %172 = load i32, i32* @IXGBE_EIAC, align 4
  %173 = load i32, i32* %6, align 4
  %174 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %171, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %170, %139
  store i32 0, i32* %8, align 4
  br label %176

176:                                              ; preds = %188, %175
  %177 = load i32, i32* %8, align 4
  %178 = load %struct.adapter*, %struct.adapter** %3, align 8
  %179 = getelementptr inbounds %struct.adapter, %struct.adapter* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = icmp slt i32 %177, %180
  br i1 %181, label %182, label %193

182:                                              ; preds = %176
  %183 = load %struct.adapter*, %struct.adapter** %3, align 8
  %184 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %5, align 8
  %185 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @ixgbe_enable_queue(%struct.adapter* %183, i32 %186)
  br label %188

188:                                              ; preds = %182
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %8, align 4
  %191 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %5, align 8
  %192 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %191, i32 1
  store %struct.ix_rx_queue* %192, %struct.ix_rx_queue** %5, align 8
  br label %176

193:                                              ; preds = %176
  %194 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %195 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %194)
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_EIMS_GPI_SDP0_BY_MAC(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_enable_queue(%struct.adapter*, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
