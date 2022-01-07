; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_xgmac.c_t3_mac_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_xgmac.c_t3_mac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addr_val_pair = type { i32, i64 }
%struct.cmac = type { i32, i32, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@t3_mac_init.mac_reset_avp = internal global [14 x %struct.addr_val_pair] [%struct.addr_val_pair { i32 134, i64 0 }, %struct.addr_val_pair { i32 146, i64 0 }, %struct.addr_val_pair { i32 147, i64 135 }, %struct.addr_val_pair { i32 136, i64 0 }, %struct.addr_val_pair { i32 137, i64 0 }, %struct.addr_val_pair { i32 145, i64 0 }, %struct.addr_val_pair { i32 144, i64 0 }, %struct.addr_val_pair { i32 143, i64 0 }, %struct.addr_val_pair { i32 142, i64 0 }, %struct.addr_val_pair { i32 141, i64 0 }, %struct.addr_val_pair { i32 140, i64 0 }, %struct.addr_val_pair { i32 139, i64 0 }, %struct.addr_val_pair { i32 138, i64 0 }, %struct.addr_val_pair { i32 135, i64 133 }], align 16
@A_XGM_RESET_CTRL = common dso_local global i64 0, align 8
@F_MAC_RESET_ = common dso_local global i32 0, align 4
@A_XGM_RXFIFO_CFG = common dso_local global i64 0, align 8
@F_RXSTRFRWRD = common dso_local global i32 0, align 4
@F_DISERRFRAMES = common dso_local global i32 0, align 4
@A_XGM_TXFIFO_CFG = common dso_local global i64 0, align 8
@F_UNDERUNFIX = common dso_local global i32 0, align 4
@A_XGM_SERDES_CTRL = common dso_local global i64 0, align 8
@F_RXENABLE = common dso_local global i32 0, align 4
@F_TXENABLE = common dso_local global i32 0, align 4
@A_XGM_SERDES_STATUS1 = common dso_local global i64 0, align 8
@F_CMULOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"MAC %d XAUI SERDES CMU lock failed\0A\00", align 1
@F_SERDESRESET_ = common dso_local global i32 0, align 4
@A_XGM_RX_MAX_PKT_SIZE = common dso_local global i64 0, align 8
@MAX_FRAME_SIZE = common dso_local global i64 0, align 8
@F_DISPREAMBLE = common dso_local global i32 0, align 4
@F_COPYPREAMBLE = common dso_local global i32 0, align 4
@F_ENNON802_3PREAMBLE = common dso_local global i32 0, align 4
@M_TXFIFOTHRESH = common dso_local global i32 0, align 4
@F_TXEN = common dso_local global i32 0, align 4
@F_RXEN = common dso_local global i32 0, align 4
@M_RXMAXFRAMERSIZE = common dso_local global i64 0, align 8
@F_RXENFRAMER = common dso_local global i32 0, align 4
@F_PCS_RESET_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_mac_init(%struct.cmac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  store %struct.cmac* %0, %struct.cmac** %3, align 8
  %7 = load %struct.cmac*, %struct.cmac** %3, align 8
  %8 = getelementptr inbounds %struct.cmac, %struct.cmac* %7, i32 0, i32 3
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %5, align 8
  %10 = load %struct.cmac*, %struct.cmac** %3, align 8
  %11 = getelementptr inbounds %struct.cmac, %struct.cmac* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = load i64, i64* @A_XGM_RESET_CTRL, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = load i32, i32* @F_MAC_RESET_, align 4
  %19 = call i32 @t3_write_reg(%struct.TYPE_11__* %13, i64 %17, i32 %18)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = load i64, i64* @A_XGM_RESET_CTRL, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = call i32 @t3_read_reg(%struct.TYPE_11__* %20, i64 %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.addr_val_pair* getelementptr inbounds ([14 x %struct.addr_val_pair], [14 x %struct.addr_val_pair]* @t3_mac_init.mac_reset_avp, i64 0, i64 0))
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @t3_write_regs(%struct.TYPE_11__* %26, %struct.addr_val_pair* getelementptr inbounds ([14 x %struct.addr_val_pair], [14 x %struct.addr_val_pair]* @t3_mac_init.mac_reset_avp, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = load i64, i64* @A_XGM_RXFIFO_CFG, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = load i32, i32* @F_RXSTRFRWRD, align 4
  %36 = load i32, i32* @F_DISERRFRAMES, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = call i64 @uses_xaui(%struct.TYPE_11__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %1
  br label %44

42:                                               ; preds = %1
  %43 = load i32, i32* @F_RXSTRFRWRD, align 4
  br label %44

44:                                               ; preds = %42, %41
  %45 = phi i32 [ 0, %41 ], [ %43, %42 ]
  %46 = call i32 @t3_set_reg_field(%struct.TYPE_11__* %30, i64 %34, i32 %37, i32 %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = load i64, i64* @A_XGM_TXFIFO_CFG, align 8
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = load i32, i32* @F_UNDERUNFIX, align 4
  %53 = call i32 @t3_set_reg_field(%struct.TYPE_11__* %47, i64 %51, i32 0, i32 %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = call i64 @uses_xaui(%struct.TYPE_11__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %98

57:                                               ; preds = %44
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %57
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = load i64, i64* @A_XGM_SERDES_CTRL, align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = load i32, i32* @F_RXENABLE, align 4
  %70 = load i32, i32* @F_TXENABLE, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @t3_set_reg_field(%struct.TYPE_11__* %64, i64 %68, i32 0, i32 %71)
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = load i64, i64* @A_XGM_SERDES_STATUS1, align 8
  %75 = load i32, i32* %6, align 4
  %76 = zext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = load i32, i32* @F_CMULOCK, align 4
  %79 = call i64 @t3_wait_op_done(%struct.TYPE_11__* %73, i64 %77, i32 %78, i32 1, i32 5, i32 2)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %63
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %83 = load %struct.cmac*, %struct.cmac** %3, align 8
  %84 = call i32 @macidx(%struct.cmac* %83)
  %85 = call i32 @CH_ERR(%struct.TYPE_11__* %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %84)
  store i32 -1, i32* %2, align 4
  br label %195

86:                                               ; preds = %63
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %88 = load i64, i64* @A_XGM_SERDES_CTRL, align 8
  %89 = load i32, i32* %6, align 4
  %90 = zext i32 %89 to i64
  %91 = add nsw i64 %88, %90
  %92 = load i32, i32* @F_SERDESRESET_, align 4
  %93 = call i32 @t3_set_reg_field(%struct.TYPE_11__* %87, i64 %91, i32 0, i32 %92)
  br label %97

94:                                               ; preds = %57
  %95 = load %struct.cmac*, %struct.cmac** %3, align 8
  %96 = call i32 @xaui_serdes_reset(%struct.cmac* %95)
  br label %97

97:                                               ; preds = %94, %86
  br label %98

98:                                               ; preds = %97, %44
  %99 = load %struct.cmac*, %struct.cmac** %3, align 8
  %100 = getelementptr inbounds %struct.cmac, %struct.cmac* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %149

103:                                              ; preds = %98
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %105 = load i64, i64* @A_XGM_RX_MAX_PKT_SIZE, align 8
  %106 = load i32, i32* %6, align 4
  %107 = zext i32 %106 to i64
  %108 = add nsw i64 %105, %107
  %109 = load i64, i64* @MAX_FRAME_SIZE, align 8
  %110 = sub nsw i64 %109, 4
  %111 = call i32 @V_RXMAXPKTSIZE(i64 %110)
  %112 = call i32 @t3_write_reg(%struct.TYPE_11__* %104, i64 %108, i32 %111)
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %114 = load i64, i64* @A_XGM_TXFIFO_CFG, align 8
  %115 = load i32, i32* %6, align 4
  %116 = zext i32 %115 to i64
  %117 = add nsw i64 %114, %116
  %118 = load i32, i32* @F_DISPREAMBLE, align 4
  %119 = call i32 @t3_set_reg_field(%struct.TYPE_11__* %113, i64 %117, i32 0, i32 %118)
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %121 = load i32, i32* %6, align 4
  %122 = add i32 147, %121
  %123 = zext i32 %122 to i64
  %124 = load i32, i32* @F_COPYPREAMBLE, align 4
  %125 = load i32, i32* @F_ENNON802_3PREAMBLE, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @t3_set_reg_field(%struct.TYPE_11__* %120, i64 %123, i32 0, i32 %126)
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %129 = load i64, i64* @A_XGM_TXFIFO_CFG, align 8
  %130 = load i32, i32* %6, align 4
  %131 = zext i32 %130 to i64
  %132 = add nsw i64 %129, %131
  %133 = load i32, i32* @M_TXFIFOTHRESH, align 4
  %134 = call i32 @V_TXFIFOTHRESH(i32 %133)
  %135 = call i32 @V_TXFIFOTHRESH(i32 64)
  %136 = call i32 @t3_set_reg_field(%struct.TYPE_11__* %128, i64 %132, i32 %134, i32 %135)
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %138 = load i32, i32* %6, align 4
  %139 = add i32 134, %138
  %140 = zext i32 %139 to i64
  %141 = load i32, i32* @F_TXEN, align 4
  %142 = call i32 @t3_write_reg(%struct.TYPE_11__* %137, i64 %140, i32 %141)
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %144 = load i32, i32* %6, align 4
  %145 = add i32 146, %144
  %146 = zext i32 %145 to i64
  %147 = load i32, i32* @F_RXEN, align 4
  %148 = call i32 @t3_write_reg(%struct.TYPE_11__* %143, i64 %146, i32 %147)
  br label %149

149:                                              ; preds = %103, %98
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %151 = load i64, i64* @A_XGM_RX_MAX_PKT_SIZE, align 8
  %152 = load i32, i32* %6, align 4
  %153 = zext i32 %152 to i64
  %154 = add nsw i64 %151, %153
  %155 = load i64, i64* @M_RXMAXFRAMERSIZE, align 8
  %156 = call i32 @V_RXMAXFRAMERSIZE(i64 %155)
  %157 = load i64, i64* @MAX_FRAME_SIZE, align 8
  %158 = call i32 @V_RXMAXFRAMERSIZE(i64 %157)
  %159 = load i32, i32* @F_RXENFRAMER, align 4
  %160 = or i32 %158, %159
  %161 = call i32 @t3_set_reg_field(%struct.TYPE_11__* %150, i64 %154, i32 %156, i32 %160)
  %162 = load %struct.cmac*, %struct.cmac** %3, align 8
  %163 = call i32 @xgm_reset_ctrl(%struct.cmac* %162)
  store i32 %163, i32* %4, align 4
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %165 = load i64, i64* @A_XGM_RESET_CTRL, align 8
  %166 = load i32, i32* %6, align 4
  %167 = zext i32 %166 to i64
  %168 = add nsw i64 %165, %167
  %169 = load i32, i32* %4, align 4
  %170 = call i32 @t3_write_reg(%struct.TYPE_11__* %164, i64 %168, i32 %169)
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %172 = load i64, i64* @A_XGM_RESET_CTRL, align 8
  %173 = load i32, i32* %6, align 4
  %174 = zext i32 %173 to i64
  %175 = add nsw i64 %172, %174
  %176 = call i32 @t3_read_reg(%struct.TYPE_11__* %171, i64 %175)
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* @F_PCS_RESET_, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %149
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %181
  %188 = call i32 @msleep(i32 1)
  %189 = load %struct.cmac*, %struct.cmac** %3, align 8
  %190 = call i32 @t3b_pcs_reset(%struct.cmac* %189)
  br label %191

191:                                              ; preds = %187, %181, %149
  %192 = load %struct.cmac*, %struct.cmac** %3, align 8
  %193 = getelementptr inbounds %struct.cmac, %struct.cmac* %192, i32 0, i32 1
  %194 = call i32 @memset(i32* %193, i32 0, i32 4)
  store i32 0, i32* %2, align 4
  br label %195

195:                                              ; preds = %191, %81
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i32 @t3_write_reg(%struct.TYPE_11__*, i64, i32) #1

declare dso_local i32 @t3_read_reg(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @t3_write_regs(%struct.TYPE_11__*, %struct.addr_val_pair*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.addr_val_pair*) #1

declare dso_local i32 @t3_set_reg_field(%struct.TYPE_11__*, i64, i32, i32) #1

declare dso_local i64 @uses_xaui(%struct.TYPE_11__*) #1

declare dso_local i64 @t3_wait_op_done(%struct.TYPE_11__*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @CH_ERR(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @macidx(%struct.cmac*) #1

declare dso_local i32 @xaui_serdes_reset(%struct.cmac*) #1

declare dso_local i32 @V_RXMAXPKTSIZE(i64) #1

declare dso_local i32 @V_TXFIFOTHRESH(i32) #1

declare dso_local i32 @V_RXMAXFRAMERSIZE(i64) #1

declare dso_local i32 @xgm_reset_ctrl(%struct.cmac*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @t3b_pcs_reset(%struct.cmac*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
