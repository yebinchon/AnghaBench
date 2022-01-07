; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_io.c_tag_mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_io.c_tag_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.mbuf = type { i32 }
%struct.ip_fw_args = type { i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dn_pkt_tag = type { i32, i32, i32, i32*, %struct.TYPE_3__ }
%struct.m_tag = type { i32 }

@PACKET_TAG_DUMMYNET = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@IPFW_ONEPASS = common dso_local global i32 0, align 4
@IPFW_ARGS_OUT = common dso_local global i32 0, align 4
@dn_cfg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@PROTO_LAYER2 = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, i32, %struct.ip_fw_args*)* @tag_mbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tag_mbuf(%struct.mbuf* %0, i32 %1, %struct.ip_fw_args* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_fw_args*, align 8
  %8 = alloca %struct.dn_pkt_tag*, align 8
  %9 = alloca %struct.m_tag*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ip_fw_args* %2, %struct.ip_fw_args** %7, align 8
  %10 = load i32, i32* @PACKET_TAG_DUMMYNET, align 4
  %11 = load i32, i32* @M_NOWAIT, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.m_tag* @m_tag_get(i32 %10, i32 32, i32 %13)
  store %struct.m_tag* %14, %struct.m_tag** %9, align 8
  %15 = load %struct.m_tag*, %struct.m_tag** %9, align 8
  %16 = icmp eq %struct.m_tag* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %69

18:                                               ; preds = %3
  %19 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %20 = load %struct.m_tag*, %struct.m_tag** %9, align 8
  %21 = call i32 @m_tag_prepend(%struct.mbuf* %19, %struct.m_tag* %20)
  %22 = load %struct.m_tag*, %struct.m_tag** %9, align 8
  %23 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %22, i64 1
  %24 = bitcast %struct.m_tag* %23 to %struct.dn_pkt_tag*
  store %struct.dn_pkt_tag* %24, %struct.dn_pkt_tag** %8, align 8
  %25 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %8, align 8
  %26 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %25, i32 0, i32 4
  %27 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %28 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %27, i32 0, i32 2
  %29 = bitcast %struct.TYPE_3__* %26 to i8*
  %30 = bitcast %struct.TYPE_3__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 4, i1 false)
  %31 = load i32, i32* @IPFW_ONEPASS, align 4
  %32 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %8, align 8
  %33 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %31
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %8, align 8
  %39 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %41 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IPFW_ARGS_OUT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %18
  %47 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %48 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  br label %51

50:                                               ; preds = %18
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi i32* [ %49, %46 ], [ null, %50 ]
  %53 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %8, align 8
  %54 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %53, i32 0, i32 3
  store i32* %52, i32** %54, align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dn_cfg, i32 0, i32 0), align 4
  %56 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %8, align 8
  %57 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @PROTO_LAYER2, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = load i32, i32* @ETHER_HDR_LEN, align 4
  br label %65

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 0, %64 ]
  %67 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %8, align 8
  %68 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %17
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.m_tag* @m_tag_get(i32, i32, i32) #1

declare dso_local i32 @m_tag_prepend(%struct.mbuf*, %struct.m_tag*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
