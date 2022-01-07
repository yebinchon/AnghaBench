; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_codec_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_codec_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, i32 }

@GPIO_DIRECTION = common dso_local global i32 0, align 4
@RING_BUS_CTRL_B = common dso_local global i32 0, align 4
@SECOND_CODEC_ID_MASK = common dso_local global i32 0, align 4
@SDO_OUT_DEST_CTRL = common dso_local global i32 0, align 4
@COMMAND_ADDR_OUT = common dso_local global i32 0, align 4
@SDO_IN_DEST_CTRL = common dso_local global i32 0, align 4
@STATUS_ADDR_IN = common dso_local global i32 0, align 4
@RING_BUS_CTRL_A = common dso_local global i32 0, align 4
@IO_SRAM_ENABLE = common dso_local global i32 0, align 4
@GPO_PRIMARY_AC97 = common dso_local global i32 0, align 4
@GPIO_MASK = common dso_local global i32 0, align 4
@GPIO_DATA = common dso_local global i32 0, align 4
@SERIAL_AC_LINK_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Codec reset failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Codec reset retry\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*)* @m3_codec_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m3_codec_reset(%struct.sc_info* %0) #0 {
  %2 = alloca %struct.sc_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %7 = call i32 @M3_LOCK_ASSERT(%struct.sc_info* %6)
  br label %8

8:                                                ; preds = %118, %1
  %9 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %10 = load i32, i32* @GPIO_DIRECTION, align 4
  %11 = call i32 @m3_rd_2(%struct.sc_info* %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, 16
  store i32 %13, i32* %4, align 4
  %14 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %15 = load i32, i32* @RING_BUS_CTRL_B, align 4
  %16 = call i32 @m3_rd_2(%struct.sc_info* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %18 = load i32, i32* @RING_BUS_CTRL_B, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @SECOND_CODEC_ID_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = call i32 @m3_wr_2(%struct.sc_info* %17, i32 %18, i32 %22)
  %24 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %25 = load i32, i32* @SDO_OUT_DEST_CTRL, align 4
  %26 = call i32 @m3_rd_2(%struct.sc_info* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %28 = load i32, i32* @SDO_OUT_DEST_CTRL, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @COMMAND_ADDR_OUT, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = call i32 @m3_wr_2(%struct.sc_info* %27, i32 %28, i32 %32)
  %34 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %35 = load i32, i32* @SDO_IN_DEST_CTRL, align 4
  %36 = call i32 @m3_rd_2(%struct.sc_info* %34, i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %38 = load i32, i32* @SDO_IN_DEST_CTRL, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @STATUS_ADDR_IN, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = call i32 @m3_wr_2(%struct.sc_info* %37, i32 %38, i32 %42)
  %44 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %45 = load i32, i32* @RING_BUS_CTRL_A, align 4
  %46 = load i32, i32* @IO_SRAM_ENABLE, align 4
  %47 = call i32 @m3_wr_2(%struct.sc_info* %44, i32 %45, i32 %46)
  %48 = call i32 @DELAY(i32 20)
  %49 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %50 = load i32, i32* @GPIO_DIRECTION, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @GPO_PRIMARY_AC97, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = call i32 @m3_wr_2(%struct.sc_info* %49, i32 %50, i32 %54)
  %56 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %57 = load i32, i32* @GPIO_MASK, align 4
  %58 = load i32, i32* @GPO_PRIMARY_AC97, align 4
  %59 = xor i32 %58, -1
  %60 = call i32 @m3_wr_2(%struct.sc_info* %56, i32 %57, i32 %59)
  %61 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %62 = load i32, i32* @GPIO_DATA, align 4
  %63 = call i32 @m3_wr_2(%struct.sc_info* %61, i32 %62, i32 0)
  %64 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %65 = load i32, i32* @GPIO_DIRECTION, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @GPO_PRIMARY_AC97, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @m3_wr_2(%struct.sc_info* %64, i32 %65, i32 %68)
  %70 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %71 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %72, 1000
  %74 = call i32 @DELAY(i32 %73)
  %75 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %76 = load i32, i32* @GPIO_DATA, align 4
  %77 = load i32, i32* @GPO_PRIMARY_AC97, align 4
  %78 = call i32 @m3_wr_2(%struct.sc_info* %75, i32 %76, i32 %77)
  %79 = call i32 @DELAY(i32 5)
  %80 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %81 = load i32, i32* @RING_BUS_CTRL_A, align 4
  %82 = load i32, i32* @IO_SRAM_ENABLE, align 4
  %83 = load i32, i32* @SERIAL_AC_LINK_ENABLE, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @m3_wr_2(%struct.sc_info* %80, i32 %81, i32 %84)
  %86 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %87 = load i32, i32* @GPIO_MASK, align 4
  %88 = call i32 @m3_wr_2(%struct.sc_info* %86, i32 %87, i32 -1)
  %89 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %90 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %91, 1000
  %93 = call i32 @DELAY(i32 %92)
  %94 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %95 = call i32 @m3_rdcd(i32* null, %struct.sc_info* %94, i32 124)
  store i32 %95, i32* %3, align 4
  %96 = load i32, i32* %3, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %8
  %99 = load i32, i32* %3, align 4
  %100 = icmp eq i32 %99, 65535
  br i1 %100, label %101, label %116

101:                                              ; preds = %98, %8
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp sgt i32 %104, 3
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %108 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @device_printf(i32 %109, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %121

111:                                              ; preds = %101
  %112 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %113 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @device_printf(i32 %114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %117

116:                                              ; preds = %98
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %116, %111
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %8, label %121

121:                                              ; preds = %118, %106
  ret void
}

declare dso_local i32 @M3_LOCK_ASSERT(%struct.sc_info*) #1

declare dso_local i32 @m3_rd_2(%struct.sc_info*, i32) #1

declare dso_local i32 @m3_wr_2(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @m3_rdcd(i32*, %struct.sc_info*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
