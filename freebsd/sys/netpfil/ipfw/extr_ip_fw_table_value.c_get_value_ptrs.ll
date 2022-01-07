; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_value.c_get_value_ptrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_value.c_get_value_ptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i64 }
%struct.table_config = type { i32 }
%struct.table_value = type { i32 }
%struct.namedobj_instance = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_fw_chain*, %struct.table_config*, i32, %struct.table_value**, %struct.namedobj_instance**)* @get_value_ptrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_value_ptrs(%struct.ip_fw_chain* %0, %struct.table_config* %1, i32 %2, %struct.table_value** %3, %struct.namedobj_instance** %4) #0 {
  %6 = alloca %struct.ip_fw_chain*, align 8
  %7 = alloca %struct.table_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.table_value**, align 8
  %10 = alloca %struct.namedobj_instance**, align 8
  %11 = alloca %struct.table_value*, align 8
  %12 = alloca %struct.namedobj_instance*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %6, align 8
  store %struct.table_config* %1, %struct.table_config** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.table_value** %3, %struct.table_value*** %9, align 8
  store %struct.namedobj_instance** %4, %struct.namedobj_instance*** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %5
  %16 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %17 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.table_value*
  store %struct.table_value* %19, %struct.table_value** %11, align 8
  %20 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %21 = call %struct.namedobj_instance* @CHAIN_TO_VI(%struct.ip_fw_chain* %20)
  store %struct.namedobj_instance* %21, %struct.namedobj_instance** %12, align 8
  br label %23

22:                                               ; preds = %5
  store %struct.table_value* null, %struct.table_value** %11, align 8
  store %struct.namedobj_instance* null, %struct.namedobj_instance** %12, align 8
  br label %23

23:                                               ; preds = %22, %15
  %24 = load %struct.table_value**, %struct.table_value*** %9, align 8
  %25 = icmp ne %struct.table_value** %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.table_value*, %struct.table_value** %11, align 8
  %28 = load %struct.table_value**, %struct.table_value*** %9, align 8
  store %struct.table_value* %27, %struct.table_value** %28, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load %struct.namedobj_instance**, %struct.namedobj_instance*** %10, align 8
  %31 = icmp ne %struct.namedobj_instance** %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.namedobj_instance*, %struct.namedobj_instance** %12, align 8
  %34 = load %struct.namedobj_instance**, %struct.namedobj_instance*** %10, align 8
  store %struct.namedobj_instance* %33, %struct.namedobj_instance** %34, align 8
  br label %35

35:                                               ; preds = %32, %29
  ret void
}

declare dso_local %struct.namedobj_instance* @CHAIN_TO_VI(%struct.ip_fw_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
