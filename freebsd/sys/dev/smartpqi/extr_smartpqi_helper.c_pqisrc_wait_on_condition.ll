; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_helper.c_pqisrc_wait_on_condition.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_helper.c_pqisrc_wait_on_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@PQISRC_CMD_TIMEOUT_CNT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"ERR: Requested cmd timed out !!!\0A\00", align 1
@PQI_STATUS_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Controller is Offline\00", align 1
@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqisrc_wait_on_condition(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %8, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %32, %2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %33

14:                                               ; preds = %9
  %15 = call i32 @OS_SLEEP(i32 500)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @IS_POLLING_REQUIRED(i32* %16)
  %18 = load i64, i64* %6, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* @PQISRC_CMD_TIMEOUT_CNT, align 8
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = call i32 @DBG_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @PQI_STATUS_TIMEOUT, align 4
  store i32 %24, i32* %5, align 4
  br label %33

25:                                               ; preds = %14
  %26 = load i32*, i32** %3, align 8
  %27 = call i64 @pqisrc_ctrl_offline(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = call i32 @DBG_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %31, i32* %5, align 4
  br label %33

32:                                               ; preds = %25
  br label %9

33:                                               ; preds = %29, %22, %9
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @OS_SLEEP(i32) #1

declare dso_local i32 @IS_POLLING_REQUIRED(i32*) #1

declare dso_local i32 @DBG_ERR(i8*) #1

declare dso_local i64 @pqisrc_ctrl_offline(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
