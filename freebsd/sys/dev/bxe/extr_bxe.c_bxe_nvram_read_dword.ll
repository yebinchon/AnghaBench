; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_nvram_read_dword.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_nvram_read_dword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@MCPR_NVM_COMMAND_DOIT = common dso_local global i32 0, align 4
@MCP_REG_MCPR_NVM_COMMAND = common dso_local global i32 0, align 4
@MCPR_NVM_COMMAND_DONE = common dso_local global i32 0, align 4
@MCP_REG_MCPR_NVM_ADDR = common dso_local global i32 0, align 4
@MCPR_NVM_ADDR_NVM_ADDR_VALUE = common dso_local global i32 0, align 4
@NVRAM_TIMEOUT_COUNT = common dso_local global i32 0, align 4
@MCP_REG_MCPR_NVM_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"nvram read timeout expired (offset 0x%x cmd_flags 0x%x val 0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i32, i32*, i32)* @bxe_nvram_read_dword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_nvram_read_dword(%struct.bxe_softc* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @MCPR_NVM_COMMAND_DOIT, align 4
  %14 = load i32, i32* %8, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %8, align 4
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %17 = load i32, i32* @MCP_REG_MCPR_NVM_COMMAND, align 4
  %18 = load i32, i32* @MCPR_NVM_COMMAND_DONE, align 4
  %19 = call i32 @REG_WR(%struct.bxe_softc* %16, i32 %17, i32 %18)
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %21 = load i32, i32* @MCP_REG_MCPR_NVM_ADDR, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @MCPR_NVM_ADDR_NVM_ADDR_VALUE, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @REG_WR(%struct.bxe_softc* %20, i32 %21, i32 %24)
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %27 = load i32, i32* @MCP_REG_MCPR_NVM_COMMAND, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @REG_WR(%struct.bxe_softc* %26, i32 %27, i32 %28)
  %30 = load i32, i32* @NVRAM_TIMEOUT_COUNT, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %32 = call i64 @CHIP_REV_IS_SLOW(%struct.bxe_softc* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load i32, i32* %9, align 4
  %36 = mul nsw i32 %35, 100
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %34, %4
  %38 = load i32*, i32** %7, align 8
  store i32 0, i32* %38, align 4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %60, %37
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %39
  %44 = call i32 @DELAY(i32 5)
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %46 = load i32, i32* @MCP_REG_MCPR_NVM_COMMAND, align 4
  %47 = call i32 @REG_RD(%struct.bxe_softc* %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @MCPR_NVM_COMMAND_DONE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %43
  %53 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %54 = load i32, i32* @MCP_REG_MCPR_NVM_READ, align 4
  %55 = call i32 @REG_RD(%struct.bxe_softc* %53, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @htobe32(i32 %56)
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  store i32 0, i32* %11, align 4
  br label %63

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %39

63:                                               ; preds = %52, %39
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @BLOGE(%struct.bxe_softc* %67, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %63
  %73 = load i32, i32* %11, align 4
  ret i32 %73
}

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i64 @CHIP_REV_IS_SLOW(%struct.bxe_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
