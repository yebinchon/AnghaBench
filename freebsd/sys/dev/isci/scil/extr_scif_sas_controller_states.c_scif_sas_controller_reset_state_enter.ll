; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_controller_states.c_scif_sas_controller_reset_state_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_controller_states.c_scif_sas_controller_reset_state_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__, i32, %struct.TYPE_11__*, i32, i32*, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@scif_sas_controller_state_handler_table = common dso_local global i32 0, align 4
@SCI_BASE_CONTROLLER_STATE_RESET = common dso_local global i32 0, align 4
@SCI_MAX_REMOTE_DEVICES = common dso_local global i32 0, align 4
@SCI_MAX_DOMAINS = common dso_local global i64 0, align 8
@SCIF_SAS_SMP_PHY_COUNT = common dso_local global i64 0, align 8
@SCIF_SAS_MAX_INTERNAL_REQUEST_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @scif_sas_controller_reset_state_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scif_sas_controller_reset_state_enter(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = load i32, i32* @scif_sas_controller_state_handler_table, align 4
  %10 = load i32, i32* @SCI_BASE_CONTROLLER_STATE_RESET, align 4
  %11 = call i32 @SET_STATE_HANDLER(%struct.TYPE_9__* %8, i32 %9, i32 %10)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = call i32 @sci_base_object_get_logger(%struct.TYPE_9__* %14)
  %16 = call i32 @scif_sas_high_priority_request_queue_construct(%struct.TYPE_10__* %13, i32 %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 6
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SCI_MAX_REMOTE_DEVICES, align 4
  %23 = call i32 @sci_abstract_element_pool_construct(i32* %18, i32 %21, i32 %22)
  store i64 0, i64* %4, align 8
  br label %24

24:                                               ; preds = %37, %1
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @SCI_MAX_DOMAINS, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = call i32 @scif_sas_domain_construct(i32* %33, i64 %34, %struct.TYPE_9__* %35)
  br label %37

37:                                               ; preds = %28
  %38 = load i64, i64* %4, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %4, align 8
  br label %24

40:                                               ; preds = %24
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  %43 = call i32 @sci_fast_list_init(i32* %42)
  store i64 0, i64* %5, align 8
  br label %44

44:                                               ; preds = %70, %40
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @SCIF_SAS_SMP_PHY_COUNT, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %44
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i64 %52
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = call i32 @sci_fast_list_element_init(%struct.TYPE_11__* %53, i32* %59)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = call i32 @sci_fast_list_insert_tail(i32* %62, i32* %68)
  br label %70

70:                                               ; preds = %48
  %71 = load i64, i64* %5, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %5, align 8
  br label %44

73:                                               ; preds = %44
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = call i32 @scif_sas_controller_set_default_config_parameters(%struct.TYPE_9__* %74)
  %76 = load i32, i32* @SCIF_SAS_MAX_INTERNAL_REQUEST_COUNT, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = call i32 @scif_cb_lock_disassociate(%struct.TYPE_9__* %79, i32* %82)
  ret void
}

declare dso_local i32 @SET_STATE_HANDLER(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @scif_sas_high_priority_request_queue_construct(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_9__*) #1

declare dso_local i32 @sci_abstract_element_pool_construct(i32*, i32, i32) #1

declare dso_local i32 @scif_sas_domain_construct(i32*, i64, %struct.TYPE_9__*) #1

declare dso_local i32 @sci_fast_list_init(i32*) #1

declare dso_local i32 @sci_fast_list_element_init(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @sci_fast_list_insert_tail(i32*, i32*) #1

declare dso_local i32 @scif_sas_controller_set_default_config_parameters(%struct.TYPE_9__*) #1

declare dso_local i32 @scif_cb_lock_disassociate(%struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
