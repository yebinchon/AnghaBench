; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_init.c_pqisrc_check_pqimode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_init.c_pqisrc_check_pqimode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@PQISRC_PQIMODE_READY_TIMEOUT = common dso_local global i32 0, align 4
@PQI_SIGNATURE = common dso_local global i32 0, align 4
@PQISRC_PQI_DEVICE_SIGNATURE = common dso_local global i32 0, align 4
@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@PQISRC_MODE_READY_POLL_INTERVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"PQI Signature is invalid\0A\00", align 1
@PQI_STATUS_TIMEOUT = common dso_local global i32 0, align 4
@PQI_ADMINQ_CONFIG = common dso_local global i32 0, align 4
@PQI_ADMIN_QUEUE_CONF_FUNC_STATUS_IDLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"PQI device is not in IDLE state\0A\00", align 1
@PQI_DEV_STATUS = common dso_local global i32 0, align 4
@PQI_DEV_STATE_AT_INIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"PQI Registers are not ready\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"OUT failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqisrc_check_pqimode(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %7 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %7, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @PQISRC_PQIMODE_READY_TIMEOUT, align 4
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %27, %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load i32, i32* @PQI_SIGNATURE, align 4
  %17 = call i64 @PCI_MEM_GET64(%struct.TYPE_7__* %11, i32* %15, i32 %16)
  %18 = call i32 @LE_64(i64 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @PQISRC_PQI_DEVICE_SIGNATURE, align 4
  %20 = call i64 @memcmp(i32* %6, i32 %19, i32 4)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %10
  %23 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %23, i32* %4, align 4
  br label %31

24:                                               ; preds = %10
  %25 = load i32, i32* @PQISRC_MODE_READY_POLL_INTERVAL, align 4
  %26 = call i32 @OS_SLEEP(i32 %25)
  br label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %5, align 4
  %30 = icmp ne i32 %28, 0
  br i1 %30, label %10, label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @PRINT_PQI_SIGNATURE(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = call i32 @DBG_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @PQI_STATUS_TIMEOUT, align 4
  store i32 %38, i32* %4, align 4
  br label %80

39:                                               ; preds = %31
  %40 = load i32, i32* @PQISRC_PQIMODE_READY_TIMEOUT, align 4
  store i32 %40, i32* %5, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* @PQI_ADMINQ_CONFIG, align 4
  %47 = call i64 @PCI_MEM_GET64(%struct.TYPE_7__* %41, i32* %45, i32 %46)
  %48 = load i64, i64* @PQI_ADMIN_QUEUE_CONF_FUNC_STATUS_IDLE, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @COND_WAIT(i32 %50, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %39
  %56 = call i32 @DBG_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* @PQI_STATUS_TIMEOUT, align 4
  store i32 %57, i32* %4, align 4
  br label %80

58:                                               ; preds = %39
  %59 = load i32, i32* @PQISRC_PQIMODE_READY_TIMEOUT, align 4
  store i32 %59, i32* %5, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* @PQI_DEV_STATUS, align 4
  %66 = call i32 @PCI_MEM_GET32(%struct.TYPE_7__* %60, i32* %64, i32 %65)
  %67 = call i32 @LE_32(i32 %66)
  %68 = load i32, i32* @PQI_DEV_STATE_AT_INIT, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @COND_WAIT(i32 %69, i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %58
  %75 = call i32 @DBG_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* @PQI_STATUS_TIMEOUT, align 4
  store i32 %76, i32* %4, align 4
  br label %80

77:                                               ; preds = %58
  %78 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %83

80:                                               ; preds = %74, %55, %36
  %81 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @LE_64(i64) #1

declare dso_local i64 @PCI_MEM_GET64(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @OS_SLEEP(i32) #1

declare dso_local i32 @PRINT_PQI_SIGNATURE(i32) #1

declare dso_local i32 @DBG_ERR(i8*) #1

declare dso_local i32 @COND_WAIT(i32, i32) #1

declare dso_local i32 @LE_32(i32) #1

declare dso_local i32 @PCI_MEM_GET32(%struct.TYPE_7__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
