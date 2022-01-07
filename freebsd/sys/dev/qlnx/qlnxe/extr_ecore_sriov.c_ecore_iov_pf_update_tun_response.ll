; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_pf_update_tun_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_pf_update_tun_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfvf_update_tunn_param_tlv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ecore_tunnel_info = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pfvf_update_tunn_param_tlv*, %struct.ecore_tunnel_info*, i32)* @ecore_iov_pf_update_tun_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_iov_pf_update_tun_response(%struct.pfvf_update_tunn_param_tlv* %0, %struct.ecore_tunnel_info* %1, i32 %2) #0 {
  %4 = alloca %struct.pfvf_update_tunn_param_tlv*, align 8
  %5 = alloca %struct.ecore_tunnel_info*, align 8
  %6 = alloca i32, align 4
  store %struct.pfvf_update_tunn_param_tlv* %0, %struct.pfvf_update_tunn_param_tlv** %4, align 8
  store %struct.ecore_tunnel_info* %1, %struct.ecore_tunnel_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %4, align 8
  %9 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %8, i32 0, i32 12
  store i32 %7, i32* %9, align 4
  %10 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %5, align 8
  %11 = getelementptr inbounds %struct.ecore_tunnel_info, %struct.ecore_tunnel_info* %10, i32 0, i32 6
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %4, align 8
  %15 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %14, i32 0, i32 11
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %5, align 8
  %17 = getelementptr inbounds %struct.ecore_tunnel_info, %struct.ecore_tunnel_info* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %4, align 8
  %21 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %20, i32 0, i32 10
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %5, align 8
  %23 = getelementptr inbounds %struct.ecore_tunnel_info, %struct.ecore_tunnel_info* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %4, align 8
  %27 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %26, i32 0, i32 9
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %5, align 8
  %29 = getelementptr inbounds %struct.ecore_tunnel_info, %struct.ecore_tunnel_info* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %4, align 8
  %33 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %5, align 8
  %35 = getelementptr inbounds %struct.ecore_tunnel_info, %struct.ecore_tunnel_info* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %4, align 8
  %39 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %5, align 8
  %41 = getelementptr inbounds %struct.ecore_tunnel_info, %struct.ecore_tunnel_info* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %4, align 8
  %45 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %5, align 8
  %47 = getelementptr inbounds %struct.ecore_tunnel_info, %struct.ecore_tunnel_info* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %4, align 8
  %51 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %5, align 8
  %53 = getelementptr inbounds %struct.ecore_tunnel_info, %struct.ecore_tunnel_info* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %4, align 8
  %57 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %5, align 8
  %59 = getelementptr inbounds %struct.ecore_tunnel_info, %struct.ecore_tunnel_info* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %4, align 8
  %63 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %5, align 8
  %65 = getelementptr inbounds %struct.ecore_tunnel_info, %struct.ecore_tunnel_info* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %4, align 8
  %69 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %5, align 8
  %71 = getelementptr inbounds %struct.ecore_tunnel_info, %struct.ecore_tunnel_info* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %4, align 8
  %75 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.ecore_tunnel_info*, %struct.ecore_tunnel_info** %5, align 8
  %77 = getelementptr inbounds %struct.ecore_tunnel_info, %struct.ecore_tunnel_info* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %4, align 8
  %81 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
