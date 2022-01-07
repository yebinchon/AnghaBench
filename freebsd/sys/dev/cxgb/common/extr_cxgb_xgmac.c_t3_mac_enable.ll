; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_xgmac.c_t3_mac_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_xgmac.c_t3_mac_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { i32, i32, i64, i32, i8*, i32, i32, i8*, i32, i32, i32, i64, %struct.mac_stats, %struct.TYPE_8__* }
%struct.mac_stats = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@MAC_DIRECTION_TX = common dso_local global i32 0, align 4
@A_TP_PIO_ADDR = common dso_local global i64 0, align 8
@A_TP_TX_DROP_CFG_CH0 = common dso_local global i32 0, align 4
@A_TP_PIO_DATA = common dso_local global i64 0, align 8
@T3_REV_C = common dso_local global i64 0, align 8
@A_TP_TX_DROP_MODE = common dso_local global i32 0, align 4
@A_XGM_TX_CTRL = common dso_local global i64 0, align 8
@F_TXEN = common dso_local global i32 0, align 4
@A_TP_TX_DROP_CNT_CH0 = common dso_local global i32 0, align 4
@A_XGM_TX_SPI4_SOP_EOP_CNT = common dso_local global i64 0, align 8
@A_XGM_RX_SPI4_SOP_EOP_CNT = common dso_local global i64 0, align 8
@MAC_DIRECTION_RX = common dso_local global i32 0, align 4
@A_XGM_RX_CTRL = common dso_local global i64 0, align 8
@F_RXEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_mac_enable(%struct.cmac* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mac_stats*, align 8
  store %struct.cmac* %0, %struct.cmac** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.cmac*, %struct.cmac** %4, align 8
  %11 = call i32 @macidx(%struct.cmac* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.cmac*, %struct.cmac** %4, align 8
  %13 = getelementptr inbounds %struct.cmac, %struct.cmac* %12, i32 0, i32 13
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %7, align 8
  %15 = load %struct.cmac*, %struct.cmac** %4, align 8
  %16 = getelementptr inbounds %struct.cmac, %struct.cmac* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.cmac*, %struct.cmac** %4, align 8
  %19 = getelementptr inbounds %struct.cmac, %struct.cmac* %18, i32 0, i32 12
  store %struct.mac_stats* %19, %struct.mac_stats** %9, align 8
  %20 = load %struct.cmac*, %struct.cmac** %4, align 8
  %21 = getelementptr inbounds %struct.cmac, %struct.cmac* %20, i32 0, i32 11
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = load %struct.cmac*, %struct.cmac** %4, align 8
  %27 = getelementptr inbounds %struct.cmac, %struct.cmac* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @t3_vsc7323_enable(%struct.TYPE_8__* %25, i32 %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %151

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @MAC_DIRECTION_TX, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %137

36:                                               ; preds = %31
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = load i64, i64* @A_TP_PIO_ADDR, align 8
  %39 = load i32, i32* @A_TP_TX_DROP_CFG_CH0, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %39, %40
  %42 = call i32 @t3_write_reg(%struct.TYPE_8__* %37, i64 %38, i32 %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = load i64, i64* @A_TP_PIO_DATA, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @T3_REV_C, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 -989855999, i32 -1058151423
  %53 = call i32 @t3_write_reg(%struct.TYPE_8__* %43, i64 %44, i32 %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = load i64, i64* @A_TP_PIO_ADDR, align 8
  %56 = load i32, i32* @A_TP_TX_DROP_MODE, align 4
  %57 = call i32 @t3_write_reg(%struct.TYPE_8__* %54, i64 %55, i32 %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = load i64, i64* @A_TP_PIO_DATA, align 8
  %60 = load i32, i32* %6, align 4
  %61 = shl i32 1, %60
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @T3_REV_C, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %36
  br label %72

69:                                               ; preds = %36
  %70 = load i32, i32* %6, align 4
  %71 = shl i32 1, %70
  br label %72

72:                                               ; preds = %69, %68
  %73 = phi i32 [ 0, %68 ], [ %71, %69 ]
  %74 = call i32 @t3_set_reg_field(%struct.TYPE_8__* %58, i64 %59, i32 %61, i32 %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %76 = load i64, i64* @A_XGM_TX_CTRL, align 8
  %77 = load i32, i32* %8, align 4
  %78 = zext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = load i32, i32* @F_TXEN, align 4
  %81 = call i32 @t3_write_reg(%struct.TYPE_8__* %75, i64 %79, i32 %80)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %83 = load i64, i64* @A_TP_PIO_ADDR, align 8
  %84 = load i32, i32* @A_TP_TX_DROP_CNT_CH0, align 4
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %84, %85
  %87 = call i32 @t3_write_reg(%struct.TYPE_8__* %82, i64 %83, i32 %86)
  %88 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %89 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.cmac*, %struct.cmac** %4, align 8
  %92 = getelementptr inbounds %struct.cmac, %struct.cmac* %91, i32 0, i32 9
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %94 = load i64, i64* @A_TP_PIO_DATA, align 8
  %95 = call i32 @t3_read_reg(%struct.TYPE_8__* %93, i64 %94)
  %96 = call i32 @G_TXDROPCNTCH0RCVD(i32 %95)
  %97 = load %struct.cmac*, %struct.cmac** %4, align 8
  %98 = getelementptr inbounds %struct.cmac, %struct.cmac* %97, i32 0, i32 8
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %100 = load i64, i64* @A_XGM_TX_SPI4_SOP_EOP_CNT, align 8
  %101 = load i32, i32* %8, align 4
  %102 = zext i32 %101 to i64
  %103 = add nsw i64 %100, %102
  %104 = call i32 @t3_read_reg(%struct.TYPE_8__* %99, i64 %103)
  %105 = call i8* @G_TXSPI4SOPCNT(i32 %104)
  %106 = load %struct.cmac*, %struct.cmac** %4, align 8
  %107 = getelementptr inbounds %struct.cmac, %struct.cmac* %106, i32 0, i32 7
  store i8* %105, i8** %107, align 8
  %108 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %109 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.cmac*, %struct.cmac** %4, align 8
  %112 = getelementptr inbounds %struct.cmac, %struct.cmac* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 4
  %113 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %114 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.cmac*, %struct.cmac** %4, align 8
  %117 = getelementptr inbounds %struct.cmac, %struct.cmac* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %119 = load i64, i64* @A_XGM_RX_SPI4_SOP_EOP_CNT, align 8
  %120 = load i32, i32* %8, align 4
  %121 = zext i32 %120 to i64
  %122 = add nsw i64 %119, %121
  %123 = call i32 @t3_read_reg(%struct.TYPE_8__* %118, i64 %122)
  %124 = call i8* @G_TXSPI4SOPCNT(i32 %123)
  %125 = load %struct.cmac*, %struct.cmac** %4, align 8
  %126 = getelementptr inbounds %struct.cmac, %struct.cmac* %125, i32 0, i32 4
  store i8* %124, i8** %126, align 8
  %127 = load %struct.mac_stats*, %struct.mac_stats** %9, align 8
  %128 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.cmac*, %struct.cmac** %4, align 8
  %131 = getelementptr inbounds %struct.cmac, %struct.cmac* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* @F_TXEN, align 4
  %133 = load %struct.cmac*, %struct.cmac** %4, align 8
  %134 = getelementptr inbounds %struct.cmac, %struct.cmac* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.cmac*, %struct.cmac** %4, align 8
  %136 = getelementptr inbounds %struct.cmac, %struct.cmac* %135, i32 0, i32 2
  store i64 0, i64* %136, align 8
  br label %137

137:                                              ; preds = %72, %31
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* @MAC_DIRECTION_RX, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %137
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %144 = load i64, i64* @A_XGM_RX_CTRL, align 8
  %145 = load i32, i32* %8, align 4
  %146 = zext i32 %145 to i64
  %147 = add nsw i64 %144, %146
  %148 = load i32, i32* @F_RXEN, align 4
  %149 = call i32 @t3_write_reg(%struct.TYPE_8__* %143, i64 %147, i32 %148)
  br label %150

150:                                              ; preds = %142, %137
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %150, %24
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @macidx(%struct.cmac*) #1

declare dso_local i32 @t3_vsc7323_enable(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @t3_write_reg(%struct.TYPE_8__*, i64, i32) #1

declare dso_local i32 @t3_set_reg_field(%struct.TYPE_8__*, i64, i32, i32) #1

declare dso_local i32 @G_TXDROPCNTCH0RCVD(i32) #1

declare dso_local i32 @t3_read_reg(%struct.TYPE_8__*, i64) #1

declare dso_local i8* @G_TXSPI4SOPCNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
