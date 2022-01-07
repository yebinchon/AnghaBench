; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc_subr.c_mmc_wait_for_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc_subr.c_mmc_wait_for_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_command = type { i32, i32, %struct.TYPE_2__*, %struct.mmc_request*, i64, %struct.mmc_request* }
%struct.TYPE_2__ = type { %struct.mmc_request* }
%struct.mmc_request = type { %struct.mmc_command* }
%struct.mmc_softc = type { i64, i32, i32, i32 }

@MMC_ERR_FAILED = common dso_local global i32 0, align 4
@MMC_ERR_NONE = common dso_local global i32 0, align 4
@LOG_PPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"CMD%d failed, RESULT: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_wait_for_cmd(i64 %0, i64 %1, %struct.mmc_command* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mmc_command*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mmc_request, align 8
  %10 = alloca %struct.mmc_softc*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.mmc_command* %2, %struct.mmc_command** %7, align 8
  store i32 %3, i32* %8, align 4
  br label %12

12:                                               ; preds = %53, %4
  %13 = call i32 @memset(%struct.mmc_request* %9, i32 0, i32 8)
  %14 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %15 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 5
  %16 = load %struct.mmc_request*, %struct.mmc_request** %15, align 8
  %17 = call i32 @memset(%struct.mmc_request* %16, i32 0, i32 8)
  %18 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %19 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %21 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %20, i32 0, i32 3
  store %struct.mmc_request* %9, %struct.mmc_request** %21, align 8
  %22 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %23 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %12
  %27 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %28 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.mmc_request* %9, %struct.mmc_request** %30, align 8
  br label %31

31:                                               ; preds = %26, %12
  %32 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %33 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %9, i32 0, i32 0
  store %struct.mmc_command* %32, %struct.mmc_command** %33, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @MMCBUS_WAIT_FOR_REQUEST(i64 %34, i64 %35, %struct.mmc_request* %9)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @MMC_ERR_FAILED, align 4
  store i32 %39, i32* %11, align 4
  br label %44

40:                                               ; preds = %31
  %41 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %42 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %40, %38
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @MMC_ERR_NONE, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %8, align 4
  %52 = icmp sgt i32 %50, 0
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i1 [ false, %45 ], [ %52, %49 ]
  br i1 %54, label %12, label %55

55:                                               ; preds = %53
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @MMC_ERR_NONE, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %88

59:                                               ; preds = %55
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %88

63:                                               ; preds = %59
  %64 = load i64, i64* %5, align 8
  %65 = call %struct.mmc_softc* @device_get_softc(i64 %64)
  store %struct.mmc_softc* %65, %struct.mmc_softc** %10, align 8
  %66 = load %struct.mmc_softc*, %struct.mmc_softc** %10, align 8
  %67 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %63
  %71 = load %struct.mmc_softc*, %struct.mmc_softc** %10, align 8
  %72 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %71, i32 0, i32 3
  %73 = load %struct.mmc_softc*, %struct.mmc_softc** %10, align 8
  %74 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %73, i32 0, i32 2
  %75 = load i32, i32* @LOG_PPS, align 4
  %76 = call i64 @ppsratecheck(i32* %72, i32* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %70
  %79 = load %struct.mmc_softc*, %struct.mmc_softc** %10, align 8
  %80 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %83 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @device_printf(i32 %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %78, %70, %63
  br label %88

88:                                               ; preds = %87, %59, %55
  %89 = load i32, i32* %11, align 4
  ret i32 %89
}

declare dso_local i32 @memset(%struct.mmc_request*, i32, i32) #1

declare dso_local i64 @MMCBUS_WAIT_FOR_REQUEST(i64, i64, %struct.mmc_request*) #1

declare dso_local %struct.mmc_softc* @device_get_softc(i64) #1

declare dso_local i64 @ppsratecheck(i32*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
