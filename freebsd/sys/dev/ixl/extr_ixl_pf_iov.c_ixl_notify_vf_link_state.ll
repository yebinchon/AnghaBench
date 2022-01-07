; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_notify_vf_link_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_notify_vf_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.TYPE_6__, %struct.i40e_hw }
%struct.TYPE_6__ = type { i32 }
%struct.i40e_hw = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.ixl_vf = type { i32 }
%struct.virtchnl_pf_event = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@VIRTCHNL_EVENT_LINK_CHANGE = common dso_local global i32 0, align 4
@PF_EVENT_SEVERITY_INFO = common dso_local global i32 0, align 4
@VIRTCHNL_OP_EVENT = common dso_local global i32 0, align 4
@I40E_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_pf*, %struct.ixl_vf*)* @ixl_notify_vf_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_notify_vf_link_state(%struct.ixl_pf* %0, %struct.ixl_vf* %1) #0 {
  %3 = alloca %struct.ixl_pf*, align 8
  %4 = alloca %struct.ixl_vf*, align 8
  %5 = alloca %struct.virtchnl_pf_event, align 4
  %6 = alloca %struct.i40e_hw*, align 8
  store %struct.ixl_pf* %0, %struct.ixl_pf** %3, align 8
  store %struct.ixl_vf* %1, %struct.ixl_vf** %4, align 8
  %7 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %8 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %7, i32 0, i32 1
  store %struct.i40e_hw* %8, %struct.i40e_hw** %6, align 8
  %9 = load i32, i32* @VIRTCHNL_EVENT_LINK_CHANGE, align 4
  %10 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %5, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @PF_EVENT_SEVERITY_INFO, align 4
  %12 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %5, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %14 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %5, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 4
  %20 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %21 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %5, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %30 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %31 = load i32, i32* @VIRTCHNL_OP_EVENT, align 4
  %32 = load i32, i32* @I40E_SUCCESS, align 4
  %33 = call i32 @ixl_send_vf_msg(%struct.ixl_pf* %29, %struct.ixl_vf* %30, i32 %31, i32 %32, %struct.virtchnl_pf_event* %5, i32 16)
  ret void
}

declare dso_local i32 @ixl_send_vf_msg(%struct.ixl_pf*, %struct.ixl_vf*, i32, i32, %struct.virtchnl_pf_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
