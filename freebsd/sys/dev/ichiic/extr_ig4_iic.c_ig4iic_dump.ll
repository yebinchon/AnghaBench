; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ichiic/extr_ig4_iic.c_ig4iic_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ichiic/extr_ig4_iic.c_ig4iic_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"ig4iic register dump:\0A\00", align 1
@IG4_REG_CTL = common dso_local global i32 0, align 4
@IG4_REG_TAR_ADD = common dso_local global i32 0, align 4
@IG4_REG_SS_SCL_HCNT = common dso_local global i32 0, align 4
@IG4_REG_SS_SCL_LCNT = common dso_local global i32 0, align 4
@IG4_REG_FS_SCL_HCNT = common dso_local global i32 0, align 4
@IG4_REG_FS_SCL_LCNT = common dso_local global i32 0, align 4
@IG4_REG_INTR_STAT = common dso_local global i32 0, align 4
@IG4_REG_INTR_MASK = common dso_local global i32 0, align 4
@IG4_REG_RAW_INTR_STAT = common dso_local global i32 0, align 4
@IG4_REG_RX_TL = common dso_local global i32 0, align 4
@IG4_REG_TX_TL = common dso_local global i32 0, align 4
@IG4_REG_I2C_EN = common dso_local global i32 0, align 4
@IG4_REG_I2C_STA = common dso_local global i32 0, align 4
@IG4_REG_TXFLR = common dso_local global i32 0, align 4
@IG4_REG_RXFLR = common dso_local global i32 0, align 4
@IG4_REG_SDA_HOLD = common dso_local global i32 0, align 4
@IG4_REG_TX_ABRT_SOURCE = common dso_local global i32 0, align 4
@IG4_REG_SLV_DATA_NACK = common dso_local global i32 0, align 4
@IG4_REG_DMA_CTRL = common dso_local global i32 0, align 4
@IG4_REG_DMA_TDLR = common dso_local global i32 0, align 4
@IG4_REG_DMA_RDLR = common dso_local global i32 0, align 4
@IG4_REG_SDA_SETUP = common dso_local global i32 0, align 4
@IG4_REG_ENABLE_STATUS = common dso_local global i32 0, align 4
@IG4_REG_COMP_PARAM1 = common dso_local global i32 0, align 4
@IG4_REG_COMP_VER = common dso_local global i32 0, align 4
@IG4_ATOM = common dso_local global i64 0, align 8
@IG4_REG_COMP_TYPE = common dso_local global i32 0, align 4
@IG4_REG_CLK_PARMS = common dso_local global i32 0, align 4
@IG4_HASWELL = common dso_local global i64 0, align 8
@IG4_REG_RESETS_HSW = common dso_local global i32 0, align 4
@IG4_REG_GENERAL = common dso_local global i32 0, align 4
@IG4_SKYLAKE = common dso_local global i64 0, align 8
@IG4_REG_RESETS_SKL = common dso_local global i32 0, align 4
@IG4_REG_SW_LTR_VALUE = common dso_local global i32 0, align 4
@IG4_REG_AUTO_LTR_VALUE = common dso_local global i32 0, align 4
@IG4_REG_ACTIVE_LTR_VALUE = common dso_local global i32 0, align 4
@IG4_REG_IDLE_LTR_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @ig4iic_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ig4iic_dump(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @device_printf(i32 %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = load i32, i32* @IG4_REG_CTL, align 4
  %9 = call i32 @REGDUMP(%struct.TYPE_4__* %7, i32 %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = load i32, i32* @IG4_REG_TAR_ADD, align 4
  %12 = call i32 @REGDUMP(%struct.TYPE_4__* %10, i32 %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = load i32, i32* @IG4_REG_SS_SCL_HCNT, align 4
  %15 = call i32 @REGDUMP(%struct.TYPE_4__* %13, i32 %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = load i32, i32* @IG4_REG_SS_SCL_LCNT, align 4
  %18 = call i32 @REGDUMP(%struct.TYPE_4__* %16, i32 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = load i32, i32* @IG4_REG_FS_SCL_HCNT, align 4
  %21 = call i32 @REGDUMP(%struct.TYPE_4__* %19, i32 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = load i32, i32* @IG4_REG_FS_SCL_LCNT, align 4
  %24 = call i32 @REGDUMP(%struct.TYPE_4__* %22, i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %26 = load i32, i32* @IG4_REG_INTR_STAT, align 4
  %27 = call i32 @REGDUMP(%struct.TYPE_4__* %25, i32 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = load i32, i32* @IG4_REG_INTR_MASK, align 4
  %30 = call i32 @REGDUMP(%struct.TYPE_4__* %28, i32 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %32 = load i32, i32* @IG4_REG_RAW_INTR_STAT, align 4
  %33 = call i32 @REGDUMP(%struct.TYPE_4__* %31, i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = load i32, i32* @IG4_REG_RX_TL, align 4
  %36 = call i32 @REGDUMP(%struct.TYPE_4__* %34, i32 %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %38 = load i32, i32* @IG4_REG_TX_TL, align 4
  %39 = call i32 @REGDUMP(%struct.TYPE_4__* %37, i32 %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = load i32, i32* @IG4_REG_I2C_EN, align 4
  %42 = call i32 @REGDUMP(%struct.TYPE_4__* %40, i32 %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = load i32, i32* @IG4_REG_I2C_STA, align 4
  %45 = call i32 @REGDUMP(%struct.TYPE_4__* %43, i32 %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %47 = load i32, i32* @IG4_REG_TXFLR, align 4
  %48 = call i32 @REGDUMP(%struct.TYPE_4__* %46, i32 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %50 = load i32, i32* @IG4_REG_RXFLR, align 4
  %51 = call i32 @REGDUMP(%struct.TYPE_4__* %49, i32 %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %53 = load i32, i32* @IG4_REG_SDA_HOLD, align 4
  %54 = call i32 @REGDUMP(%struct.TYPE_4__* %52, i32 %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %56 = load i32, i32* @IG4_REG_TX_ABRT_SOURCE, align 4
  %57 = call i32 @REGDUMP(%struct.TYPE_4__* %55, i32 %56)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %59 = load i32, i32* @IG4_REG_SLV_DATA_NACK, align 4
  %60 = call i32 @REGDUMP(%struct.TYPE_4__* %58, i32 %59)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %62 = load i32, i32* @IG4_REG_DMA_CTRL, align 4
  %63 = call i32 @REGDUMP(%struct.TYPE_4__* %61, i32 %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %65 = load i32, i32* @IG4_REG_DMA_TDLR, align 4
  %66 = call i32 @REGDUMP(%struct.TYPE_4__* %64, i32 %65)
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %68 = load i32, i32* @IG4_REG_DMA_RDLR, align 4
  %69 = call i32 @REGDUMP(%struct.TYPE_4__* %67, i32 %68)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %71 = load i32, i32* @IG4_REG_SDA_SETUP, align 4
  %72 = call i32 @REGDUMP(%struct.TYPE_4__* %70, i32 %71)
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %74 = load i32, i32* @IG4_REG_ENABLE_STATUS, align 4
  %75 = call i32 @REGDUMP(%struct.TYPE_4__* %73, i32 %74)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %77 = load i32, i32* @IG4_REG_COMP_PARAM1, align 4
  %78 = call i32 @REGDUMP(%struct.TYPE_4__* %76, i32 %77)
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %80 = load i32, i32* @IG4_REG_COMP_VER, align 4
  %81 = call i32 @REGDUMP(%struct.TYPE_4__* %79, i32 %80)
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @IG4_ATOM, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %89 = load i32, i32* @IG4_REG_COMP_TYPE, align 4
  %90 = call i32 @REGDUMP(%struct.TYPE_4__* %88, i32 %89)
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %92 = load i32, i32* @IG4_REG_CLK_PARMS, align 4
  %93 = call i32 @REGDUMP(%struct.TYPE_4__* %91, i32 %92)
  br label %94

94:                                               ; preds = %87, %1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @IG4_HASWELL, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %94
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @IG4_ATOM, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %100, %94
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %108 = load i32, i32* @IG4_REG_RESETS_HSW, align 4
  %109 = call i32 @REGDUMP(%struct.TYPE_4__* %107, i32 %108)
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %111 = load i32, i32* @IG4_REG_GENERAL, align 4
  %112 = call i32 @REGDUMP(%struct.TYPE_4__* %110, i32 %111)
  br label %124

113:                                              ; preds = %100
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @IG4_SKYLAKE, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %121 = load i32, i32* @IG4_REG_RESETS_SKL, align 4
  %122 = call i32 @REGDUMP(%struct.TYPE_4__* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %113
  br label %124

124:                                              ; preds = %123, %106
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @IG4_HASWELL, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %124
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %132 = load i32, i32* @IG4_REG_SW_LTR_VALUE, align 4
  %133 = call i32 @REGDUMP(%struct.TYPE_4__* %131, i32 %132)
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %135 = load i32, i32* @IG4_REG_AUTO_LTR_VALUE, align 4
  %136 = call i32 @REGDUMP(%struct.TYPE_4__* %134, i32 %135)
  br label %151

137:                                              ; preds = %124
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i64 @IG4_HAS_ADDREGS(i64 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %137
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %145 = load i32, i32* @IG4_REG_ACTIVE_LTR_VALUE, align 4
  %146 = call i32 @REGDUMP(%struct.TYPE_4__* %144, i32 %145)
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %148 = load i32, i32* @IG4_REG_IDLE_LTR_VALUE, align 4
  %149 = call i32 @REGDUMP(%struct.TYPE_4__* %147, i32 %148)
  br label %150

150:                                              ; preds = %143, %137
  br label %151

151:                                              ; preds = %150, %130
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @REGDUMP(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @IG4_HAS_ADDREGS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
