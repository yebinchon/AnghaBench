; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_find_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_find_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_config = type { i32 }
%struct.namedobj_instance = type { i32 }
%struct.tid_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.table_config* (%struct.namedobj_instance*, %struct.tid_info*)* @find_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.table_config* @find_table(%struct.namedobj_instance* %0, %struct.tid_info* %1) #0 {
  %3 = alloca %struct.table_config*, align 8
  %4 = alloca %struct.namedobj_instance*, align 8
  %5 = alloca %struct.tid_info*, align 8
  %6 = alloca %struct.table_config*, align 8
  store %struct.namedobj_instance* %0, %struct.namedobj_instance** %4, align 8
  store %struct.tid_info* %1, %struct.tid_info** %5, align 8
  %7 = load %struct.namedobj_instance*, %struct.namedobj_instance** %4, align 8
  %8 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %9 = call i64 @find_table_err(%struct.namedobj_instance* %7, %struct.tid_info* %8, %struct.table_config** %6)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.table_config* null, %struct.table_config** %3, align 8
  br label %14

12:                                               ; preds = %2
  %13 = load %struct.table_config*, %struct.table_config** %6, align 8
  store %struct.table_config* %13, %struct.table_config** %3, align 8
  br label %14

14:                                               ; preds = %12, %11
  %15 = load %struct.table_config*, %struct.table_config** %3, align 8
  ret %struct.table_config* %15
}

declare dso_local i64 @find_table_err(%struct.namedobj_instance*, %struct.tid_info*, %struct.table_config**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
