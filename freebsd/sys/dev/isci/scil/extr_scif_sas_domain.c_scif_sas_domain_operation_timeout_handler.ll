; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_domain.c_scif_sas_domain_operation_timeout_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_domain.c_scif_sas_domain_operation_timeout_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@SCI_BASE_DOMAIN_STATE_DISCOVERING = common dso_local global i64 0, align 8
@SCIF_LOG_OBJECT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Domain:0x%x State:0x%x DISCOVER timeout!\0A\00", align 1
@SCI_FAILURE_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Domain:0x%x State:0x%x operation timeout in invalid state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @scif_sas_domain_operation_timeout_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scif_sas_domain_operation_timeout_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = call i64 @sci_base_state_machine_get_state(i32* %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @SCI_BASE_DOMAIN_STATE_DISCOVERING, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = call i32 @sci_base_object_get_logger(%struct.TYPE_9__* %15)
  %17 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @SCIF_LOG_WARNING(i32 %20)
  %22 = load i32, i32* @SCI_FAILURE_TIMEOUT, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = call i32 @scif_sas_domain_cancel_smp_activities(%struct.TYPE_9__* %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = call i32 @scif_sas_domain_continue_discover(%struct.TYPE_9__* %28)
  br label %38

30:                                               ; preds = %1
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = call i32 @sci_base_object_get_logger(%struct.TYPE_9__* %31)
  %33 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @SCIF_LOG_ERROR(i32 %36)
  br label %38

38:                                               ; preds = %30, %14
  ret void
}

declare dso_local i64 @sci_base_state_machine_get_state(i32*) #1

declare dso_local i32 @SCIF_LOG_WARNING(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_9__*) #1

declare dso_local i32 @scif_sas_domain_cancel_smp_activities(%struct.TYPE_9__*) #1

declare dso_local i32 @scif_sas_domain_continue_discover(%struct.TYPE_9__*) #1

declare dso_local i32 @SCIF_LOG_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
