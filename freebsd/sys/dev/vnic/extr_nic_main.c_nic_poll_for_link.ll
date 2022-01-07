; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_poll_for_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_poll_for_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.nic_mbx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.nicpf = type { i64, i64*, i32, i32*, i32*, i32*, i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bgx_link_status = type { i64, i32, i32 }

@NIC_MBOX_MSG_BGX_LINK_CHANGE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nic_poll_for_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nic_poll_for_link(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %union.nic_mbx, align 8
  %4 = alloca %struct.nicpf*, align 8
  %5 = alloca %struct.bgx_link_status, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %9 = bitcast %union.nic_mbx* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.nicpf*
  store %struct.nicpf* %11, %struct.nicpf** %4, align 8
  %12 = load i32, i32* @NIC_MBOX_MSG_BGX_LINK_CHANGE, align 4
  %13 = bitcast %union.nic_mbx* %3 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %108, %1
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %18 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %111

21:                                               ; preds = %15
  %22 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %23 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %22, i32 0, i32 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  br label %108

31:                                               ; preds = %21
  %32 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %33 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %32, i32 0, i32 7
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @NIC_GET_BGX_FROM_VF_LMAC_MAP(i32 %37)
  store i64 %38, i64* %7, align 8
  %39 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %40 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %39, i32 0, i32 7
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @NIC_GET_LMAC_FROM_VF_LMAC_MAP(i32 %44)
  store i64 %45, i64* %8, align 8
  %46 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %47 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @bgx_get_lmac_link_state(i32 %48, i64 %49, i64 %50, %struct.bgx_link_status* %5)
  %52 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %53 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.bgx_link_status, %struct.bgx_link_status* %5, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %31
  br label %108

62:                                               ; preds = %31
  %63 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %64 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %63, i32 0, i32 5
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %107, label %70

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.bgx_link_status, %struct.bgx_link_status* %5, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %74 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  store i64 %72, i64* %77, align 8
  %78 = getelementptr inbounds %struct.bgx_link_status, %struct.bgx_link_status* %5, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %81 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 %79, i32* %84, align 4
  %85 = getelementptr inbounds %struct.bgx_link_status, %struct.bgx_link_status* %5, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %88 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %6, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 %86, i32* %91, align 4
  %92 = getelementptr inbounds %struct.bgx_link_status, %struct.bgx_link_status* %5, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = bitcast %union.nic_mbx* %3 to %struct.TYPE_4__*
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = getelementptr inbounds %struct.bgx_link_status, %struct.bgx_link_status* %5, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = bitcast %union.nic_mbx* %3 to %struct.TYPE_4__*
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = getelementptr inbounds %struct.bgx_link_status, %struct.bgx_link_status* %5, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = bitcast %union.nic_mbx* %3 to %struct.TYPE_4__*
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %105 = load i64, i64* %6, align 8
  %106 = call i32 @nic_send_msg_to_vf(%struct.nicpf* %104, i64 %105, %union.nic_mbx* %3)
  br label %107

107:                                              ; preds = %70, %62
  br label %108

108:                                              ; preds = %107, %61, %30
  %109 = load i64, i64* %6, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %6, align 8
  br label %15

111:                                              ; preds = %15
  %112 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %113 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %112, i32 0, i32 2
  %114 = load i32, i32* @hz, align 4
  %115 = mul nsw i32 %114, 2
  %116 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %117 = call i32 @callout_reset(i32* %113, i32 %115, void (i8*)* @nic_poll_for_link, %struct.nicpf* %116)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @NIC_GET_BGX_FROM_VF_LMAC_MAP(i32) #2

declare dso_local i64 @NIC_GET_LMAC_FROM_VF_LMAC_MAP(i32) #2

declare dso_local i32 @bgx_get_lmac_link_state(i32, i64, i64, %struct.bgx_link_status*) #2

declare dso_local i32 @nic_send_msg_to_vf(%struct.nicpf*, i64, %union.nic_mbx*) #2

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.nicpf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
