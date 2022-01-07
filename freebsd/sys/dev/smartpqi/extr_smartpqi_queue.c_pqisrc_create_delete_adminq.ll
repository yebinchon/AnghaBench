; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_queue.c_pqisrc_create_delete_adminq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_queue.c_pqisrc_create_delete_adminq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@PQI_ADMINQ_CONFIG = common dso_local global i32 0, align 4
@PQI_ADMIN_QUEUE_CONF_FUNC_CREATE_Q_PAIR = common dso_local global i64 0, align 8
@PQISRC_ADMIN_QUEUE_CREATE_TIMEOUT = common dso_local global i32 0, align 4
@PQISRC_ADMIN_QUEUE_DELETE_TIMEOUT = common dso_local global i32 0, align 4
@PQI_ADMIN_QUEUE_CONF_FUNC_STATUS_IDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Unable to create/delete admin queue pair\0A\00", align 1
@PQI_STATUS_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqisrc_create_delete_adminq(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* @PQI_ADMINQ_CONFIG, align 4
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @LE_64(i64 %14)
  %16 = call i32 @PCI_MEM_PUT64(%struct.TYPE_7__* %8, i32* %12, i32 %13, i32 %15)
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @PQI_ADMIN_QUEUE_CONF_FUNC_CREATE_Q_PAIR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @PQISRC_ADMIN_QUEUE_CREATE_TIMEOUT, align 4
  store i32 %21, i32* %5, align 4
  br label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @PQISRC_ADMIN_QUEUE_DELETE_TIMEOUT, align 4
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* @PQI_ADMINQ_CONFIG, align 4
  %31 = call i64 @PCI_MEM_GET64(%struct.TYPE_7__* %25, i32* %29, i32 %30)
  %32 = load i64, i64* @PQI_ADMIN_QUEUE_CONF_FUNC_STATUS_IDLE, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @COND_WAIT(i32 %34, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %24
  %40 = call i32 @DBG_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @PQI_STATUS_TIMEOUT, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %39, %24
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @PCI_MEM_PUT64(%struct.TYPE_7__*, i32*, i32, i32) #1

declare dso_local i32 @LE_64(i64) #1

declare dso_local i32 @COND_WAIT(i32, i32) #1

declare dso_local i64 @PCI_MEM_GET64(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @DBG_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
