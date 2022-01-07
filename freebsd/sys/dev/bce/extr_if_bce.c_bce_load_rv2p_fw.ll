; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_load_rv2p_fw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_load_rv2p_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bce_softc = type { i32 }

@BCE_VERBOSE_RESET = common dso_local global i32 0, align 4
@RV2P_PROC2 = common dso_local global i64 0, align 8
@USABLE_RX_BD_PER_PAGE = common dso_local global i32 0, align 4
@BCE_RV2P_INSTR_HIGH = common dso_local global i32 0, align 4
@BCE_RV2P_INSTR_LOW = common dso_local global i32 0, align 4
@RV2P_PROC1 = common dso_local global i64 0, align 8
@BCE_RV2P_PROC1_ADDR_CMD_RDWR = common dso_local global i32 0, align 4
@BCE_RV2P_PROC1_ADDR_CMD = common dso_local global i32 0, align 4
@BCE_RV2P_PROC2_ADDR_CMD_RDWR = common dso_local global i32 0, align 4
@BCE_RV2P_PROC2_ADDR_CMD = common dso_local global i32 0, align 4
@BCE_RV2P_COMMAND = common dso_local global i32 0, align 4
@BCE_RV2P_COMMAND_PROC1_RESET = common dso_local global i64 0, align 8
@BCE_RV2P_COMMAND_PROC2_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bce_softc*, i64*, i64, i64)* @bce_load_rv2p_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bce_load_rv2p_fw(%struct.bce_softc* %0, i64* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.bce_softc*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.bce_softc* %0, %struct.bce_softc** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %12 = call i32 @DBENTER(i32 %11)
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @RV2P_PROC2, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @USABLE_RX_BD_PER_PAGE, align 4
  %18 = call i32 @BCE_RV2P_PROC2_CHG_MAX_BD_PAGE(i32 %17)
  br label %19

19:                                               ; preds = %16, %4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %64, %19
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %7, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %67

25:                                               ; preds = %20
  %26 = load %struct.bce_softc*, %struct.bce_softc** %5, align 8
  %27 = load i32, i32* @BCE_RV2P_INSTR_HIGH, align 4
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @REG_WR(%struct.bce_softc* %26, i32 %27, i64 %29)
  %31 = load i64*, i64** %6, align 8
  %32 = getelementptr inbounds i64, i64* %31, i32 1
  store i64* %32, i64** %6, align 8
  %33 = load %struct.bce_softc*, %struct.bce_softc** %5, align 8
  %34 = load i32, i32* @BCE_RV2P_INSTR_LOW, align 4
  %35 = load i64*, i64** %6, align 8
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @REG_WR(%struct.bce_softc* %33, i32 %34, i64 %36)
  %38 = load i64*, i64** %6, align 8
  %39 = getelementptr inbounds i64, i64* %38, i32 1
  store i64* %39, i64** %6, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @RV2P_PROC1, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %25
  %44 = load i32, i32* %9, align 4
  %45 = sdiv i32 %44, 8
  %46 = load i32, i32* @BCE_RV2P_PROC1_ADDR_CMD_RDWR, align 4
  %47 = or i32 %45, %46
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %10, align 8
  %49 = load %struct.bce_softc*, %struct.bce_softc** %5, align 8
  %50 = load i32, i32* @BCE_RV2P_PROC1_ADDR_CMD, align 4
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @REG_WR(%struct.bce_softc* %49, i32 %50, i64 %51)
  br label %63

53:                                               ; preds = %25
  %54 = load i32, i32* %9, align 4
  %55 = sdiv i32 %54, 8
  %56 = load i32, i32* @BCE_RV2P_PROC2_ADDR_CMD_RDWR, align 4
  %57 = or i32 %55, %56
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %10, align 8
  %59 = load %struct.bce_softc*, %struct.bce_softc** %5, align 8
  %60 = load i32, i32* @BCE_RV2P_PROC2_ADDR_CMD, align 4
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @REG_WR(%struct.bce_softc* %59, i32 %60, i64 %61)
  br label %63

63:                                               ; preds = %53, %43
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 8
  store i32 %66, i32* %9, align 4
  br label %20

67:                                               ; preds = %20
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @RV2P_PROC1, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load %struct.bce_softc*, %struct.bce_softc** %5, align 8
  %73 = load i32, i32* @BCE_RV2P_COMMAND, align 4
  %74 = load i64, i64* @BCE_RV2P_COMMAND_PROC1_RESET, align 8
  %75 = call i32 @REG_WR(%struct.bce_softc* %72, i32 %73, i64 %74)
  br label %81

76:                                               ; preds = %67
  %77 = load %struct.bce_softc*, %struct.bce_softc** %5, align 8
  %78 = load i32, i32* @BCE_RV2P_COMMAND, align 4
  %79 = load i64, i64* @BCE_RV2P_COMMAND_PROC2_RESET, align 8
  %80 = call i32 @REG_WR(%struct.bce_softc* %77, i32 %78, i64 %79)
  br label %81

81:                                               ; preds = %76, %71
  %82 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %83 = call i32 @DBEXIT(i32 %82)
  ret void
}

declare dso_local i32 @DBENTER(i32) #1

declare dso_local i32 @BCE_RV2P_PROC2_CHG_MAX_BD_PAGE(i32) #1

declare dso_local i32 @REG_WR(%struct.bce_softc*, i32, i64) #1

declare dso_local i32 @DBEXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
