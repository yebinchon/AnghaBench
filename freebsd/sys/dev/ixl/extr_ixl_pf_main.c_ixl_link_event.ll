; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_link_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_link_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i64, i32, %struct.TYPE_8__, %struct.i40e_hw }
%struct.TYPE_8__ = type { i32 }
%struct.i40e_hw = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.i40e_arq_event_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.i40e_aqc_get_link_status = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@I40E_AQ_MEDIA_AVAILABLE = common dso_local global i32 0, align 4
@I40E_AQ_QUALIFIED_MODULE = common dso_local global i32 0, align 4
@I40E_AQ_LINK_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Link failed because an unqualified module was detected!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_link_event(%struct.ixl_pf* %0, %struct.i40e_arq_event_info* %1) #0 {
  %3 = alloca %struct.ixl_pf*, align 8
  %4 = alloca %struct.i40e_arq_event_info*, align 8
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_aqc_get_link_status*, align 8
  store %struct.ixl_pf* %0, %struct.ixl_pf** %3, align 8
  store %struct.i40e_arq_event_info* %1, %struct.i40e_arq_event_info** %4, align 8
  %8 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %9 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %8, i32 0, i32 3
  store %struct.i40e_hw* %9, %struct.i40e_hw** %5, align 8
  %10 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %11 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @iflib_get_dev(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.i40e_arq_event_info*, %struct.i40e_arq_event_info** %4, align 8
  %16 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = bitcast i32* %18 to %struct.i40e_aqc_get_link_status*
  store %struct.i40e_aqc_get_link_status* %19, %struct.i40e_aqc_get_link_status** %7, align 8
  %20 = load i32, i32* @TRUE, align 4
  %21 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %22 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %25 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %26 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %25, i32 0, i32 1
  %27 = call i32 @i40e_get_link_status(%struct.i40e_hw* %24, i32* %26)
  %28 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %7, align 8
  %29 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @I40E_AQ_MEDIA_AVAILABLE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %2
  %35 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %36 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  %40 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %7, align 8
  %41 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @I40E_AQ_QUALIFIED_MODULE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %39
  %47 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %7, align 8
  %48 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @I40E_AQ_LINK_UP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %46, %39, %34, %2
  ret void
}

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @i40e_get_link_status(%struct.i40e_hw*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
