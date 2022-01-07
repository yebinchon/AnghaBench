; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_enable_phy_wakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_enable_phy_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.TYPE_4__ = type { i32 }

@E1000_MTA = common dso_local global i32 0, align 4
@BM_RCTL = common dso_local global i64 0, align 8
@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_UPE = common dso_local global i32 0, align 4
@BM_RCTL_UPE = common dso_local global i32 0, align 4
@E1000_RCTL_MPE = common dso_local global i32 0, align 4
@BM_RCTL_MPE = common dso_local global i32 0, align 4
@BM_RCTL_MO_MASK = common dso_local global i32 0, align 4
@E1000_RCTL_MO_3 = common dso_local global i32 0, align 4
@E1000_RCTL_MO_SHIFT = common dso_local global i32 0, align 4
@BM_RCTL_MO_SHIFT = common dso_local global i32 0, align 4
@E1000_RCTL_BAM = common dso_local global i32 0, align 4
@BM_RCTL_BAM = common dso_local global i32 0, align 4
@E1000_RCTL_PMCF = common dso_local global i32 0, align 4
@BM_RCTL_PMCF = common dso_local global i32 0, align 4
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_RFCE = common dso_local global i32 0, align 4
@BM_RCTL_RFCE = common dso_local global i32 0, align 4
@E1000_WUC = common dso_local global i32 0, align 4
@E1000_WUC_PHY_WAKE = common dso_local global i32 0, align 4
@E1000_WUC_PME_EN = common dso_local global i32 0, align 4
@E1000_WUC_APME = common dso_local global i32 0, align 4
@E1000_WUFC = common dso_local global i32 0, align 4
@BM_WUFC = common dso_local global i64 0, align 8
@BM_WUC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Could not acquire PHY\0A\00", align 1
@IGP01E1000_PHY_PAGE_SELECT = common dso_local global i32 0, align 4
@BM_WUC_ENABLE_PAGE = common dso_local global i32 0, align 4
@IGP_PAGE_SHIFT = common dso_local global i32 0, align 4
@BM_WUC_ENABLE_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Could not read PHY page 769\0A\00", align 1
@BM_WUC_ENABLE_BIT = common dso_local global i32 0, align 4
@BM_WUC_HOST_WU_BIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Could not set PHY Host Wakeup bit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @em_enable_phy_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_enable_phy_wakeup(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 1
  store %struct.e1000_hw* %10, %struct.e1000_hw** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %12 = call i32 @e1000_copy_rx_addrs_to_phy_ich8lan(%struct.e1000_hw* %11)
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %40, %1
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.adapter*, %struct.adapter** %3, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %14, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %13
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %23 = load i32, i32* @E1000_MTA, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @E1000_READ_REG_ARRAY(%struct.e1000_hw* %22, i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @BM_MTA(i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 65535
  %31 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %26, i64 %28, i32 %30)
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @BM_MTA(i32 %33)
  %35 = add nsw i64 %34, 1
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 %36, 16
  %38 = and i32 %37, 65535
  %39 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %32, i64 %35, i32 %38)
  br label %40

40:                                               ; preds = %21
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %13

43:                                               ; preds = %13
  %44 = load %struct.adapter*, %struct.adapter** %3, align 8
  %45 = getelementptr inbounds %struct.adapter, %struct.adapter* %44, i32 0, i32 1
  %46 = load i64, i64* @BM_RCTL, align 8
  %47 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %45, i64 %46, i32* %7)
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %49 = load i32, i32* @E1000_RCTL, align 4
  %50 = call i32 @E1000_READ_REG(%struct.e1000_hw* %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @E1000_RCTL_UPE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %43
  %56 = load i32, i32* @BM_RCTL_UPE, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %55, %43
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @E1000_RCTL_MPE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @BM_RCTL_MPE, align 4
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %64, %59
  %69 = load i32, i32* @BM_RCTL_MO_MASK, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @E1000_RCTL_MO_3, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %68
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @E1000_RCTL_MO_3, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* @E1000_RCTL_MO_SHIFT, align 4
  %82 = ashr i32 %80, %81
  %83 = load i32, i32* @BM_RCTL_MO_SHIFT, align 4
  %84 = shl i32 %82, %83
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %77, %68
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @E1000_RCTL_BAM, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i32, i32* @BM_RCTL_BAM, align 4
  %94 = load i32, i32* %7, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %92, %87
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @E1000_RCTL_PMCF, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* @BM_RCTL_PMCF, align 4
  %103 = load i32, i32* %7, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %101, %96
  %106 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %107 = load i32, i32* @E1000_CTRL, align 4
  %108 = call i32 @E1000_READ_REG(%struct.e1000_hw* %106, i32 %107)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @E1000_CTRL_RFCE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load i32, i32* @BM_RCTL_RFCE, align 4
  %115 = load i32, i32* %7, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %113, %105
  %118 = load %struct.adapter*, %struct.adapter** %3, align 8
  %119 = getelementptr inbounds %struct.adapter, %struct.adapter* %118, i32 0, i32 1
  %120 = load i64, i64* @BM_RCTL, align 8
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %119, i64 %120, i32 %121)
  %123 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %124 = load i32, i32* @E1000_WUC, align 4
  %125 = load i32, i32* @E1000_WUC_PHY_WAKE, align 4
  %126 = load i32, i32* @E1000_WUC_PME_EN, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @E1000_WUC_APME, align 4
  %129 = or i32 %127, %128
  %130 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %123, i32 %124, i32 %129)
  %131 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %132 = load i32, i32* @E1000_WUFC, align 4
  %133 = load %struct.adapter*, %struct.adapter** %3, align 8
  %134 = getelementptr inbounds %struct.adapter, %struct.adapter* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %131, i32 %132, i32 %135)
  %137 = load %struct.adapter*, %struct.adapter** %3, align 8
  %138 = getelementptr inbounds %struct.adapter, %struct.adapter* %137, i32 0, i32 1
  %139 = load i64, i64* @BM_WUFC, align 8
  %140 = load %struct.adapter*, %struct.adapter** %3, align 8
  %141 = getelementptr inbounds %struct.adapter, %struct.adapter* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %138, i64 %139, i32 %142)
  %144 = load %struct.adapter*, %struct.adapter** %3, align 8
  %145 = getelementptr inbounds %struct.adapter, %struct.adapter* %144, i32 0, i32 1
  %146 = load i64, i64* @BM_WUC, align 8
  %147 = load i32, i32* @E1000_WUC_PME_EN, align 4
  %148 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %145, i64 %146, i32 %147)
  %149 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %150 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %152, align 8
  %154 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %155 = bitcast %struct.e1000_hw* %154 to %struct.e1000_hw.0*
  %156 = call i32 %153(%struct.e1000_hw.0* %155)
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %117
  %160 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %161 = load i32, i32* %6, align 4
  store i32 %161, i32* %2, align 4
  br label %201

162:                                              ; preds = %117
  %163 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %164 = load i32, i32* @IGP01E1000_PHY_PAGE_SELECT, align 4
  %165 = load i32, i32* @BM_WUC_ENABLE_PAGE, align 4
  %166 = load i32, i32* @IGP_PAGE_SHIFT, align 4
  %167 = shl i32 %165, %166
  %168 = call i32 @e1000_write_phy_reg_mdic(%struct.e1000_hw* %163, i32 %164, i32 %167)
  %169 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %170 = load i32, i32* @BM_WUC_ENABLE_REG, align 4
  %171 = call i32 @e1000_read_phy_reg_mdic(%struct.e1000_hw* %169, i32 %170, i32* %7)
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %6, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %162
  %175 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %191

176:                                              ; preds = %162
  %177 = load i32, i32* @BM_WUC_ENABLE_BIT, align 4
  %178 = load i32, i32* @BM_WUC_HOST_WU_BIT, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* %7, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %7, align 4
  %182 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %183 = load i32, i32* @BM_WUC_ENABLE_REG, align 4
  %184 = load i32, i32* %7, align 4
  %185 = call i32 @e1000_write_phy_reg_mdic(%struct.e1000_hw* %182, i32 %183, i32 %184)
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %6, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %176
  %189 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %190

190:                                              ; preds = %188, %176
  br label %191

191:                                              ; preds = %190, %174
  %192 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %193 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 1
  %196 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %195, align 8
  %197 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %198 = bitcast %struct.e1000_hw* %197 to %struct.e1000_hw.1*
  %199 = call i32 %196(%struct.e1000_hw.1* %198)
  %200 = load i32, i32* %6, align 4
  store i32 %200, i32* %2, align 4
  br label %201

201:                                              ; preds = %191, %159
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local i32 @e1000_copy_rx_addrs_to_phy_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_READ_REG_ARRAY(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_write_phy_reg(%struct.e1000_hw*, i64, i32) #1

declare dso_local i64 @BM_MTA(i32) #1

declare dso_local i32 @e1000_read_phy_reg(%struct.e1000_hw*, i64, i32*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @e1000_write_phy_reg_mdic(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_read_phy_reg_mdic(%struct.e1000_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
