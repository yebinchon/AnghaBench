; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_config_rss.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_config_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VIRTCHNL_VF_OFFLOAD_RSS_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Setting up RSS using VF registers...\00", align 1
@VIRTCHNL_VF_OFFLOAD_RSS_PF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Setting up RSS using messages to PF...\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"VF does not support RSS capability sent by PF.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iavf_sc*)* @iavf_config_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_config_rss(%struct.iavf_sc* %0) #0 {
  %2 = alloca %struct.iavf_sc*, align 8
  store %struct.iavf_sc* %0, %struct.iavf_sc** %2, align 8
  %3 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %4 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_RSS_REG, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %13 = call i32 @iavf_dbg_info(%struct.iavf_sc* %12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %15 = call i32 @iavf_config_rss_reg(%struct.iavf_sc* %14)
  br label %36

16:                                               ; preds = %1
  %17 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %18 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_RSS_PF, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %27 = call i32 @iavf_dbg_info(%struct.iavf_sc* %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %29 = call i32 @iavf_config_rss_pf(%struct.iavf_sc* %28)
  br label %35

30:                                               ; preds = %16
  %31 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %32 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %30, %25
  br label %36

36:                                               ; preds = %35, %11
  ret void
}

declare dso_local i32 @iavf_dbg_info(%struct.iavf_sc*, i8*) #1

declare dso_local i32 @iavf_config_rss_reg(%struct.iavf_sc*) #1

declare dso_local i32 @iavf_config_rss_pf(%struct.iavf_sc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
