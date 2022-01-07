; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_mbx_send_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_mbx_send_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i32, i32, i32* }
%union.nic_mbx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@NIC_MBOX_MSG_READY = common dso_local global i32 0, align 4
@NIC_TNS_ENABLED = common dso_local global i32 0, align 4
@NIC_TNS_MODE = common dso_local global i32 0, align 4
@NIC_TNS_BYPASS_MODE = common dso_local global i32 0, align 4
@MAX_LMAC = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicpf*, i32)* @nic_mbx_send_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nic_mbx_send_ready(%struct.nicpf* %0, i32 %1) #0 {
  %3 = alloca %struct.nicpf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.nic_mbx, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.nicpf* %0, %struct.nicpf** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = bitcast %union.nic_mbx* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 24, i1 false)
  %10 = load i32, i32* @NIC_MBOX_MSG_READY, align 4
  %11 = bitcast %union.nic_mbx* %5 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = bitcast %union.nic_mbx* %5 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %17 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @NIC_TNS_ENABLED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @NIC_TNS_MODE, align 4
  %24 = bitcast %union.nic_mbx* %5 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  br label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @NIC_TNS_BYPASS_MODE, align 4
  %28 = bitcast %union.nic_mbx* %5 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @MAX_LMAC, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %66

34:                                               ; preds = %30
  %35 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %36 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @NIC_GET_BGX_FROM_VF_LMAC_MAP(i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %44 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @NIC_GET_LMAC_FROM_VF_LMAC_MAP(i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %52 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i8* @bgx_get_lmac_mac(i32 %53, i32 %54, i32 %55)
  store i8* %56, i8** %8, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %34
  %60 = bitcast %union.nic_mbx* %5 to %struct.TYPE_2__*
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %64 = call i32 @memcpy(i32* %61, i8* %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %34
  br label %66

66:                                               ; preds = %65, %30
  %67 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %68 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = bitcast %union.nic_mbx* %5 to %struct.TYPE_2__*
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @MAX_LMAC, align 4
  %74 = icmp slt i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = bitcast %union.nic_mbx* %5 to %struct.TYPE_2__*
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @nic_send_msg_to_vf(%struct.nicpf* %78, i32 %79, %union.nic_mbx* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @NIC_GET_BGX_FROM_VF_LMAC_MAP(i32) #2

declare dso_local i32 @NIC_GET_LMAC_FROM_VF_LMAC_MAP(i32) #2

declare dso_local i8* @bgx_get_lmac_mac(i32, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i32 @nic_send_msg_to_vf(%struct.nicpf*, i32, %union.nic_mbx*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
