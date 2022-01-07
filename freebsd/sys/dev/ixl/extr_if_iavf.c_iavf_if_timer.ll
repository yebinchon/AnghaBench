; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_if_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_if_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32 }

@I40E_VFGEN_RSTAT = common dso_local global i32 0, align 4
@I40E_VFGEN_RSTAT_VFR_STATE_MASK = common dso_local global i32 0, align 4
@VIRTCHNL_VFR_VFACTIVE = common dso_local global i32 0, align 4
@VIRTCHNL_VFR_COMPLETED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"reset in progress! (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @iavf_if_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_if_timer(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.iavf_sc*, align 8
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.iavf_sc* @iflib_get_softc(i32 %8)
  store %struct.iavf_sc* %9, %struct.iavf_sc** %5, align 8
  %10 = load %struct.iavf_sc*, %struct.iavf_sc** %5, align 8
  %11 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %10, i32 0, i32 0
  store %struct.i40e_hw* %11, %struct.i40e_hw** %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %37

15:                                               ; preds = %2
  %16 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %17 = load i32, i32* @I40E_VFGEN_RSTAT, align 4
  %18 = call i32 @rd32(%struct.i40e_hw* %16, i32 %17)
  %19 = load i32, i32* @I40E_VFGEN_RSTAT_VFR_STATE_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @VIRTCHNL_VFR_VFACTIVE, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @VIRTCHNL_VFR_COMPLETED, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.iavf_sc*, %struct.iavf_sc** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @iavf_dbg_info(%struct.iavf_sc* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %37

32:                                               ; preds = %24, %15
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @iflib_admin_intr_deferred(i32 %33)
  %35 = load %struct.iavf_sc*, %struct.iavf_sc** %5, align 8
  %36 = call i32 @iavf_request_stats(%struct.iavf_sc* %35)
  br label %37

37:                                               ; preds = %32, %28, %14
  ret void
}

declare dso_local %struct.iavf_sc* @iflib_get_softc(i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @iavf_dbg_info(%struct.iavf_sc*, i8*, i32) #1

declare dso_local i32 @iflib_admin_intr_deferred(i32) #1

declare dso_local i32 @iavf_request_stats(%struct.iavf_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
