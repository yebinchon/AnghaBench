; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_value.c_ipfw_garbage_table_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_value.c_ipfw_garbage_table_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.table_config = type { i32 }
%struct.tentry_info = type { i64, i32 }
%struct.table_value = type { i32 }
%struct.namedobj_instance = type { i32 }

@TEI_FLAGS_ADDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipfw_garbage_table_values(%struct.ip_fw_chain* %0, %struct.table_config* %1, %struct.tentry_info* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ip_fw_chain*, align 8
  %7 = alloca %struct.table_config*, align 8
  %8 = alloca %struct.tentry_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tentry_info*, align 8
  %13 = alloca %struct.table_value*, align 8
  %14 = alloca %struct.namedobj_instance*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %6, align 8
  store %struct.table_config* %1, %struct.table_config** %7, align 8
  store %struct.tentry_info* %2, %struct.tentry_info** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %16 = load %struct.table_config*, %struct.table_config** %7, align 8
  %17 = call i32 @get_value_ptrs(%struct.ip_fw_chain* %15, %struct.table_config* %16, i32 1, %struct.table_value** %13, %struct.namedobj_instance** %14)
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %54, %5
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %57

22:                                               ; preds = %18
  %23 = load %struct.tentry_info*, %struct.tentry_info** %8, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %23, i64 %25
  store %struct.tentry_info* %26, %struct.tentry_info** %12, align 8
  %27 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %28 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %54

32:                                               ; preds = %22
  %33 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %34 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @TEI_FLAGS_ADDED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %44 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  br label %54

45:                                               ; preds = %39, %32
  %46 = load %struct.namedobj_instance*, %struct.namedobj_instance** %14, align 8
  %47 = load %struct.table_value*, %struct.table_value** %13, align 8
  %48 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %49 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @unref_table_value(%struct.namedobj_instance* %46, %struct.table_value* %47, i64 %50)
  %52 = load %struct.tentry_info*, %struct.tentry_info** %12, align 8
  %53 = getelementptr inbounds %struct.tentry_info, %struct.tentry_info* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %45, %42, %31
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %18

57:                                               ; preds = %18
  ret void
}

declare dso_local i32 @get_value_ptrs(%struct.ip_fw_chain*, %struct.table_config*, i32, %struct.table_value**, %struct.namedobj_instance**) #1

declare dso_local i32 @unref_table_value(%struct.namedobj_instance*, %struct.table_value*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
