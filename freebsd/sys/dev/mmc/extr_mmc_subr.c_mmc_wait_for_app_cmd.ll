; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc_subr.c_mmc_wait_for_app_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc_subr.c_mmc_wait_for_app_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_command = type { i32, i32, i32, i32*, i32 }
%struct.mmc_softc = type { i64, i32, i32, i32 }

@MMC_APP_CMD = common dso_local global i32 0, align 4
@MMC_RSP_R1 = common dso_local global i32 0, align 4
@MMC_CMD_AC = common dso_local global i32 0, align 4
@MMC_ERR_FAILED = common dso_local global i32 0, align 4
@MMC_ERR_NONE = common dso_local global i32 0, align 4
@R1_APP_CMD = common dso_local global i32 0, align 4
@LOG_PPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ACMD%d failed, RESULT: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_wait_for_app_cmd(i64 %0, i64 %1, i64 %2, %struct.mmc_command* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mmc_command*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mmc_command, align 8
  %12 = alloca %struct.mmc_softc*, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.mmc_command* %3, %struct.mmc_command** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i64, i64* %6, align 8
  %15 = call %struct.mmc_softc* @device_get_softc(i64 %14)
  store %struct.mmc_softc* %15, %struct.mmc_softc** %12, align 8
  %16 = load %struct.mmc_softc*, %struct.mmc_softc** %12, align 8
  %17 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %17, align 8
  br label %20

20:                                               ; preds = %78, %5
  %21 = call i32 @memset(%struct.mmc_command* %11, i32 0, i32 32)
  %22 = load i32, i32* @MMC_APP_CMD, align 4
  %23 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 4
  store i32 %22, i32* %23, align 8
  %24 = load i64, i64* %8, align 8
  %25 = trunc i64 %24 to i32
  %26 = shl i32 %25, 16
  %27 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* @MMC_RSP_R1, align 4
  %29 = load i32, i32* @MMC_CMD_AC, align 4
  %30 = or i32 %28, %29
  %31 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @mmc_wait_for_cmd(i64 %32, i64 %33, %struct.mmc_command* %11, i32 0)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %20
  %37 = load i32, i32* @MMC_ERR_FAILED, align 4
  store i32 %37, i32* %13, align 4
  br label %41

38:                                               ; preds = %20
  %39 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %38, %36
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @MMC_ERR_NONE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @R1_APP_CMD, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* @MMC_ERR_FAILED, align 4
  store i32 %54, i32* %13, align 4
  br label %68

55:                                               ; preds = %45
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.mmc_command*, %struct.mmc_command** %9, align 8
  %59 = call i64 @mmc_wait_for_cmd(i64 %56, i64 %57, %struct.mmc_command* %58, i32 0)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @MMC_ERR_FAILED, align 4
  store i32 %62, i32* %13, align 4
  br label %67

63:                                               ; preds = %55
  %64 = load %struct.mmc_command*, %struct.mmc_command** %9, align 8
  %65 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %63, %61
  br label %68

68:                                               ; preds = %67, %53
  br label %69

69:                                               ; preds = %68, %41
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @MMC_ERR_NONE, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %10, align 4
  %77 = icmp sgt i32 %75, 0
  br label %78

78:                                               ; preds = %74, %70
  %79 = phi i1 [ false, %70 ], [ %77, %74 ]
  br i1 %79, label %20, label %80

80:                                               ; preds = %78
  %81 = load %struct.mmc_softc*, %struct.mmc_softc** %12, align 8
  %82 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, -1
  store i64 %84, i64* %82, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* @MMC_ERR_NONE, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %115

88:                                               ; preds = %80
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* %7, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %115

92:                                               ; preds = %88
  %93 = load %struct.mmc_softc*, %struct.mmc_softc** %12, align 8
  %94 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %92
  %98 = load %struct.mmc_softc*, %struct.mmc_softc** %12, align 8
  %99 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %98, i32 0, i32 3
  %100 = load %struct.mmc_softc*, %struct.mmc_softc** %12, align 8
  %101 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %100, i32 0, i32 2
  %102 = load i32, i32* @LOG_PPS, align 4
  %103 = call i64 @ppsratecheck(i32* %99, i32* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %97
  %106 = load %struct.mmc_softc*, %struct.mmc_softc** %12, align 8
  %107 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.mmc_command*, %struct.mmc_command** %9, align 8
  %110 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @device_printf(i32 %108, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %105, %97, %92
  br label %115

115:                                              ; preds = %114, %88, %80
  %116 = load i32, i32* %13, align 4
  ret i32 %116
}

declare dso_local %struct.mmc_softc* @device_get_softc(i64) #1

declare dso_local i32 @memset(%struct.mmc_command*, i32, i32) #1

declare dso_local i64 @mmc_wait_for_cmd(i64, i64, %struct.mmc_command*, i32) #1

declare dso_local i64 @ppsratecheck(i32*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
