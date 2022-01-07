; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_xgmac.c_t3b2_mac_watchdog_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_xgmac.c_t3b2_mac_watchdog_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { i32, i64, i32, i32, i64, i64, i8*, i64, %struct.mac_stats, i32* }
%struct.mac_stats = type { i64, i8* }

@A_XGM_STAT_TX_FRAME_LOW = common dso_local global i64 0, align 8
@A_XGM_TX_SPI4_SOP_EOP_CNT = common dso_local global i64 0, align 8
@A_MPS_CFG = common dso_local global i64 0, align 8
@F_PORT1ACTIVE = common dso_local global i32 0, align 4
@F_PORT0ACTIVE = common dso_local global i32 0, align 4
@F_ENFORCEPKT = common dso_local global i32 0, align 4
@A_TP_PIO_ADDR = common dso_local global i64 0, align 8
@A_TP_TX_DROP_CNT_CH0 = common dso_local global i64 0, align 8
@A_TP_PIO_DATA = common dso_local global i64 0, align 8
@A_XGM_TX_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3b2_mac_watchdog_task(%struct.cmac* %0) #0 {
  %2 = alloca %struct.cmac*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mac_stats*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cmac* %0, %struct.cmac** %2, align 8
  %12 = load %struct.cmac*, %struct.cmac** %2, align 8
  %13 = getelementptr inbounds %struct.cmac, %struct.cmac* %12, i32 0, i32 9
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load %struct.cmac*, %struct.cmac** %2, align 8
  %16 = getelementptr inbounds %struct.cmac, %struct.cmac* %15, i32 0, i32 8
  store %struct.mac_stats* %16, %struct.mac_stats** %7, align 8
  %17 = load %struct.mac_stats*, %struct.mac_stats** %7, align 8
  %18 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %8, align 8
  %20 = load %struct.cmac*, %struct.cmac** %2, align 8
  %21 = getelementptr inbounds %struct.cmac, %struct.cmac* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32*, i32** %6, align 8
  %26 = load i64, i64* @A_XGM_STAT_TX_FRAME_LOW, align 8
  %27 = call i8* @t3_read_reg(i32* %25, i64 %26)
  store i8* %27, i8** %8, align 8
  br label %28

28:                                               ; preds = %24, %1
  store i32 0, i32* %3, align 4
  store i32 1, i32* %5, align 4
  %29 = load %struct.cmac*, %struct.cmac** %2, align 8
  %30 = getelementptr inbounds %struct.cmac, %struct.cmac* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %4, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.cmac*, %struct.cmac** %2, align 8
  %34 = getelementptr inbounds %struct.cmac, %struct.cmac* %33, i32 0, i32 6
  %35 = load i8*, i8** %34, align 8
  %36 = icmp eq i8* %32, %35
  br i1 %36, label %37, label %96

37:                                               ; preds = %28
  %38 = load %struct.cmac*, %struct.cmac** %2, align 8
  %39 = getelementptr inbounds %struct.cmac, %struct.cmac* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.mac_stats*, %struct.mac_stats** %7, align 8
  %42 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %96

45:                                               ; preds = %37
  %46 = load i32*, i32** %6, align 8
  %47 = load i64, i64* @A_XGM_TX_SPI4_SOP_EOP_CNT, align 8
  %48 = load %struct.cmac*, %struct.cmac** %2, align 8
  %49 = getelementptr inbounds %struct.cmac, %struct.cmac* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = call i8* @t3_read_reg(i32* %46, i64 %51)
  %53 = call i32 @G_TXSPI4SOPCNT(i8* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = load i64, i64* @A_MPS_CFG, align 8
  %56 = call i8* @t3_read_reg(i32* %54, i64 %55)
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* %9, align 4
  %58 = load %struct.cmac*, %struct.cmac** %2, align 8
  %59 = call i64 @macidx(%struct.cmac* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %45
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @F_PORT1ACTIVE, align 4
  %64 = and i32 %62, %63
  br label %69

65:                                               ; preds = %45
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @F_PORT0ACTIVE, align 4
  %68 = and i32 %66, %67
  br label %69

69:                                               ; preds = %65, %61
  %70 = phi i32 [ %64, %61 ], [ %68, %65 ]
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @F_ENFORCEPKT, align 4
  %73 = and i32 %71, %72
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %69
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %76
  %80 = load i32, i32* %5, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  %83 = load i32*, i32** %6, align 8
  %84 = load i64, i64* @A_TP_PIO_ADDR, align 8
  %85 = load i64, i64* @A_TP_TX_DROP_CNT_CH0, align 8
  %86 = load %struct.cmac*, %struct.cmac** %2, align 8
  %87 = call i64 @macidx(%struct.cmac* %86)
  %88 = add nsw i64 %85, %87
  %89 = call i32 @t3_write_reg(i32* %83, i64 %84, i64 %88)
  %90 = load i32*, i32** %6, align 8
  %91 = load i64, i64* @A_TP_PIO_DATA, align 8
  %92 = call i8* @t3_read_reg(i32* %90, i64 %91)
  %93 = call i32 @G_TXDROPCNTCH0RCVD(i8* %92)
  store i32 %93, i32* %4, align 4
  br label %95

94:                                               ; preds = %79, %76, %69
  br label %120

95:                                               ; preds = %82
  br label %99

96:                                               ; preds = %37, %28
  %97 = load %struct.cmac*, %struct.cmac** %2, align 8
  %98 = getelementptr inbounds %struct.cmac, %struct.cmac* %97, i32 0, i32 2
  store i32 0, i32* %98, align 8
  br label %120

99:                                               ; preds = %95
  %100 = load i32, i32* %4, align 4
  %101 = load %struct.cmac*, %struct.cmac** %2, align 8
  %102 = getelementptr inbounds %struct.cmac, %struct.cmac* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %100, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %99
  %106 = load %struct.cmac*, %struct.cmac** %2, align 8
  %107 = getelementptr inbounds %struct.cmac, %struct.cmac* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %105
  %111 = load %struct.cmac*, %struct.cmac** %2, align 8
  %112 = getelementptr inbounds %struct.cmac, %struct.cmac* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp sgt i32 %113, 4
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  store i32 2, i32* %3, align 4
  br label %120

116:                                              ; preds = %110
  store i32 1, i32* %3, align 4
  br label %120

117:                                              ; preds = %105, %99
  %118 = load %struct.cmac*, %struct.cmac** %2, align 8
  %119 = getelementptr inbounds %struct.cmac, %struct.cmac* %118, i32 0, i32 2
  store i32 0, i32* %119, align 8
  br label %120

120:                                              ; preds = %117, %116, %115, %96, %94
  %121 = load i32, i32* %4, align 4
  %122 = load %struct.cmac*, %struct.cmac** %2, align 8
  %123 = getelementptr inbounds %struct.cmac, %struct.cmac* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* %5, align 4
  %125 = load %struct.cmac*, %struct.cmac** %2, align 8
  %126 = getelementptr inbounds %struct.cmac, %struct.cmac* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load %struct.mac_stats*, %struct.mac_stats** %7, align 8
  %128 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.cmac*, %struct.cmac** %2, align 8
  %131 = getelementptr inbounds %struct.cmac, %struct.cmac* %130, i32 0, i32 6
  store i8* %129, i8** %131, align 8
  %132 = load %struct.mac_stats*, %struct.mac_stats** %7, align 8
  %133 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.cmac*, %struct.cmac** %2, align 8
  %136 = getelementptr inbounds %struct.cmac, %struct.cmac* %135, i32 0, i32 1
  store i64 %134, i64* %136, align 8
  %137 = load i32, i32* %3, align 4
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %175

139:                                              ; preds = %120
  %140 = load i32*, i32** %6, align 8
  %141 = load i64, i64* @A_XGM_TX_CTRL, align 8
  %142 = load %struct.cmac*, %struct.cmac** %2, align 8
  %143 = getelementptr inbounds %struct.cmac, %struct.cmac* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %141, %144
  %146 = call i32 @t3_write_reg(i32* %140, i64 %145, i64 0)
  %147 = load i32*, i32** %6, align 8
  %148 = load i64, i64* @A_XGM_TX_CTRL, align 8
  %149 = load %struct.cmac*, %struct.cmac** %2, align 8
  %150 = getelementptr inbounds %struct.cmac, %struct.cmac* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %148, %151
  %153 = call i8* @t3_read_reg(i32* %147, i64 %152)
  %154 = load i32*, i32** %6, align 8
  %155 = load i64, i64* @A_XGM_TX_CTRL, align 8
  %156 = load %struct.cmac*, %struct.cmac** %2, align 8
  %157 = getelementptr inbounds %struct.cmac, %struct.cmac* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %155, %158
  %160 = load %struct.cmac*, %struct.cmac** %2, align 8
  %161 = getelementptr inbounds %struct.cmac, %struct.cmac* %160, i32 0, i32 5
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @t3_write_reg(i32* %154, i64 %159, i64 %162)
  %164 = load i32*, i32** %6, align 8
  %165 = load i64, i64* @A_XGM_TX_CTRL, align 8
  %166 = load %struct.cmac*, %struct.cmac** %2, align 8
  %167 = getelementptr inbounds %struct.cmac, %struct.cmac* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %165, %168
  %170 = call i8* @t3_read_reg(i32* %164, i64 %169)
  %171 = load %struct.cmac*, %struct.cmac** %2, align 8
  %172 = getelementptr inbounds %struct.cmac, %struct.cmac* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 8
  br label %184

175:                                              ; preds = %120
  %176 = load i32, i32* %3, align 4
  %177 = icmp eq i32 %176, 2
  br i1 %177, label %178, label %183

178:                                              ; preds = %175
  %179 = load %struct.cmac*, %struct.cmac** %2, align 8
  %180 = call i32 @t3_mac_reset(%struct.cmac* %179, i32 -1)
  %181 = load %struct.cmac*, %struct.cmac** %2, align 8
  %182 = getelementptr inbounds %struct.cmac, %struct.cmac* %181, i32 0, i32 2
  store i32 0, i32* %182, align 8
  br label %183

183:                                              ; preds = %178, %175
  br label %184

184:                                              ; preds = %183, %139
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i8* @t3_read_reg(i32*, i64) #1

declare dso_local i32 @G_TXSPI4SOPCNT(i8*) #1

declare dso_local i64 @macidx(%struct.cmac*) #1

declare dso_local i32 @t3_write_reg(i32*, i64, i64) #1

declare dso_local i32 @G_TXDROPCNTCH0RCVD(i8*) #1

declare dso_local i32 @t3_mac_reset(%struct.cmac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
