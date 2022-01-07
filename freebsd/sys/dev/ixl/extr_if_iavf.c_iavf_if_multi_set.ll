; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_if_multi_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_if_multi_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"iavf_if_multi_set: begin\00", align 1
@MAX_MULTICAST_ADDR = common dso_local global i64 0, align 8
@FLAG_VF_MULTICAST_PROMISC = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_CONFIGURE_PROMISC = common dso_local global i32 0, align 4
@iavf_mc_filter_apply = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_ADD_MAC_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @iavf_if_multi_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_if_multi_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iavf_sc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.iavf_sc* @iflib_get_softc(i32 %4)
  store %struct.iavf_sc* %5, %struct.iavf_sc** %3, align 8
  %6 = call i32 @IOCTL_DEBUGOUT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @iflib_get_ifp(i32 %7)
  %9 = call i64 @if_llmaddr_count(i32 %8)
  %10 = load i64, i64* @MAX_MULTICAST_ADDR, align 8
  %11 = icmp sge i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @__predict_false(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %17 = call i32 @iavf_init_multi(%struct.iavf_sc* %16)
  %18 = load i32, i32* @FLAG_VF_MULTICAST_PROMISC, align 4
  %19 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %20 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %24 = load i32, i32* @IAVF_FLAG_AQ_CONFIGURE_PROMISC, align 4
  %25 = call i32 @iavf_send_vc_msg(%struct.iavf_sc* %23, i32 %24)
  br label %39

26:                                               ; preds = %1
  %27 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %28 = call i32 @iavf_init_multi(%struct.iavf_sc* %27)
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @iflib_get_ifp(i32 %29)
  %31 = load i32, i32* @iavf_mc_filter_apply, align 4
  %32 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %33 = call i64 @if_foreach_llmaddr(i32 %30, i32 %31, %struct.iavf_sc* %32)
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load %struct.iavf_sc*, %struct.iavf_sc** %3, align 8
  %37 = load i32, i32* @IAVF_FLAG_AQ_ADD_MAC_FILTER, align 4
  %38 = call i32 @iavf_send_vc_msg(%struct.iavf_sc* %36, i32 %37)
  br label %39

39:                                               ; preds = %15, %35, %26
  ret void
}

declare dso_local %struct.iavf_sc* @iflib_get_softc(i32) #1

declare dso_local i32 @IOCTL_DEBUGOUT(i8*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i64 @if_llmaddr_count(i32) #1

declare dso_local i32 @iflib_get_ifp(i32) #1

declare dso_local i32 @iavf_init_multi(%struct.iavf_sc*) #1

declare dso_local i32 @iavf_send_vc_msg(%struct.iavf_sc*, i32) #1

declare dso_local i64 @if_foreach_llmaddr(i32, i32, %struct.iavf_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
