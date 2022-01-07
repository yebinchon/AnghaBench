; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_sgmii_change_link_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_sgmii_change_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lmac = type { i32, i32, i32, i64, %struct.bgx* }
%struct.bgx = type { i32 }

@BGX_CMRX_CFG = common dso_local global i32 0, align 4
@CMR_EN = common dso_local global i32 0, align 4
@BGX_GMP_GMI_PRTX_CFG = common dso_local global i32 0, align 4
@BGX_GMP_PCS_MISCX_CTL = common dso_local global i32 0, align 4
@PCS_MISC_CTL_GMX_ENO = common dso_local global i32 0, align 4
@GMI_PORT_CFG_DUPLEX = common dso_local global i32 0, align 4
@GMI_PORT_CFG_SPEED = common dso_local global i32 0, align 4
@GMI_PORT_CFG_SPEED_MSB = common dso_local global i32 0, align 4
@GMI_PORT_CFG_SLOT_TIME = common dso_local global i32 0, align 4
@PCS_MISC_CTL_SAMP_PT_MASK = common dso_local global i32 0, align 4
@BGX_GMP_GMI_TXX_SLOT = common dso_local global i32 0, align 4
@BGX_GMP_GMI_TXX_BURST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lmac*)* @bgx_sgmii_change_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgx_sgmii_change_link_state(%struct.lmac* %0) #0 {
  %2 = alloca %struct.lmac*, align 8
  %3 = alloca %struct.bgx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lmac* %0, %struct.lmac** %2, align 8
  %7 = load %struct.lmac*, %struct.lmac** %2, align 8
  %8 = getelementptr inbounds %struct.lmac, %struct.lmac* %7, i32 0, i32 4
  %9 = load %struct.bgx*, %struct.bgx** %8, align 8
  store %struct.bgx* %9, %struct.bgx** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.bgx*, %struct.bgx** %3, align 8
  %11 = load %struct.lmac*, %struct.lmac** %2, align 8
  %12 = getelementptr inbounds %struct.lmac, %struct.lmac* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @BGX_CMRX_CFG, align 4
  %15 = call i32 @bgx_reg_read(%struct.bgx* %10, i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @CMR_EN, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load %struct.bgx*, %struct.bgx** %3, align 8
  %21 = load %struct.lmac*, %struct.lmac** %2, align 8
  %22 = getelementptr inbounds %struct.lmac, %struct.lmac* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BGX_CMRX_CFG, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @bgx_reg_write(%struct.bgx* %20, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.bgx*, %struct.bgx** %3, align 8
  %28 = load %struct.lmac*, %struct.lmac** %2, align 8
  %29 = getelementptr inbounds %struct.lmac, %struct.lmac* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @BGX_GMP_GMI_PRTX_CFG, align 4
  %32 = call i32 @bgx_reg_read(%struct.bgx* %27, i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.bgx*, %struct.bgx** %3, align 8
  %34 = load %struct.lmac*, %struct.lmac** %2, align 8
  %35 = getelementptr inbounds %struct.lmac, %struct.lmac* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @BGX_GMP_PCS_MISCX_CTL, align 4
  %38 = call i32 @bgx_reg_read(%struct.bgx* %33, i32 %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.lmac*, %struct.lmac** %2, align 8
  %40 = getelementptr inbounds %struct.lmac, %struct.lmac* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %1
  %44 = load i32, i32* @PCS_MISC_CTL_GMX_ENO, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* @GMI_PORT_CFG_DUPLEX, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load %struct.lmac*, %struct.lmac** %2, align 8
  %53 = getelementptr inbounds %struct.lmac, %struct.lmac* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = shl i32 %54, 2
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %62

58:                                               ; preds = %1
  %59 = load i32, i32* @PCS_MISC_CTL_GMX_ENO, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %58, %43
  %63 = load %struct.lmac*, %struct.lmac** %2, align 8
  %64 = getelementptr inbounds %struct.lmac, %struct.lmac* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %169 [
    i32 10, label %66
    i32 100, label %96
    i32 1000, label %127
  ]

66:                                               ; preds = %62
  %67 = load i32, i32* @GMI_PORT_CFG_SPEED, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %5, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* @GMI_PORT_CFG_SPEED_MSB, align 4
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* @GMI_PORT_CFG_SLOT_TIME, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %5, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* @PCS_MISC_CTL_SAMP_PT_MASK, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %6, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, 50
  store i32 %83, i32* %6, align 4
  %84 = load %struct.bgx*, %struct.bgx** %3, align 8
  %85 = load %struct.lmac*, %struct.lmac** %2, align 8
  %86 = getelementptr inbounds %struct.lmac, %struct.lmac* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @BGX_GMP_GMI_TXX_SLOT, align 4
  %89 = call i32 @bgx_reg_write(%struct.bgx* %84, i32 %87, i32 %88, i32 64)
  %90 = load %struct.bgx*, %struct.bgx** %3, align 8
  %91 = load %struct.lmac*, %struct.lmac** %2, align 8
  %92 = getelementptr inbounds %struct.lmac, %struct.lmac* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @BGX_GMP_GMI_TXX_BURST, align 4
  %95 = call i32 @bgx_reg_write(%struct.bgx* %90, i32 %93, i32 %94, i32 0)
  br label %170

96:                                               ; preds = %62
  %97 = load i32, i32* @GMI_PORT_CFG_SPEED, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %5, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* @GMI_PORT_CFG_SPEED_MSB, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %5, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* @GMI_PORT_CFG_SLOT_TIME, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %5, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* @PCS_MISC_CTL_SAMP_PT_MASK, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %6, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = or i32 %113, 5
  store i32 %114, i32* %6, align 4
  %115 = load %struct.bgx*, %struct.bgx** %3, align 8
  %116 = load %struct.lmac*, %struct.lmac** %2, align 8
  %117 = getelementptr inbounds %struct.lmac, %struct.lmac* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @BGX_GMP_GMI_TXX_SLOT, align 4
  %120 = call i32 @bgx_reg_write(%struct.bgx* %115, i32 %118, i32 %119, i32 64)
  %121 = load %struct.bgx*, %struct.bgx** %3, align 8
  %122 = load %struct.lmac*, %struct.lmac** %2, align 8
  %123 = getelementptr inbounds %struct.lmac, %struct.lmac* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @BGX_GMP_GMI_TXX_BURST, align 4
  %126 = call i32 @bgx_reg_write(%struct.bgx* %121, i32 %124, i32 %125, i32 0)
  br label %170

127:                                              ; preds = %62
  %128 = load i32, i32* @GMI_PORT_CFG_SPEED, align 4
  %129 = load i32, i32* %5, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* @GMI_PORT_CFG_SPEED_MSB, align 4
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %5, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* @GMI_PORT_CFG_SLOT_TIME, align 4
  %136 = load i32, i32* %5, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* @PCS_MISC_CTL_SAMP_PT_MASK, align 4
  %139 = xor i32 %138, -1
  %140 = load i32, i32* %6, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = or i32 %142, 1
  store i32 %143, i32* %6, align 4
  %144 = load %struct.bgx*, %struct.bgx** %3, align 8
  %145 = load %struct.lmac*, %struct.lmac** %2, align 8
  %146 = getelementptr inbounds %struct.lmac, %struct.lmac* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @BGX_GMP_GMI_TXX_SLOT, align 4
  %149 = call i32 @bgx_reg_write(%struct.bgx* %144, i32 %147, i32 %148, i32 512)
  %150 = load %struct.lmac*, %struct.lmac** %2, align 8
  %151 = getelementptr inbounds %struct.lmac, %struct.lmac* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %127
  %155 = load %struct.bgx*, %struct.bgx** %3, align 8
  %156 = load %struct.lmac*, %struct.lmac** %2, align 8
  %157 = getelementptr inbounds %struct.lmac, %struct.lmac* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @BGX_GMP_GMI_TXX_BURST, align 4
  %160 = call i32 @bgx_reg_write(%struct.bgx* %155, i32 %158, i32 %159, i32 0)
  br label %168

161:                                              ; preds = %127
  %162 = load %struct.bgx*, %struct.bgx** %3, align 8
  %163 = load %struct.lmac*, %struct.lmac** %2, align 8
  %164 = getelementptr inbounds %struct.lmac, %struct.lmac* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @BGX_GMP_GMI_TXX_BURST, align 4
  %167 = call i32 @bgx_reg_write(%struct.bgx* %162, i32 %165, i32 %166, i32 8192)
  br label %168

168:                                              ; preds = %161, %154
  br label %170

169:                                              ; preds = %62
  br label %170

170:                                              ; preds = %169, %168, %96, %66
  %171 = load %struct.bgx*, %struct.bgx** %3, align 8
  %172 = load %struct.lmac*, %struct.lmac** %2, align 8
  %173 = getelementptr inbounds %struct.lmac, %struct.lmac* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @BGX_GMP_PCS_MISCX_CTL, align 4
  %176 = load i32, i32* %6, align 4
  %177 = call i32 @bgx_reg_write(%struct.bgx* %171, i32 %174, i32 %175, i32 %176)
  %178 = load %struct.bgx*, %struct.bgx** %3, align 8
  %179 = load %struct.lmac*, %struct.lmac** %2, align 8
  %180 = getelementptr inbounds %struct.lmac, %struct.lmac* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @BGX_GMP_GMI_PRTX_CFG, align 4
  %183 = load i32, i32* %5, align 4
  %184 = call i32 @bgx_reg_write(%struct.bgx* %178, i32 %181, i32 %182, i32 %183)
  %185 = load %struct.bgx*, %struct.bgx** %3, align 8
  %186 = load %struct.lmac*, %struct.lmac** %2, align 8
  %187 = getelementptr inbounds %struct.lmac, %struct.lmac* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @BGX_GMP_GMI_PRTX_CFG, align 4
  %190 = call i32 @bgx_reg_read(%struct.bgx* %185, i32 %188, i32 %189)
  store i32 %190, i32* %5, align 4
  %191 = load i32, i32* @CMR_EN, align 4
  %192 = load i32, i32* %4, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %4, align 4
  %194 = load %struct.bgx*, %struct.bgx** %3, align 8
  %195 = load %struct.lmac*, %struct.lmac** %2, align 8
  %196 = getelementptr inbounds %struct.lmac, %struct.lmac* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @BGX_CMRX_CFG, align 4
  %199 = load i32, i32* %4, align 4
  %200 = call i32 @bgx_reg_write(%struct.bgx* %194, i32 %197, i32 %198, i32 %199)
  ret void
}

declare dso_local i32 @bgx_reg_read(%struct.bgx*, i32, i32) #1

declare dso_local i32 @bgx_reg_write(%struct.bgx*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
