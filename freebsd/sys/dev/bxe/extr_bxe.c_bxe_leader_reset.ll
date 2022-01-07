; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_leader_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_leader_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i64 }

@DRV_MSG_CODE_LOAD_REQ = common dso_local global i32 0, align 4
@DRV_MSG_CODE_LOAD_REQ_WITH_LFA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"MCP response failure, aborting\0A\00", align 1
@FW_MSG_CODE_DRV_LOAD_COMMON_CHIP = common dso_local global i64 0, align 8
@FW_MSG_CODE_DRV_LOAD_COMMON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"MCP unexpected response, aborting\0A\00", align 1
@DRV_MSG_CODE_LOAD_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Something bad occurred on engine %d!\0A\00", align 1
@DRV_MSG_CODE_UNLOAD_REQ_WOL_MCP = common dso_local global i32 0, align 4
@DRV_MSG_CODE_UNLOAD_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_leader_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_leader_reset(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %7 = call i64 @bxe_reset_is_global(%struct.bxe_softc* %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %45, label %10

10:                                               ; preds = %1
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %12 = call i32 @BXE_NOMCP(%struct.bxe_softc* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %45, label %14

14:                                               ; preds = %10
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %16 = load i32, i32* @DRV_MSG_CODE_LOAD_REQ, align 4
  %17 = load i32, i32* @DRV_MSG_CODE_LOAD_REQ_WITH_LFA, align 4
  %18 = call i64 @bxe_fw_command(%struct.bxe_softc* %15, i32 %16, i32 %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %23 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %79

24:                                               ; preds = %14
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @FW_MSG_CODE_DRV_LOAD_COMMON_CHIP, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @FW_MSG_CODE_DRV_LOAD_COMMON, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %34 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %64

35:                                               ; preds = %28, %24
  %36 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %37 = load i32, i32* @DRV_MSG_CODE_LOAD_DONE, align 4
  %38 = call i64 @bxe_fw_command(%struct.bxe_softc* %36, i32 %37, i32 0)
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %43 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %64

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %10, %1
  %46 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @bxe_process_kill(%struct.bxe_softc* %46, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %52 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %53 = call i32 @SC_PATH(%struct.bxe_softc* %52)
  %54 = call i32 (%struct.bxe_softc*, i8*, ...) @BLOGE(%struct.bxe_softc* %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  store i32 -1, i32* %3, align 4
  br label %64

55:                                               ; preds = %45
  %56 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %57 = call i32 @bxe_set_reset_done(%struct.bxe_softc* %56)
  %58 = load i64, i64* %4, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %62 = call i32 @bxe_clear_reset_global(%struct.bxe_softc* %61)
  br label %63

63:                                               ; preds = %60, %55
  br label %64

64:                                               ; preds = %63, %50, %41, %32
  %65 = load i64, i64* %4, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %64
  %68 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %69 = call i32 @BXE_NOMCP(%struct.bxe_softc* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %67
  %72 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %73 = load i32, i32* @DRV_MSG_CODE_UNLOAD_REQ_WOL_MCP, align 4
  %74 = call i64 @bxe_fw_command(%struct.bxe_softc* %72, i32 %73, i32 0)
  %75 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %76 = load i32, i32* @DRV_MSG_CODE_UNLOAD_DONE, align 4
  %77 = call i64 @bxe_fw_command(%struct.bxe_softc* %75, i32 %76, i32 0)
  br label %78

78:                                               ; preds = %71, %67, %64
  br label %79

79:                                               ; preds = %78, %21
  %80 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %81 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  %82 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %83 = call i32 @bxe_release_leader_lock(%struct.bxe_softc* %82)
  %84 = call i32 (...) @mb()
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i64 @bxe_reset_is_global(%struct.bxe_softc*) #1

declare dso_local i32 @BXE_NOMCP(%struct.bxe_softc*) #1

declare dso_local i64 @bxe_fw_command(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, ...) #1

declare dso_local i64 @bxe_process_kill(%struct.bxe_softc*, i64) #1

declare dso_local i32 @SC_PATH(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_set_reset_done(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_clear_reset_global(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_release_leader_lock(%struct.bxe_softc*) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
