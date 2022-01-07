; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_value.c_rollback_table_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_value.c_rollback_table_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tableop_state = type { i32, %struct.tentry_info*, i32, i32, %struct.ip_fw_chain* }
%struct.tentry_info = type { i64 }
%struct.ip_fw_chain = type { i32 }
%struct.table_value = type { i32 }
%struct.namedobj_instance = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rollback_table_values(%struct.tableop_state* %0) #0 {
  %2 = alloca %struct.tableop_state*, align 8
  %3 = alloca %struct.ip_fw_chain*, align 8
  %4 = alloca %struct.table_value*, align 8
  %5 = alloca %struct.tentry_info*, align 8
  %6 = alloca %struct.namedobj_instance*, align 8
  %7 = alloca i32, align 4
  store %struct.tableop_state* %0, %struct.tableop_state** %2, align 8
  %8 = load %struct.tableop_state*, %struct.tableop_state** %2, align 8
  %9 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %8, i32 0, i32 4
  %10 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %9, align 8
  store %struct.ip_fw_chain* %10, %struct.ip_fw_chain** %3, align 8
  %11 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %12 = call i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain* %11)
  %13 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %14 = load %struct.tableop_state*, %struct.tableop_state** %2, align 8
  %15 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.tableop_state*, %struct.tableop_state** %2, align 8
  %18 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @get_value_ptrs(%struct.ip_fw_chain* %13, i32 %16, i32 %19, %struct.table_value** %4, %struct.namedobj_instance** %6)
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %46, %1
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.tableop_state*, %struct.tableop_state** %2, align 8
  %24 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %21
  %28 = load %struct.tableop_state*, %struct.tableop_state** %2, align 8
  %29 = getelementptr inbounds %struct.tableop_state, %struct.tableop_state* %28, i32 0, i32 1
  %30 = load %struct.tentry_info*, %struct.tentry_info** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %30, i64 %32
  store %struct.tentry_info* %33, %struct.tentry_info** %5, align 8
  %34 = load %struct.tentry_info*, %struct.tentry_info** %5, align 8
  %35 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %46

39:                                               ; preds = %27
  %40 = load %struct.namedobj_instance*, %struct.namedobj_instance** %6, align 8
  %41 = load %struct.table_value*, %struct.table_value** %4, align 8
  %42 = load %struct.tentry_info*, %struct.tentry_info** %5, align 8
  %43 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @unref_table_value(%struct.namedobj_instance* %40, %struct.table_value* %41, i64 %44)
  br label %46

46:                                               ; preds = %39, %38
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %21

49:                                               ; preds = %21
  ret void
}

declare dso_local i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain*) #1

declare dso_local i32 @get_value_ptrs(%struct.ip_fw_chain*, i32, i32, %struct.table_value**, %struct.namedobj_instance**) #1

declare dso_local i32 @unref_table_value(%struct.namedobj_instance*, %struct.table_value*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
