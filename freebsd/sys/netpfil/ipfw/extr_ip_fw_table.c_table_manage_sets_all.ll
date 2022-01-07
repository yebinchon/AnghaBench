; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_table_manage_sets_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_table_manage_sets_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }

@V_fw_tables_sets = common dso_local global i32 0, align 4
@IPFW_TLV_TBL_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32, i32, i32)* @table_manage_sets_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @table_manage_sets_all(%struct.ip_fw_chain* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_fw_chain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %16 [
    i32 129, label %11
    i32 128, label %11
    i32 130, label %11
  ]

11:                                               ; preds = %4, %4, %4
  %12 = load i32, i32* @V_fw_tables_sets, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %30

15:                                               ; preds = %11
  br label %22

16:                                               ; preds = %4
  %17 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @table_manage_sets(%struct.ip_fw_chain* %17, i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %30

22:                                               ; preds = %15
  %23 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %24 = call i32 @CHAIN_TO_NI(%struct.ip_fw_chain* %23)
  %25 = load i32, i32* @IPFW_TLV_TBL_NAME, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @ipfw_obj_manage_sets(i32 %24, i32 %25, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %22, %16, %14
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @table_manage_sets(%struct.ip_fw_chain*, i32, i32, i32) #1

declare dso_local i32 @ipfw_obj_manage_sets(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CHAIN_TO_NI(%struct.ip_fw_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
