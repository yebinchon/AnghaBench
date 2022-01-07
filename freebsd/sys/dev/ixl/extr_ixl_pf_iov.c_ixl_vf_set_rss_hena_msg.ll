; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_set_rss_hena_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_set_rss_hena_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, %struct.i40e_hw }
%struct.i40e_hw = type { i32 }
%struct.ixl_vf = type { i32 }
%struct.virtchnl_rss_hena = type { i32 }

@VIRTCHNL_OP_SET_RSS_HENA = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"VF %d: Programmed HENA with 0x%016lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_pf*, %struct.ixl_vf*, i8*, i32)* @ixl_vf_set_rss_hena_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_vf_set_rss_hena_msg(%struct.ixl_pf* %0, %struct.ixl_vf* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ixl_pf*, align 8
  %6 = alloca %struct.ixl_vf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40e_hw*, align 8
  %10 = alloca %struct.virtchnl_rss_hena*, align 8
  store %struct.ixl_pf* %0, %struct.ixl_pf** %5, align 8
  store %struct.ixl_vf* %1, %struct.ixl_vf** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %12 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %11, i32 0, i32 1
  store %struct.i40e_hw* %12, %struct.i40e_hw** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 4
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %18 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %19 = load i32, i32* @VIRTCHNL_OP_SET_RSS_HENA, align 4
  %20 = load i32, i32* @I40E_ERR_PARAM, align 4
  %21 = call i32 @i40e_send_vf_nack(%struct.ixl_pf* %17, %struct.ixl_vf* %18, i32 %19, i32 %20)
  br label %58

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.virtchnl_rss_hena*
  store %struct.virtchnl_rss_hena* %24, %struct.virtchnl_rss_hena** %10, align 8
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %26 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %27 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @I40E_VFQF_HENA1(i32 0, i32 %28)
  %30 = load %struct.virtchnl_rss_hena*, %struct.virtchnl_rss_hena** %10, align 8
  %31 = getelementptr inbounds %struct.virtchnl_rss_hena, %struct.virtchnl_rss_hena* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @i40e_write_rx_ctl(%struct.i40e_hw* %25, i32 %29, i32 %32)
  %34 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %35 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %36 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @I40E_VFQF_HENA1(i32 1, i32 %37)
  %39 = load %struct.virtchnl_rss_hena*, %struct.virtchnl_rss_hena** %10, align 8
  %40 = getelementptr inbounds %struct.virtchnl_rss_hena, %struct.virtchnl_rss_hena* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 32
  %43 = call i32 @i40e_write_rx_ctl(%struct.i40e_hw* %34, i32 %38, i32 %42)
  %44 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %45 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %48 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.virtchnl_rss_hena*, %struct.virtchnl_rss_hena** %10, align 8
  %51 = getelementptr inbounds %struct.virtchnl_rss_hena, %struct.virtchnl_rss_hena* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @DDPRINTF(i32 %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52)
  %54 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %55 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %56 = load i32, i32* @VIRTCHNL_OP_SET_RSS_HENA, align 4
  %57 = call i32 @ixl_send_vf_ack(%struct.ixl_pf* %54, %struct.ixl_vf* %55, i32 %56)
  br label %58

58:                                               ; preds = %22, %16
  ret void
}

declare dso_local i32 @i40e_send_vf_nack(%struct.ixl_pf*, %struct.ixl_vf*, i32, i32) #1

declare dso_local i32 @i40e_write_rx_ctl(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_VFQF_HENA1(i32, i32) #1

declare dso_local i32 @DDPRINTF(i32, i8*, i32, i32) #1

declare dso_local i32 @ixl_send_vf_ack(%struct.ixl_pf*, %struct.ixl_vf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
