; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_domain_states.c_scif_sas_domain_discovering_state_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_domain_states.c_scif_sas_domain_discovering_state_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_34__ = type { %struct.TYPE_32__, i32, %struct.TYPE_31__, i32, i32, i64 }
%struct.TYPE_32__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64 }

@scif_sas_domain_state_handler_table = common dso_local global i32 0, align 4
@SCI_BASE_DOMAIN_STATE_DISCOVERING = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_DOMAIN = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_DOMAIN_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"scif_sas_domain_discovering_state_enter(0x%x) enter\0A\00", align 1
@SCI_BASE_DOMAIN_STATE_STOPPED = common dso_local global i64 0, align 8
@SCI_INVALID_HANDLE = common dso_local global %struct.TYPE_33__* null, align 8
@SCI_BASE_REMOTE_DEVICE_STATE_STOPPED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"Controller:0x%x Domain:0x%x Device:0x%x removed\0A\00", align 1
@SCI_BASE_DOMAIN_STATE_STARTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @scif_sas_domain_discovering_state_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scif_sas_domain_discovering_state_enter(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_34__*, align 8
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca %struct.TYPE_23__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_33__*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %9, %struct.TYPE_34__** %3, align 8
  %10 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %11 = load i32, i32* @scif_sas_domain_state_handler_table, align 4
  %12 = load i32, i32* @SCI_BASE_DOMAIN_STATE_DISCOVERING, align 4
  %13 = call i32 @SET_STATE_HANDLER(%struct.TYPE_34__* %10, i32 %11, i32 %12)
  %14 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %15 = call i32 @sci_base_object_get_logger(%struct.TYPE_34__* %14)
  %16 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN, align 4
  %17 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN_DISCOVERY, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %20 = ptrtoint %struct.TYPE_34__* %19 to i32
  %21 = call i32 @SCIF_LOG_TRACE(i32 %20)
  %22 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SCI_BASE_DOMAIN_STATE_STOPPED, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %68

31:                                               ; preds = %1
  %32 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @scic_port_get_properties(i32 %34, %struct.TYPE_23__* %5)
  %36 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 1
  %39 = call i64 @scif_domain_get_device_by_sas_address(%struct.TYPE_34__* %36, i32* %38)
  %40 = inttoptr i64 %39 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %40, %struct.TYPE_33__** %4, align 8
  %41 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %42 = load %struct.TYPE_33__*, %struct.TYPE_33__** @SCI_INVALID_HANDLE, align 8
  %43 = icmp eq %struct.TYPE_33__* %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %31
  %45 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 0
  %53 = call i32 @scif_cb_domain_da_device_added(i32 %47, %struct.TYPE_34__* %48, i32* %50, %struct.TYPE_24__* %52)
  br label %67

54:                                               ; preds = %31
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %64 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %65 = call i32 @scif_sas_domain_start_smp_discover(%struct.TYPE_34__* %63, %struct.TYPE_33__* %64)
  br label %66

66:                                               ; preds = %62, %54
  br label %67

67:                                               ; preds = %66, %44
  br label %127

68:                                               ; preds = %1
  %69 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %69, i32 0, i32 1
  %71 = call i32* @sci_abstract_list_get_front(i32* %70)
  store i32* %71, i32** %6, align 8
  br label %72

72:                                               ; preds = %75, %68
  %73 = load i32*, i32** %6, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %108

75:                                               ; preds = %72
  %76 = load i32*, i32** %6, align 8
  %77 = call i64 @sci_abstract_list_get_object(i32* %76)
  %78 = inttoptr i64 %77 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %78, %struct.TYPE_33__** %7, align 8
  %79 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SCI_BASE_REMOTE_DEVICE_STATE_STOPPED, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @ASSERT(i32 %86)
  %88 = load i32*, i32** %6, align 8
  %89 = call i32* @sci_abstract_list_get_next(i32* %88)
  store i32* %89, i32** %6, align 8
  %90 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %91 = call i32 @sci_base_object_get_logger(%struct.TYPE_34__* %90)
  %92 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN, align 4
  %93 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN_DISCOVERY, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %99 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %100 = ptrtoint %struct.TYPE_33__* %99 to i32
  %101 = call i32 @SCIF_LOG_INFO(i32 %100)
  %102 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %106 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %107 = call i32 @scif_cb_domain_device_removed(i32 %104, %struct.TYPE_34__* %105, %struct.TYPE_33__* %106)
  br label %72

108:                                              ; preds = %72
  %109 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 @ASSERT(i32 %114)
  %116 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %116, i32 0, i32 1
  %118 = call i64 @sci_abstract_list_size(i32* %117)
  %119 = icmp eq i64 %118, 0
  %120 = zext i1 %119 to i32
  %121 = call i32 @ASSERT(i32 %120)
  %122 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %123, i32 0, i32 0
  %125 = load i32, i32* @SCI_BASE_DOMAIN_STATE_STARTING, align 4
  %126 = call i32 @sci_base_state_machine_change_state(%struct.TYPE_25__* %124, i32 %125)
  br label %127

127:                                              ; preds = %108, %67
  ret void
}

declare dso_local i32 @SET_STATE_HANDLER(%struct.TYPE_34__*, i32, i32) #1

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_34__*) #1

declare dso_local i32 @scic_port_get_properties(i32, %struct.TYPE_23__*) #1

declare dso_local i64 @scif_domain_get_device_by_sas_address(%struct.TYPE_34__*, i32*) #1

declare dso_local i32 @scif_cb_domain_da_device_added(i32, %struct.TYPE_34__*, i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @scif_sas_domain_start_smp_discover(%struct.TYPE_34__*, %struct.TYPE_33__*) #1

declare dso_local i32* @sci_abstract_list_get_front(i32*) #1

declare dso_local i64 @sci_abstract_list_get_object(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @sci_abstract_list_get_next(i32*) #1

declare dso_local i32 @SCIF_LOG_INFO(i32) #1

declare dso_local i32 @scif_cb_domain_device_removed(i32, %struct.TYPE_34__*, %struct.TYPE_33__*) #1

declare dso_local i64 @sci_abstract_list_size(i32*) #1

declare dso_local i32 @sci_base_state_machine_change_state(%struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
