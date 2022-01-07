; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_init_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_init_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32 }
%union.nic_mbx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NIC_MBOX_MSG_CFG_DONE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to alloc/config VF's QSet resources\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicvf*)* @nicvf_init_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_init_resources(%struct.nicvf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nicvf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.nic_mbx, align 4
  store %struct.nicvf* %0, %struct.nicvf** %3, align 8
  %6 = bitcast %union.nic_mbx* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 4, i1 false)
  %7 = load i32, i32* @NIC_MBOX_MSG_CFG_DONE, align 4
  %8 = bitcast %union.nic_mbx* %5 to %struct.TYPE_2__*
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %11 = load i32, i32* @TRUE, align 4
  %12 = call i32 @nicvf_qset_config(%struct.nicvf* %10, i32 %11)
  %13 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %14 = load i32, i32* @TRUE, align 4
  %15 = call i32 @nicvf_config_data_transfer(%struct.nicvf* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %20 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %27

24:                                               ; preds = %1
  %25 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %26 = call i32 @nicvf_write_to_mbx(%struct.nicvf* %25, %union.nic_mbx* %5)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %24, %18
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nicvf_qset_config(%struct.nicvf*, i32) #2

declare dso_local i32 @nicvf_config_data_transfer(%struct.nicvf*, i32) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @nicvf_write_to_mbx(%struct.nicvf*, %union.nic_mbx*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
