; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_get_stats_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_get_stats_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32 }
%struct.ixl_vf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.virtchnl_queue_select = type { i64 }

@VIRTCHNL_OP_GET_STATS = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@I40E_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_pf*, %struct.ixl_vf*, i8*, i32)* @ixl_vf_get_stats_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_vf_get_stats_msg(%struct.ixl_pf* %0, %struct.ixl_vf* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ixl_pf*, align 8
  %6 = alloca %struct.ixl_vf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.virtchnl_queue_select*, align 8
  store %struct.ixl_pf* %0, %struct.ixl_pf** %5, align 8
  store %struct.ixl_vf* %1, %struct.ixl_vf** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ne i64 %11, 8
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %15 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %16 = load i32, i32* @VIRTCHNL_OP_GET_STATS, align 4
  %17 = load i32, i32* @I40E_ERR_PARAM, align 4
  %18 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %14, %struct.ixl_vf* %15, i32 %16, i32 %17)
  br label %48

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.virtchnl_queue_select*
  store %struct.virtchnl_queue_select* %21, %struct.virtchnl_queue_select** %9, align 8
  %22 = load %struct.virtchnl_queue_select*, %struct.virtchnl_queue_select** %9, align 8
  %23 = getelementptr inbounds %struct.virtchnl_queue_select, %struct.virtchnl_queue_select* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %26 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %24, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %19
  %31 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %32 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %33 = load i32, i32* @VIRTCHNL_OP_GET_STATS, align 4
  %34 = load i32, i32* @I40E_ERR_PARAM, align 4
  %35 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %31, %struct.ixl_vf* %32, i32 %33, i32 %34)
  br label %48

36:                                               ; preds = %19
  %37 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %38 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %37, i32 0, i32 0
  %39 = call i32 @ixl_update_eth_stats(%struct.TYPE_2__* %38)
  %40 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %41 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %42 = load i32, i32* @VIRTCHNL_OP_GET_STATS, align 4
  %43 = load i32, i32* @I40E_SUCCESS, align 4
  %44 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %45 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = call i32 @ixl_send_vf_msg(%struct.ixl_pf* %40, %struct.ixl_vf* %41, i32 %42, i32 %43, i32* %46, i32 4)
  br label %48

48:                                               ; preds = %36, %30, %13
  ret void
}

declare dso_local i32 @i40e_send_vf_nack(%struct.ixl_pf*, %struct.ixl_vf*, i32, i32) #1

declare dso_local i32 @ixl_update_eth_stats(%struct.TYPE_2__*) #1

declare dso_local i32 @ixl_send_vf_msg(%struct.ixl_pf*, %struct.ixl_vf*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
