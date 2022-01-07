; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_xgmac.c_t3_mac_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_xgmac.c_t3_mac_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@A_MPS_CFG = common dso_local global i64 0, align 8
@F_PORT0ACTIVE = common dso_local global i32 0, align 4
@F_PORT1ACTIVE = common dso_local global i32 0, align 4
@F_ENFORCEPKT = common dso_local global i32 0, align 4
@A_XGM_TX_CFG = common dso_local global i64 0, align 8
@F_TXPAUSEEN = common dso_local global i32 0, align 4
@A_XGM_RESET_CTRL = common dso_local global i64 0, align 8
@F_MAC_RESET_ = common dso_local global i32 0, align 4
@A_TP_PIO_ADDR = common dso_local global i64 0, align 8
@A_TP_TX_DROP_CFG_CH0 = common dso_local global i32 0, align 4
@A_TP_PIO_DATA = common dso_local global i64 0, align 8
@A_XGM_RX_MAX_PKT_SIZE_ERR_CNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"MAC %d Rx fifo drain failed\0A\00", align 1
@A_XGM_INT_ENABLE = common dso_local global i64 0, align 8
@A_XGM_PORT_CFG = common dso_local global i64 0, align 8
@M_PORTSPEED = common dso_local global i32 0, align 4
@F_SAFESPEEDCHANGE = common dso_local global i32 0, align 4
@F_PCS_RESET_ = common dso_local global i32 0, align 4
@A_XGM_RX_CFG = common dso_local global i64 0, align 8
@F_DISPAUSEFRAMES = common dso_local global i32 0, align 4
@F_EN1536BFRAMES = common dso_local global i32 0, align 4
@F_RMFCS = common dso_local global i32 0, align 4
@F_ENJUMBO = common dso_local global i32 0, align 4
@F_ENHASHMCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmac*, i32)* @t3_mac_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t3_mac_reset(%struct.cmac* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cmac* %0, %struct.cmac** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.cmac*, %struct.cmac** %4, align 8
  %14 = getelementptr inbounds %struct.cmac, %struct.cmac* %13, i32 0, i32 1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %8, align 8
  %16 = load %struct.cmac*, %struct.cmac** %4, align 8
  %17 = getelementptr inbounds %struct.cmac, %struct.cmac* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load %struct.cmac*, %struct.cmac** %4, align 8
  %20 = call i32 @macidx(%struct.cmac* %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = load i64, i64* @A_MPS_CFG, align 8
  %23 = call i32 @t3_read_reg(%struct.TYPE_9__* %21, i64 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %28 = load i64, i64* @A_MPS_CFG, align 8
  %29 = load i32, i32* @F_PORT0ACTIVE, align 4
  %30 = call i32 @t3_set_reg_field(%struct.TYPE_9__* %27, i64 %28, i32 %29, i32 0)
  br label %36

31:                                               ; preds = %2
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = load i64, i64* @A_MPS_CFG, align 8
  %34 = load i32, i32* @F_PORT1ACTIVE, align 4
  %35 = call i32 @t3_set_reg_field(%struct.TYPE_9__* %32, i64 %33, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = load i64, i64* @A_MPS_CFG, align 8
  %39 = load i32, i32* @F_ENFORCEPKT, align 4
  %40 = call i32 @t3_set_reg_field(%struct.TYPE_9__* %37, i64 %38, i32 %39, i32 0)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = load i64, i64* @A_XGM_TX_CFG, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = load i32, i32* @F_TXPAUSEEN, align 4
  %47 = call i32 @t3_set_reg_field(%struct.TYPE_9__* %41, i64 %45, i32 %46, i32 0)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %49 = load i64, i64* @A_XGM_RESET_CTRL, align 8
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = load i32, i32* @F_MAC_RESET_, align 4
  %54 = call i32 @t3_write_reg(%struct.TYPE_9__* %48, i64 %52, i32 %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %56 = load i64, i64* @A_XGM_RESET_CTRL, align 8
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = call i32 @t3_read_reg(%struct.TYPE_9__* %55, i64 %59)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %62 = load i64, i64* @A_TP_PIO_ADDR, align 8
  %63 = load i32, i32* @A_TP_TX_DROP_CFG_CH0, align 4
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %63, %64
  %66 = call i32 @t3_write_reg(%struct.TYPE_9__* %61, i64 %62, i32 %65)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %68 = load i64, i64* @A_TP_PIO_DATA, align 8
  %69 = call i32 @t3_read_reg(%struct.TYPE_9__* %67, i64 %68)
  store i32 %69, i32* %11, align 4
  %70 = call i32 @msleep(i32 10)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %72 = load i64, i64* @A_TP_PIO_ADDR, align 8
  %73 = load i32, i32* @A_TP_TX_DROP_CFG_CH0, align 4
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %73, %74
  %76 = call i32 @t3_write_reg(%struct.TYPE_9__* %71, i64 %72, i32 %75)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %78 = load i64, i64* @A_TP_PIO_DATA, align 8
  %79 = call i32 @t3_write_reg(%struct.TYPE_9__* %77, i64 %78, i32 -1073741807)
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %81 = load i64, i64* @A_XGM_RX_MAX_PKT_SIZE_ERR_CNT, align 8
  %82 = load i32, i32* %9, align 4
  %83 = zext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = call i64 @t3_wait_op_done(%struct.TYPE_9__* %80, i64 %84, i32 -2147483648, i32 1, i32 1000, i32 2)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %36
  %88 = load i32, i32* %5, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @CH_ERR(%struct.TYPE_9__* %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %92)
  store i32 -1, i32* %3, align 4
  br label %226

94:                                               ; preds = %87, %36
  %95 = load i32, i32* %5, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %145

97:                                               ; preds = %94
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %99 = load i64, i64* @A_XGM_INT_ENABLE, align 8
  %100 = load i32, i32* %9, align 4
  %101 = zext i32 %100 to i64
  %102 = add nsw i64 %99, %101
  %103 = call i32 @t3_read_reg(%struct.TYPE_9__* %98, i64 %102)
  store i32 %103, i32* %12, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %105 = load i64, i64* @A_XGM_PORT_CFG, align 8
  %106 = load i32, i32* %9, align 4
  %107 = zext i32 %106 to i64
  %108 = add nsw i64 %105, %107
  %109 = load i32, i32* @M_PORTSPEED, align 4
  %110 = call i32 @V_PORTSPEED(i32 %109)
  %111 = load i32, i32* @F_SAFESPEEDCHANGE, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @F_SAFESPEEDCHANGE, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @t3_set_reg_field(%struct.TYPE_9__* %104, i64 %108, i32 %112, i32 %115)
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %118 = load i64, i64* @A_XGM_PORT_CFG, align 8
  %119 = load i32, i32* %9, align 4
  %120 = zext i32 %119 to i64
  %121 = add nsw i64 %118, %120
  %122 = call i32 @t3_read_reg(%struct.TYPE_9__* %117, i64 %121)
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %124 = load i64, i64* @A_XGM_PORT_CFG, align 8
  %125 = load i32, i32* %9, align 4
  %126 = zext i32 %125 to i64
  %127 = add nsw i64 %124, %126
  %128 = load i32, i32* @F_SAFESPEEDCHANGE, align 4
  %129 = call i32 @t3_set_reg_field(%struct.TYPE_9__* %123, i64 %127, i32 %128, i32 0)
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %131 = load i64, i64* @A_XGM_PORT_CFG, align 8
  %132 = load i32, i32* %9, align 4
  %133 = zext i32 %132 to i64
  %134 = add nsw i64 %131, %133
  %135 = call i32 @t3_read_reg(%struct.TYPE_9__* %130, i64 %134)
  %136 = load %struct.cmac*, %struct.cmac** %4, align 8
  %137 = call i32 @t3_mac_init(%struct.cmac* %136)
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %139 = load i64, i64* @A_XGM_INT_ENABLE, align 8
  %140 = load i32, i32* %9, align 4
  %141 = zext i32 %140 to i64
  %142 = add nsw i64 %139, %141
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @t3_write_reg(%struct.TYPE_9__* %138, i64 %142, i32 %143)
  br label %203

145:                                              ; preds = %94
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %147 = load i64, i64* @A_XGM_RESET_CTRL, align 8
  %148 = load i32, i32* %9, align 4
  %149 = zext i32 %148 to i64
  %150 = add nsw i64 %147, %149
  %151 = call i32 @t3_write_reg(%struct.TYPE_9__* %146, i64 %150, i32 0)
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %153 = load i64, i64* @A_XGM_RESET_CTRL, align 8
  %154 = load i32, i32* %9, align 4
  %155 = zext i32 %154 to i64
  %156 = add nsw i64 %153, %155
  %157 = call i32 @t3_read_reg(%struct.TYPE_9__* %152, i64 %156)
  %158 = load %struct.cmac*, %struct.cmac** %4, align 8
  %159 = call i32 @xgm_reset_ctrl(%struct.cmac* %158)
  store i32 %159, i32* %6, align 4
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %161 = load i64, i64* @A_XGM_RESET_CTRL, align 8
  %162 = load i32, i32* %9, align 4
  %163 = zext i32 %162 to i64
  %164 = add nsw i64 %161, %163
  %165 = load i32, i32* %6, align 4
  %166 = call i32 @t3_write_reg(%struct.TYPE_9__* %160, i64 %164, i32 %165)
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %168 = load i64, i64* @A_XGM_RESET_CTRL, align 8
  %169 = load i32, i32* %9, align 4
  %170 = zext i32 %169 to i64
  %171 = add nsw i64 %168, %170
  %172 = call i32 @t3_read_reg(%struct.TYPE_9__* %167, i64 %171)
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @F_PCS_RESET_, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %145
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %177
  %184 = call i32 @msleep(i32 1)
  %185 = load %struct.cmac*, %struct.cmac** %4, align 8
  %186 = call i32 @t3b_pcs_reset(%struct.cmac* %185)
  br label %187

187:                                              ; preds = %183, %177, %145
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %189 = load i64, i64* @A_XGM_RX_CFG, align 8
  %190 = load i32, i32* %9, align 4
  %191 = zext i32 %190 to i64
  %192 = add nsw i64 %189, %191
  %193 = load i32, i32* @F_DISPAUSEFRAMES, align 4
  %194 = load i32, i32* @F_EN1536BFRAMES, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @F_RMFCS, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @F_ENJUMBO, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @F_ENHASHMCAST, align 4
  %201 = or i32 %199, %200
  %202 = call i32 @t3_write_reg(%struct.TYPE_9__* %188, i64 %192, i32 %201)
  br label %203

203:                                              ; preds = %187, %97
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %205 = load i64, i64* @A_TP_PIO_ADDR, align 8
  %206 = load i32, i32* @A_TP_TX_DROP_CFG_CH0, align 4
  %207 = load i32, i32* %10, align 4
  %208 = add nsw i32 %206, %207
  %209 = call i32 @t3_write_reg(%struct.TYPE_9__* %204, i64 %205, i32 %208)
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %211 = load i64, i64* @A_TP_PIO_DATA, align 8
  %212 = load i32, i32* %11, align 4
  %213 = call i32 @t3_write_reg(%struct.TYPE_9__* %210, i64 %211, i32 %212)
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %215 = load i64, i64* @A_MPS_CFG, align 8
  %216 = load i32, i32* @F_PORT1ACTIVE, align 4
  %217 = load i32, i32* @F_PORT0ACTIVE, align 4
  %218 = or i32 %216, %217
  %219 = load i32, i32* %7, align 4
  %220 = call i32 @t3_set_reg_field(%struct.TYPE_9__* %214, i64 %215, i32 %218, i32 %219)
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %222 = load i64, i64* @A_MPS_CFG, align 8
  %223 = load i32, i32* @F_ENFORCEPKT, align 4
  %224 = load i32, i32* @F_ENFORCEPKT, align 4
  %225 = call i32 @t3_set_reg_field(%struct.TYPE_9__* %221, i64 %222, i32 %223, i32 %224)
  store i32 0, i32* %3, align 4
  br label %226

226:                                              ; preds = %203, %90
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local i32 @macidx(%struct.cmac*) #1

declare dso_local i32 @t3_read_reg(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @t3_set_reg_field(%struct.TYPE_9__*, i64, i32, i32) #1

declare dso_local i32 @t3_write_reg(%struct.TYPE_9__*, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @t3_wait_op_done(%struct.TYPE_9__*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @CH_ERR(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @V_PORTSPEED(i32) #1

declare dso_local i32 @t3_mac_init(%struct.cmac*) #1

declare dso_local i32 @xgm_reset_ctrl(%struct.cmac*) #1

declare dso_local i32 @t3b_pcs_reset(%struct.cmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
