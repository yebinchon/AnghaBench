; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_table_manage_sets.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_table_manage_sets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }

@V_fw_tables_sets = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IPFW_TLV_TBL_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32, i32, i32)* @table_manage_sets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @table_manage_sets(%struct.ip_fw_chain* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  switch i32 %10, label %23 [
    i32 130, label %11
    i32 129, label %11
    i32 132, label %11
    i32 128, label %12
    i32 131, label %12
    i32 133, label %17
  ]

11:                                               ; preds = %4, %4, %4
  store i32 0, i32* %5, align 4
  br label %31

12:                                               ; preds = %4, %4
  %13 = load i32, i32* @V_fw_tables_sets, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %31

16:                                               ; preds = %12
  br label %23

17:                                               ; preds = %4
  %18 = load i32, i32* @V_fw_tables_sets, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %21, i32* %5, align 4
  br label %31

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %4, %16
  %24 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %25 = call i32 @CHAIN_TO_NI(%struct.ip_fw_chain* %24)
  %26 = load i32, i32* @IPFW_TLV_TBL_NAME, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @ipfw_obj_manage_sets(i32 %25, i32 %26, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %23, %20, %15, %11
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @ipfw_obj_manage_sets(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CHAIN_TO_NI(%struct.ip_fw_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
