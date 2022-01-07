; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_dumpregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_dumpregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"============== REGISTER DUMP ==============\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Sys addr: 0x%08x | Version:  0x%08x\0A\00", align 1
@SDHCI_DMA_ADDRESS = common dso_local global i32 0, align 4
@SDHCI_HOST_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Blk size: 0x%08x | Blk cnt:  0x%08x\0A\00", align 1
@SDHCI_BLOCK_SIZE = common dso_local global i32 0, align 4
@SDHCI_BLOCK_COUNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Argument: 0x%08x | Trn mode: 0x%08x\0A\00", align 1
@SDHCI_ARGUMENT = common dso_local global i32 0, align 4
@SDHCI_TRANSFER_MODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Present:  0x%08x | Host ctl: 0x%08x\0A\00", align 1
@SDHCI_PRESENT_STATE = common dso_local global i32 0, align 4
@SDHCI_HOST_CONTROL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Power:    0x%08x | Blk gap:  0x%08x\0A\00", align 1
@SDHCI_POWER_CONTROL = common dso_local global i32 0, align 4
@SDHCI_BLOCK_GAP_CONTROL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Wake-up:  0x%08x | Clock:    0x%08x\0A\00", align 1
@SDHCI_WAKE_UP_CONTROL = common dso_local global i32 0, align 4
@SDHCI_CLOCK_CONTROL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"Timeout:  0x%08x | Int stat: 0x%08x\0A\00", align 1
@SDHCI_TIMEOUT_CONTROL = common dso_local global i32 0, align 4
@SDHCI_INT_STATUS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"Int enab: 0x%08x | Sig enab: 0x%08x\0A\00", align 1
@SDHCI_INT_ENABLE = common dso_local global i32 0, align 4
@SDHCI_SIGNAL_ENABLE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"AC12 err: 0x%08x | Host ctl2:0x%08x\0A\00", align 1
@SDHCI_ACMD12_ERR = common dso_local global i32 0, align 4
@SDHCI_HOST_CONTROL2 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"Caps:     0x%08x | Caps2:    0x%08x\0A\00", align 1
@SDHCI_CAPABILITIES = common dso_local global i32 0, align 4
@SDHCI_CAPABILITIES2 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [37 x i8] c"Max curr: 0x%08x | ADMA err: 0x%08x\0A\00", align 1
@SDHCI_MAX_CURRENT = common dso_local global i32 0, align 4
@SDHCI_ADMA_ERR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [37 x i8] c"ADMA addr:0x%08x | Slot int: 0x%08x\0A\00", align 1
@SDHCI_ADMA_ADDRESS_LO = common dso_local global i32 0, align 4
@SDHCI_SLOT_INT_STATUS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [45 x i8] c"===========================================\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_slot*)* @sdhci_dumpregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_dumpregs(%struct.sdhci_slot* %0) #0 {
  %2 = alloca %struct.sdhci_slot*, align 8
  store %struct.sdhci_slot* %0, %struct.sdhci_slot** %2, align 8
  %3 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %4 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %6 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %7 = load i32, i32* @SDHCI_DMA_ADDRESS, align 4
  %8 = call i32 @RD4(%struct.sdhci_slot* %6, i32 %7)
  %9 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %10 = load i32, i32* @SDHCI_HOST_VERSION, align 4
  %11 = call i32 @RD2(%struct.sdhci_slot* %9, i32 %10)
  %12 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %8, i32 %11)
  %13 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %14 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %15 = load i32, i32* @SDHCI_BLOCK_SIZE, align 4
  %16 = call i32 @RD2(%struct.sdhci_slot* %14, i32 %15)
  %17 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %18 = load i32, i32* @SDHCI_BLOCK_COUNT, align 4
  %19 = call i32 @RD2(%struct.sdhci_slot* %17, i32 %18)
  %20 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %22 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %23 = load i32, i32* @SDHCI_ARGUMENT, align 4
  %24 = call i32 @RD4(%struct.sdhci_slot* %22, i32 %23)
  %25 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %26 = load i32, i32* @SDHCI_TRANSFER_MODE, align 4
  %27 = call i32 @RD2(%struct.sdhci_slot* %25, i32 %26)
  %28 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %30 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %31 = load i32, i32* @SDHCI_PRESENT_STATE, align 4
  %32 = call i32 @RD4(%struct.sdhci_slot* %30, i32 %31)
  %33 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %34 = load i32, i32* @SDHCI_HOST_CONTROL, align 4
  %35 = call i32 @RD1(%struct.sdhci_slot* %33, i32 %34)
  %36 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %38 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %39 = load i32, i32* @SDHCI_POWER_CONTROL, align 4
  %40 = call i32 @RD1(%struct.sdhci_slot* %38, i32 %39)
  %41 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %42 = load i32, i32* @SDHCI_BLOCK_GAP_CONTROL, align 4
  %43 = call i32 @RD1(%struct.sdhci_slot* %41, i32 %42)
  %44 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %46 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %47 = load i32, i32* @SDHCI_WAKE_UP_CONTROL, align 4
  %48 = call i32 @RD1(%struct.sdhci_slot* %46, i32 %47)
  %49 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %50 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %51 = call i32 @RD2(%struct.sdhci_slot* %49, i32 %50)
  %52 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %48, i32 %51)
  %53 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %54 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %55 = load i32, i32* @SDHCI_TIMEOUT_CONTROL, align 4
  %56 = call i32 @RD1(%struct.sdhci_slot* %54, i32 %55)
  %57 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %58 = load i32, i32* @SDHCI_INT_STATUS, align 4
  %59 = call i32 @RD4(%struct.sdhci_slot* %57, i32 %58)
  %60 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %56, i32 %59)
  %61 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %62 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %63 = load i32, i32* @SDHCI_INT_ENABLE, align 4
  %64 = call i32 @RD4(%struct.sdhci_slot* %62, i32 %63)
  %65 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %66 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %67 = call i32 @RD4(%struct.sdhci_slot* %65, i32 %66)
  %68 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %64, i32 %67)
  %69 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %70 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %71 = load i32, i32* @SDHCI_ACMD12_ERR, align 4
  %72 = call i32 @RD2(%struct.sdhci_slot* %70, i32 %71)
  %73 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %74 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %75 = call i32 @RD2(%struct.sdhci_slot* %73, i32 %74)
  %76 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %72, i32 %75)
  %77 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %78 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %79 = load i32, i32* @SDHCI_CAPABILITIES, align 4
  %80 = call i32 @RD4(%struct.sdhci_slot* %78, i32 %79)
  %81 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %82 = load i32, i32* @SDHCI_CAPABILITIES2, align 4
  %83 = call i32 @RD4(%struct.sdhci_slot* %81, i32 %82)
  %84 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %80, i32 %83)
  %85 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %86 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %87 = load i32, i32* @SDHCI_MAX_CURRENT, align 4
  %88 = call i32 @RD4(%struct.sdhci_slot* %86, i32 %87)
  %89 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %90 = load i32, i32* @SDHCI_ADMA_ERR, align 4
  %91 = call i32 @RD1(%struct.sdhci_slot* %89, i32 %90)
  %92 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %85, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i32 %88, i32 %91)
  %93 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %94 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %95 = load i32, i32* @SDHCI_ADMA_ADDRESS_LO, align 4
  %96 = call i32 @RD4(%struct.sdhci_slot* %94, i32 %95)
  %97 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %98 = load i32, i32* @SDHCI_SLOT_INT_STATUS, align 4
  %99 = call i32 @RD2(%struct.sdhci_slot* %97, i32 %98)
  %100 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %93, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 %96, i32 %99)
  %101 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %102 = call i32 (%struct.sdhci_slot*, i8*, ...) @slot_printf(%struct.sdhci_slot* %101, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0))
  ret void
}

declare dso_local i32 @slot_printf(%struct.sdhci_slot*, i8*, ...) #1

declare dso_local i32 @RD4(%struct.sdhci_slot*, i32) #1

declare dso_local i32 @RD2(%struct.sdhci_slot*, i32) #1

declare dso_local i32 @RD1(%struct.sdhci_slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
