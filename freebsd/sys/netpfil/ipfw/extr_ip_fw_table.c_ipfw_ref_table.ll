; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_ipfw_ref_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_ipfw_ref_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.tid_info = type { i32 }
%struct.table_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipfw_ref_table(%struct.ip_fw_chain* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tid_info, align 4
  %9 = alloca %struct.table_config*, align 8
  %10 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %12 = call i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain* %11)
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @ntlv_to_ti(i32* %13, %struct.tid_info* %8)
  %15 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %16 = call i32 @CHAIN_TO_NI(%struct.ip_fw_chain* %15)
  %17 = call i32 @find_table_err(i32 %16, %struct.tid_info* %8, %struct.table_config** %9)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %35

22:                                               ; preds = %3
  %23 = load %struct.table_config*, %struct.table_config** %9, align 8
  %24 = icmp eq %struct.table_config* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @ESRCH, align 4
  store i32 %26, i32* %4, align 4
  br label %35

27:                                               ; preds = %22
  %28 = load %struct.table_config*, %struct.table_config** %9, align 8
  %29 = call i32 @tc_ref(%struct.table_config* %28)
  %30 = load %struct.table_config*, %struct.table_config** %9, align 8
  %31 = getelementptr inbounds %struct.table_config, %struct.table_config* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %27, %25, %20
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain*) #1

declare dso_local i32 @ntlv_to_ti(i32*, %struct.tid_info*) #1

declare dso_local i32 @find_table_err(i32, %struct.tid_info*, %struct.table_config**) #1

declare dso_local i32 @CHAIN_TO_NI(%struct.ip_fw_chain*) #1

declare dso_local i32 @tc_ref(%struct.table_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
