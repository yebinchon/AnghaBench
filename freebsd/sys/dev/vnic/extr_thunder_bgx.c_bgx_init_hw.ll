; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_init_hw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@BGX_CMR_GLOBAL_CFG = common dso_local global i32 0, align 4
@CMR_GLOBAL_CFG_FCS_STRIP = common dso_local global i64 0, align 8
@BGX_CMR_BIST_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"BGX%d BIST failed\0A\00", align 1
@BGX_MODE_RXAUI = common dso_local global i32 0, align 4
@BGX_CMRX_CFG = common dso_local global i64 0, align 8
@lmac_count = common dso_local global i32 0, align 4
@BGX_CMR_TX_LMACS = common dso_local global i64 0, align 8
@BGX_CMR_RX_LMACS = common dso_local global i64 0, align 8
@BGX_CMR_CHAN_MSK_AND = common dso_local global i32 0, align 4
@MAX_BGX_CHANS_PER_LMAC = common dso_local global i64 0, align 8
@RX_DMAC_COUNT = common dso_local global i32 0, align 4
@BGX_CMR_RX_DMACX_CAM = common dso_local global i64 0, align 8
@RX_TRAFFIC_STEER_RULE_COUNT = common dso_local global i32 0, align 4
@BGX_CMR_RX_STREERING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bgx*)* @bgx_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgx_init_hw(%struct.bgx* %0) #0 {
  %2 = alloca %struct.bgx*, align 8
  %3 = alloca i32, align 4
  store %struct.bgx* %0, %struct.bgx** %2, align 8
  %4 = load %struct.bgx*, %struct.bgx** %2, align 8
  %5 = call i32 @bgx_set_num_ports(%struct.bgx* %4)
  %6 = load %struct.bgx*, %struct.bgx** %2, align 8
  %7 = load i32, i32* @BGX_CMR_GLOBAL_CFG, align 4
  %8 = load i64, i64* @CMR_GLOBAL_CFG_FCS_STRIP, align 8
  %9 = call i32 @bgx_reg_modify(%struct.bgx* %6, i32 0, i32 %7, i64 %8)
  %10 = load %struct.bgx*, %struct.bgx** %2, align 8
  %11 = load i32, i32* @BGX_CMR_BIST_STATUS, align 4
  %12 = call i64 @bgx_reg_read(%struct.bgx* %10, i32 0, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.bgx*, %struct.bgx** %2, align 8
  %16 = getelementptr inbounds %struct.bgx, %struct.bgx* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.bgx*, %struct.bgx** %2, align 8
  %19 = getelementptr inbounds %struct.bgx, %struct.bgx* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %14, %1
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %82, %22
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.bgx*, %struct.bgx** %2, align 8
  %26 = getelementptr inbounds %struct.bgx, %struct.bgx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %85

29:                                               ; preds = %23
  %30 = load %struct.bgx*, %struct.bgx** %2, align 8
  %31 = getelementptr inbounds %struct.bgx, %struct.bgx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @BGX_MODE_RXAUI, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %29
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct.bgx*, %struct.bgx** %2, align 8
  %40 = getelementptr inbounds %struct.bgx, %struct.bgx* %39, i32 0, i32 2
  store i32 14, i32* %40, align 8
  br label %44

41:                                               ; preds = %35
  %42 = load %struct.bgx*, %struct.bgx** %2, align 8
  %43 = getelementptr inbounds %struct.bgx, %struct.bgx* %42, i32 0, i32 2
  store i32 4, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.bgx*, %struct.bgx** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = load i64, i64* @BGX_CMRX_CFG, align 8
  %48 = load %struct.bgx*, %struct.bgx** %2, align 8
  %49 = getelementptr inbounds %struct.bgx, %struct.bgx* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 8
  %52 = load %struct.bgx*, %struct.bgx** %2, align 8
  %53 = getelementptr inbounds %struct.bgx, %struct.bgx* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %51, %54
  %56 = call i32 @bgx_reg_write(%struct.bgx* %45, i32 %46, i64 %47, i32 %55)
  br label %82

57:                                               ; preds = %29
  %58 = load %struct.bgx*, %struct.bgx** %2, align 8
  %59 = load i32, i32* %3, align 4
  %60 = load i64, i64* @BGX_CMRX_CFG, align 8
  %61 = load %struct.bgx*, %struct.bgx** %2, align 8
  %62 = getelementptr inbounds %struct.bgx, %struct.bgx* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 8
  %65 = load %struct.bgx*, %struct.bgx** %2, align 8
  %66 = getelementptr inbounds %struct.bgx, %struct.bgx* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %67, %68
  %70 = or i32 %64, %69
  %71 = call i32 @bgx_reg_write(%struct.bgx* %58, i32 %59, i64 %60, i32 %70)
  %72 = load i32, i32* @lmac_count, align 4
  %73 = load %struct.bgx*, %struct.bgx** %2, align 8
  %74 = getelementptr inbounds %struct.bgx, %struct.bgx* %73, i32 0, i32 3
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %72, i32* %79, align 4
  %80 = load i32, i32* @lmac_count, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* @lmac_count, align 4
  br label %82

82:                                               ; preds = %57, %44
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %3, align 4
  br label %23

85:                                               ; preds = %23
  %86 = load %struct.bgx*, %struct.bgx** %2, align 8
  %87 = load i64, i64* @BGX_CMR_TX_LMACS, align 8
  %88 = load %struct.bgx*, %struct.bgx** %2, align 8
  %89 = getelementptr inbounds %struct.bgx, %struct.bgx* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @bgx_reg_write(%struct.bgx* %86, i32 0, i64 %87, i32 %90)
  %92 = load %struct.bgx*, %struct.bgx** %2, align 8
  %93 = load i64, i64* @BGX_CMR_RX_LMACS, align 8
  %94 = load %struct.bgx*, %struct.bgx** %2, align 8
  %95 = getelementptr inbounds %struct.bgx, %struct.bgx* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @bgx_reg_write(%struct.bgx* %92, i32 0, i64 %93, i32 %96)
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %116, %85
  %99 = load i32, i32* %3, align 4
  %100 = load %struct.bgx*, %struct.bgx** %2, align 8
  %101 = getelementptr inbounds %struct.bgx, %struct.bgx* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %98
  %105 = load %struct.bgx*, %struct.bgx** %2, align 8
  %106 = load i32, i32* @BGX_CMR_CHAN_MSK_AND, align 4
  %107 = load i64, i64* @MAX_BGX_CHANS_PER_LMAC, align 8
  %108 = shl i64 1, %107
  %109 = sub i64 %108, 1
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* @MAX_BGX_CHANS_PER_LMAC, align 8
  %113 = mul i64 %111, %112
  %114 = shl i64 %109, %113
  %115 = call i32 @bgx_reg_modify(%struct.bgx* %105, i32 0, i32 %106, i64 %114)
  br label %116

116:                                              ; preds = %104
  %117 = load i32, i32* %3, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %3, align 4
  br label %98

119:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %132, %119
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* @RX_DMAC_COUNT, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %120
  %125 = load %struct.bgx*, %struct.bgx** %2, align 8
  %126 = load i64, i64* @BGX_CMR_RX_DMACX_CAM, align 8
  %127 = load i32, i32* %3, align 4
  %128 = mul nsw i32 %127, 8
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %126, %129
  %131 = call i32 @bgx_reg_write(%struct.bgx* %125, i32 0, i64 %130, i32 0)
  br label %132

132:                                              ; preds = %124
  %133 = load i32, i32* %3, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %3, align 4
  br label %120

135:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %148, %135
  %137 = load i32, i32* %3, align 4
  %138 = load i32, i32* @RX_TRAFFIC_STEER_RULE_COUNT, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %136
  %141 = load %struct.bgx*, %struct.bgx** %2, align 8
  %142 = load i64, i64* @BGX_CMR_RX_STREERING, align 8
  %143 = load i32, i32* %3, align 4
  %144 = mul nsw i32 %143, 8
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %142, %145
  %147 = call i32 @bgx_reg_write(%struct.bgx* %141, i32 0, i64 %146, i32 0)
  br label %148

148:                                              ; preds = %140
  %149 = load i32, i32* %3, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %3, align 4
  br label %136

151:                                              ; preds = %136
  ret void
}

declare dso_local i32 @bgx_set_num_ports(%struct.bgx*) #1

declare dso_local i32 @bgx_reg_modify(%struct.bgx*, i32, i32, i64) #1

declare dso_local i64 @bgx_reg_read(%struct.bgx*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @bgx_reg_write(%struct.bgx*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
