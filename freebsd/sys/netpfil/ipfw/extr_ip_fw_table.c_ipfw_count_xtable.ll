; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_ipfw_count_xtable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_ipfw_count_xtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.tid_info = type { i32 }
%struct.table_config = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipfw_count_xtable(%struct.ip_fw_chain* %0, %struct.tid_info* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca %struct.tid_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.table_config*, align 8
  %9 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store %struct.tid_info* %1, %struct.tid_info** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %11 = call i32 @CHAIN_TO_NI(%struct.ip_fw_chain* %10)
  %12 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %13 = call %struct.table_config* @find_table(i32 %11, %struct.tid_info* %12)
  store %struct.table_config* %13, %struct.table_config** %8, align 8
  %14 = icmp eq %struct.table_config* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %4, align 4
  br label %35

17:                                               ; preds = %3
  %18 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %19 = load %struct.table_config*, %struct.table_config** %8, align 8
  %20 = call i32 @table_get_count(%struct.ip_fw_chain* %18, %struct.table_config* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %17
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %31, 4
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 4
  br label %34

34:                                               ; preds = %28, %17
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %15
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.table_config* @find_table(i32, %struct.tid_info*) #1

declare dso_local i32 @CHAIN_TO_NI(%struct.ip_fw_chain*) #1

declare dso_local i32 @table_get_count(%struct.ip_fw_chain*, %struct.table_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
