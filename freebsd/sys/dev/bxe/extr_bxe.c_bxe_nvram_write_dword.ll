; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_nvram_write_dword.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_nvram_write_dword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@MCPR_NVM_COMMAND_DOIT = common dso_local global i32 0, align 4
@MCPR_NVM_COMMAND_WR = common dso_local global i32 0, align 4
@MCP_REG_MCPR_NVM_COMMAND = common dso_local global i32 0, align 4
@MCPR_NVM_COMMAND_DONE = common dso_local global i32 0, align 4
@MCP_REG_MCPR_NVM_WRITE = common dso_local global i32 0, align 4
@MCP_REG_MCPR_NVM_ADDR = common dso_local global i32 0, align 4
@MCPR_NVM_ADDR_NVM_ADDR_VALUE = common dso_local global i32 0, align 4
@NVRAM_TIMEOUT_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"nvram write timeout expired (offset 0x%x cmd_flags 0x%x val 0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i32, i32, i32)* @bxe_nvram_write_dword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_nvram_write_dword(%struct.bxe_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @MCPR_NVM_COMMAND_DOIT, align 4
  %13 = load i32, i32* @MCPR_NVM_COMMAND_WR, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %8, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %8, align 4
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %18 = load i32, i32* @MCP_REG_MCPR_NVM_COMMAND, align 4
  %19 = load i32, i32* @MCPR_NVM_COMMAND_DONE, align 4
  %20 = call i32 @REG_WR(%struct.bxe_softc* %17, i32 %18, i32 %19)
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %22 = load i32, i32* @MCP_REG_MCPR_NVM_WRITE, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @REG_WR(%struct.bxe_softc* %21, i32 %22, i32 %23)
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %26 = load i32, i32* @MCP_REG_MCPR_NVM_ADDR, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @MCPR_NVM_ADDR_NVM_ADDR_VALUE, align 4
  %29 = and i32 %27, %28
  %30 = call i32 @REG_WR(%struct.bxe_softc* %25, i32 %26, i32 %29)
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %32 = load i32, i32* @MCP_REG_MCPR_NVM_COMMAND, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @REG_WR(%struct.bxe_softc* %31, i32 %32, i32 %33)
  %35 = load i32, i32* @NVRAM_TIMEOUT_COUNT, align 4
  store i32 %35, i32* %9, align 4
  %36 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %37 = call i64 @CHIP_REV_IS_SLOW(%struct.bxe_softc* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %4
  %40 = load i32, i32* %9, align 4
  %41 = mul nsw i32 %40, 100
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %39, %4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %58, %42
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = call i32 @DELAY(i32 5)
  %49 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %50 = load i32, i32* @MCP_REG_MCPR_NVM_COMMAND, align 4
  %51 = call i32 @REG_RD(%struct.bxe_softc* %49, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @MCPR_NVM_COMMAND_DONE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  br label %61

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %43

61:                                               ; preds = %56, %43
  %62 = load i32, i32* %11, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @BLOGE(%struct.bxe_softc* %65, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %64, %61
  %71 = load i32, i32* %11, align 4
  ret i32 %71
}

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i64 @CHIP_REV_IS_SLOW(%struct.bxe_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
