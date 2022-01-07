; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_config_rss.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_config_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32, %struct.nicvf_rss_info }
%struct.nicvf_rss_info = type { i32, i32*, i32 }
%union.nic_mbx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32*, i32, i32, i32 }

@RSS_IND_TBL_LEN_PER_MBX_MSG = common dso_local global i32 0, align 4
@NIC_MBOX_MSG_RSS_CFG_CONT = common dso_local global i32 0, align 4
@NIC_MBOX_MSG_RSS_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicvf*)* @nicvf_config_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_config_rss(%struct.nicvf* %0) #0 {
  %2 = alloca %struct.nicvf*, align 8
  %3 = alloca %union.nic_mbx, align 8
  %4 = alloca %struct.nicvf_rss_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %2, align 8
  %8 = bitcast %union.nic_mbx* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 32, i1 false)
  %9 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %10 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %9, i32 0, i32 1
  store %struct.nicvf_rss_info* %10, %struct.nicvf_rss_info** %4, align 8
  %11 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %4, align 8
  %12 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %15 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = bitcast %union.nic_mbx* %3 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  %19 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %4, align 8
  %20 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = bitcast %union.nic_mbx* %3 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %72, %1
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %80

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = bitcast %union.nic_mbx* %3 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @RSS_IND_TBL_LEN_PER_MBX_MSG, align 4
  %33 = call i32 @MIN(i32 %31, i32 %32)
  %34 = bitcast %union.nic_mbx* %3 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = bitcast %union.nic_mbx* %3 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load i32, i32* @NIC_MBOX_MSG_RSS_CFG_CONT, align 4
  br label %44

42:                                               ; preds = %27
  %43 = load i32, i32* @NIC_MBOX_MSG_RSS_CFG, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = bitcast %union.nic_mbx* %3 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %69, %44
  %49 = load i32, i32* %6, align 4
  %50 = bitcast %union.nic_mbx* %3 to %struct.TYPE_2__*
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %48
  %55 = load %struct.nicvf_rss_info*, %struct.nicvf_rss_info** %4, align 8
  %56 = getelementptr inbounds %struct.nicvf_rss_info, %struct.nicvf_rss_info* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = bitcast %union.nic_mbx* %3 to %struct.TYPE_2__*
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  br label %69

69:                                               ; preds = %54
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %48

72:                                               ; preds = %48
  %73 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %74 = call i32 @nicvf_send_msg_to_pf(%struct.nicvf* %73, %union.nic_mbx* %3)
  %75 = bitcast %union.nic_mbx* %3 to %struct.TYPE_2__*
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %5, align 4
  %79 = sub nsw i32 %78, %77
  store i32 %79, i32* %5, align 4
  br label %24

80:                                               ; preds = %24
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @MIN(i32, i32) #2

declare dso_local i32 @nicvf_send_msg_to_pf(%struct.nicvf*, %union.nic_mbx*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
