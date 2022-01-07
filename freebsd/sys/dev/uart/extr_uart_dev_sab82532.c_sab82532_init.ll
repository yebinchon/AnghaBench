; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i64, i32 }

@DEFAULT_RCLK = common dso_local global i64 0, align 8
@SAB_PCR = common dso_local global i32 0, align 4
@SAB_PVR_DTR_A = common dso_local global i32 0, align 4
@SAB_PVR_DTR_B = common dso_local global i32 0, align 4
@SAB_PVR_MAGIC = common dso_local global i32 0, align 4
@SAB_PIM = common dso_local global i32 0, align 4
@SAB_IPC = common dso_local global i32 0, align 4
@SAB_IPC_ICPL = common dso_local global i32 0, align 4
@SAB_PVR = common dso_local global i32 0, align 4
@SAB_CCR0 = common dso_local global i32 0, align 4
@SAB_CCR0_MCE = common dso_local global i32 0, align 4
@SAB_CCR0_SC_NRZ = common dso_local global i32 0, align 4
@SAB_CCR0_SM_ASYNC = common dso_local global i32 0, align 4
@SAB_CCR1 = common dso_local global i32 0, align 4
@SAB_CCR1_ODS = common dso_local global i32 0, align 4
@SAB_CCR1_BCR = common dso_local global i32 0, align 4
@SAB_CCR1_CM_7 = common dso_local global i32 0, align 4
@SAB_CCR2 = common dso_local global i32 0, align 4
@SAB_CCR2_BDF = common dso_local global i32 0, align 4
@SAB_CCR2_SSEL = common dso_local global i32 0, align 4
@SAB_CCR2_TOE = common dso_local global i32 0, align 4
@SAB_CCR3 = common dso_local global i32 0, align 4
@SAB_CCR4 = common dso_local global i32 0, align 4
@SAB_CCR4_MCK4 = common dso_local global i32 0, align 4
@SAB_CCR4_EBRG = common dso_local global i32 0, align 4
@SAB_CCR4_ICD = common dso_local global i32 0, align 4
@SAB_MODE = common dso_local global i32 0, align 4
@SAB_MODE_FCTS = common dso_local global i32 0, align 4
@SAB_MODE_RTS = common dso_local global i32 0, align 4
@SAB_MODE_RAC = common dso_local global i32 0, align 4
@SAB_RFC = common dso_local global i32 0, align 4
@SAB_RFC_DPS = common dso_local global i32 0, align 4
@SAB_RFC_RFDF = common dso_local global i32 0, align 4
@SAB_RFC_RFTH_32CHAR = common dso_local global i32 0, align 4
@SAB_IMR0 = common dso_local global i32 0, align 4
@SAB_IMR0_TCD = common dso_local global i64 0, align 8
@SAB_IMR1 = common dso_local global i32 0, align 4
@SAB_ISR0 = common dso_local global i32 0, align 4
@SAB_ISR1 = common dso_local global i32 0, align 4
@UART_FLUSH_TRANSMITTER = common dso_local global i32 0, align 4
@UART_FLUSH_RECEIVER = common dso_local global i32 0, align 4
@SAB_CCR0_PU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_bas*, i32, i32, i32, i32)* @sab82532_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sab82532_init(%struct.uart_bas* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.uart_bas*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %14 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load i64, i64* @DEFAULT_RCLK, align 8
  %19 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %20 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %17, %5
  %22 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %23 = load i32, i32* @SAB_PCR, align 4
  %24 = load i32, i32* @SAB_PVR_DTR_A, align 4
  %25 = load i32, i32* @SAB_PVR_DTR_B, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SAB_PVR_MAGIC, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = call i32 @uart_setreg(%struct.uart_bas* %22, i32 %23, i32 %29)
  %31 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %32 = call i32 @uart_barrier(%struct.uart_bas* %31)
  %33 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %34 = load i32, i32* @SAB_PIM, align 4
  %35 = call i32 @uart_setreg(%struct.uart_bas* %33, i32 %34, i32 255)
  %36 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %37 = call i32 @uart_barrier(%struct.uart_bas* %36)
  %38 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %39 = load i32, i32* @SAB_IPC, align 4
  %40 = load i32, i32* @SAB_IPC_ICPL, align 4
  %41 = call i32 @uart_setreg(%struct.uart_bas* %38, i32 %39, i32 %40)
  %42 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %43 = call i32 @uart_barrier(%struct.uart_bas* %42)
  %44 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %45 = load i32, i32* @SAB_PVR, align 4
  %46 = call i32 @uart_getreg(%struct.uart_bas* %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %48 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %60 [
    i32 1, label %50
    i32 2, label %55
  ]

50:                                               ; preds = %21
  %51 = load i32, i32* @SAB_PVR_DTR_A, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %12, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %12, align 4
  br label %60

55:                                               ; preds = %21
  %56 = load i32, i32* @SAB_PVR_DTR_B, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %12, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %21, %55, %50
  %61 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %62 = load i32, i32* @SAB_PVR, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @SAB_PVR_MAGIC, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @uart_setreg(%struct.uart_bas* %61, i32 %62, i32 %65)
  %67 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %68 = call i32 @uart_barrier(%struct.uart_bas* %67)
  %69 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %70 = load i32, i32* @SAB_CCR0, align 4
  %71 = call i32 @uart_setreg(%struct.uart_bas* %69, i32 %70, i32 0)
  %72 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %73 = call i32 @uart_barrier(%struct.uart_bas* %72)
  %74 = load i32, i32* @SAB_CCR0_MCE, align 4
  %75 = load i32, i32* @SAB_CCR0_SC_NRZ, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @SAB_CCR0_SM_ASYNC, align 4
  %78 = or i32 %76, %77
  store i32 %78, i32* %11, align 4
  %79 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %80 = load i32, i32* @SAB_CCR0, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @uart_setreg(%struct.uart_bas* %79, i32 %80, i32 %81)
  %83 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %84 = call i32 @uart_barrier(%struct.uart_bas* %83)
  %85 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %86 = load i32, i32* @SAB_CCR1, align 4
  %87 = load i32, i32* @SAB_CCR1_ODS, align 4
  %88 = load i32, i32* @SAB_CCR1_BCR, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @SAB_CCR1_CM_7, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @uart_setreg(%struct.uart_bas* %85, i32 %86, i32 %91)
  %93 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %94 = call i32 @uart_barrier(%struct.uart_bas* %93)
  %95 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %96 = load i32, i32* @SAB_CCR2, align 4
  %97 = load i32, i32* @SAB_CCR2_BDF, align 4
  %98 = load i32, i32* @SAB_CCR2_SSEL, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @SAB_CCR2_TOE, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @uart_setreg(%struct.uart_bas* %95, i32 %96, i32 %101)
  %103 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %104 = call i32 @uart_barrier(%struct.uart_bas* %103)
  %105 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %106 = load i32, i32* @SAB_CCR3, align 4
  %107 = call i32 @uart_setreg(%struct.uart_bas* %105, i32 %106, i32 0)
  %108 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %109 = call i32 @uart_barrier(%struct.uart_bas* %108)
  %110 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %111 = load i32, i32* @SAB_CCR4, align 4
  %112 = load i32, i32* @SAB_CCR4_MCK4, align 4
  %113 = load i32, i32* @SAB_CCR4_EBRG, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @SAB_CCR4_ICD, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @uart_setreg(%struct.uart_bas* %110, i32 %111, i32 %116)
  %118 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %119 = call i32 @uart_barrier(%struct.uart_bas* %118)
  %120 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %121 = load i32, i32* @SAB_MODE, align 4
  %122 = load i32, i32* @SAB_MODE_FCTS, align 4
  %123 = load i32, i32* @SAB_MODE_RTS, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @SAB_MODE_RAC, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @uart_setreg(%struct.uart_bas* %120, i32 %121, i32 %126)
  %128 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %129 = call i32 @uart_barrier(%struct.uart_bas* %128)
  %130 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %131 = load i32, i32* @SAB_RFC, align 4
  %132 = load i32, i32* @SAB_RFC_DPS, align 4
  %133 = load i32, i32* @SAB_RFC_RFDF, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @SAB_RFC_RFTH_32CHAR, align 4
  %136 = or i32 %134, %135
  %137 = call i32 @uart_setreg(%struct.uart_bas* %130, i32 %131, i32 %136)
  %138 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %139 = call i32 @uart_barrier(%struct.uart_bas* %138)
  %140 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @sab82532_param(%struct.uart_bas* %140, i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %147 = load i32, i32* @SAB_IMR0, align 4
  %148 = load i64, i64* @SAB_IMR0_TCD, align 8
  %149 = xor i64 %148, -1
  %150 = trunc i64 %149 to i8
  %151 = zext i8 %150 to i32
  %152 = call i32 @uart_setreg(%struct.uart_bas* %146, i32 %147, i32 %151)
  %153 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %154 = load i32, i32* @SAB_IMR1, align 4
  %155 = call i32 @uart_setreg(%struct.uart_bas* %153, i32 %154, i32 255)
  %156 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %157 = call i32 @uart_barrier(%struct.uart_bas* %156)
  %158 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %159 = load i32, i32* @SAB_ISR0, align 4
  %160 = call i32 @uart_getreg(%struct.uart_bas* %158, i32 %159)
  %161 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %162 = load i32, i32* @SAB_ISR1, align 4
  %163 = call i32 @uart_getreg(%struct.uart_bas* %161, i32 %162)
  %164 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %165 = call i32 @uart_barrier(%struct.uart_bas* %164)
  %166 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %167 = load i32, i32* @UART_FLUSH_TRANSMITTER, align 4
  %168 = load i32, i32* @UART_FLUSH_RECEIVER, align 4
  %169 = or i32 %167, %168
  %170 = call i32 @sab82532_flush(%struct.uart_bas* %166, i32 %169)
  %171 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %172 = load i32, i32* @SAB_CCR0, align 4
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* @SAB_CCR0_PU, align 4
  %175 = or i32 %173, %174
  %176 = call i32 @uart_setreg(%struct.uart_bas* %171, i32 %172, i32 %175)
  %177 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %178 = call i32 @uart_barrier(%struct.uart_bas* %177)
  ret void
}

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @sab82532_param(%struct.uart_bas*, i32, i32, i32, i32) #1

declare dso_local i32 @sab82532_flush(%struct.uart_bas*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
