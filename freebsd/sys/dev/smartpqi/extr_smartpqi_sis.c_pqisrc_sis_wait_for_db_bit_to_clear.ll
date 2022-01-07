; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_sis.c_pqisrc_sis_wait_for_db_bit_to_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_sis.c_pqisrc_sis_wait_for_db_bit_to_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@LEGACY_SIS_IDBR = common dso_local global i32 0, align 4
@PQI_CTRL_KERNEL_PANIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"controller kernel panic\0A\00", align 1
@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4
@SIS_DB_BIT_CLEAR_TIMEOUT_CNT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"door-bell reg bit 0x%x not cleared\0A\00", align 1
@PQI_STATUS_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqisrc_sis_wait_for_db_bit_to_clear(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %8, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %2, %42
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* @LEGACY_SIS_IDBR, align 4
  %17 = call i32 @PCI_MEM_GET32(%struct.TYPE_7__* %11, i32* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  br label %44

23:                                               ; preds = %10
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = call i32 @GET_FW_STATUS(%struct.TYPE_7__* %24)
  %26 = load i32, i32* @PQI_CTRL_KERNEL_PANIC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %31, i32* %5, align 4
  br label %44

32:                                               ; preds = %23
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  %35 = sext i32 %33 to i64
  %36 = load i64, i64* @SIS_DB_BIT_CLEAR_TIMEOUT_CNT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  %40 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @PQI_STATUS_TIMEOUT, align 4
  store i32 %41, i32* %5, align 4
  br label %44

42:                                               ; preds = %32
  %43 = call i32 @OS_SLEEP(i32 500)
  br label %10

44:                                               ; preds = %38, %29, %22
  %45 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @PCI_MEM_GET32(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @GET_FW_STATUS(%struct.TYPE_7__*) #1

declare dso_local i32 @DBG_ERR(i8*, ...) #1

declare dso_local i32 @OS_SLEEP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
