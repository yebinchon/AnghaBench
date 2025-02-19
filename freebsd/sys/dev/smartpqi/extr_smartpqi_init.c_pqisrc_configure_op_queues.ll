; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_init.c_pqisrc_configure_op_queues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_init.c_pqisrc_configure_op_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Failed to send report pqi dev capability request : %d\0A\00", align 1
@PQI_RESERVED_IO_SLOTS_CNT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"OUT failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqisrc_configure_op_queues(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = call i32 @pqisrc_report_pqi_capability(%struct.TYPE_5__* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @DBG_ERR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %25

13:                                               ; preds = %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PQI_RESERVED_IO_SLOTS_CNT, align 8
  %18 = sub nsw i64 %16, %17
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = call i32 @pqisrc_decide_opq_config(%struct.TYPE_5__* %21)
  %23 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %28

25:                                               ; preds = %10
  %26 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %13
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @pqisrc_report_pqi_capability(%struct.TYPE_5__*) #1

declare dso_local i32 @DBG_ERR(i8*, i32) #1

declare dso_local i32 @pqisrc_decide_opq_config(%struct.TYPE_5__*) #1

declare dso_local i32 @DBG_FUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
