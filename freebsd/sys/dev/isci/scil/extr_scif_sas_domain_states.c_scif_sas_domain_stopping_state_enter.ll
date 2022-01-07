; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_domain_states.c_scif_sas_domain_stopping_state_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_domain_states.c_scif_sas_domain_stopping_state_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 (i32*)* }
%struct.TYPE_15__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }

@scif_sas_domain_state_handler_table = common dso_local global i32 0, align 4
@SCI_BASE_DOMAIN_STATE_STOPPING = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_DOMAIN = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_DOMAIN_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"scif_sas_domain_stopping_state_enter(0x%x) enter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @scif_sas_domain_stopping_state_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scif_sas_domain_stopping_state_enter(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %7, %struct.TYPE_15__** %4, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %10 = call i32* @sci_abstract_list_get_front(i32* %9)
  store i32* %10, i32** %5, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = load i32, i32* @scif_sas_domain_state_handler_table, align 4
  %13 = load i32, i32* @SCI_BASE_DOMAIN_STATE_STOPPING, align 4
  %14 = call i32 @SET_STATE_HANDLER(%struct.TYPE_15__* %11, i32 %12, i32 %13)
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = call i32 @scif_sas_domain_transition_from_discovering_state(%struct.TYPE_15__* %15)
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %18 = call i32 @sci_base_object_get_logger(%struct.TYPE_15__* %17)
  %19 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN, align 4
  %20 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN_DISCOVERY, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = ptrtoint %struct.TYPE_15__* %22 to i32
  %24 = call i32 @SCIF_LOG_TRACE(i32 %23)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = call i32 @scif_sas_high_priority_request_queue_purge_domain(i32* %28, %struct.TYPE_15__* %29)
  br label %31

31:                                               ; preds = %34, %1
  %32 = load i32*, i32** %5, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @sci_abstract_list_get_object(i32* %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %3, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32 (i32*)*, i32 (i32*)** %42, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = call i32 %43(i32* %45)
  %47 = load i32*, i32** %5, align 8
  %48 = call i32* @sci_abstract_list_get_next(i32* %47)
  store i32* %48, i32** %5, align 8
  br label %31

49:                                               ; preds = %31
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = call i32 @scif_sas_domain_transition_to_stopped_state(%struct.TYPE_15__* %50)
  ret void
}

declare dso_local i32* @sci_abstract_list_get_front(i32*) #1

declare dso_local i32 @SET_STATE_HANDLER(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @scif_sas_domain_transition_from_discovering_state(%struct.TYPE_15__*) #1

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_15__*) #1

declare dso_local i32 @scif_sas_high_priority_request_queue_purge_domain(i32*, %struct.TYPE_15__*) #1

declare dso_local i64 @sci_abstract_list_get_object(i32*) #1

declare dso_local i32* @sci_abstract_list_get_next(i32*) #1

declare dso_local i32 @scif_sas_domain_transition_to_stopped_state(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
