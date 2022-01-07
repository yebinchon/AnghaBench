; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_unlink_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_unlink_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.table_config = type { i32, %struct.TYPE_3__*, i64, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 (i32, i32*)*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.namedobj_instance = type { i32 }
%struct.table_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_fw_chain*, %struct.table_config*)* @unlink_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unlink_table(%struct.ip_fw_chain* %0, %struct.table_config* %1) #0 {
  %3 = alloca %struct.ip_fw_chain*, align 8
  %4 = alloca %struct.table_config*, align 8
  %5 = alloca %struct.namedobj_instance*, align 8
  %6 = alloca %struct.table_info*, align 8
  %7 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %3, align 8
  store %struct.table_config* %1, %struct.table_config** %4, align 8
  %8 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %9 = call i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain* %8)
  %10 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %11 = call i32 @IPFW_WLOCK_ASSERT(%struct.ip_fw_chain* %10)
  %12 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %13 = call %struct.namedobj_instance* @CHAIN_TO_NI(%struct.ip_fw_chain* %12)
  store %struct.namedobj_instance* %13, %struct.namedobj_instance** %5, align 8
  %14 = load %struct.table_config*, %struct.table_config** %4, align 8
  %15 = getelementptr inbounds %struct.table_config, %struct.table_config* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load %struct.namedobj_instance*, %struct.namedobj_instance** %5, align 8
  %19 = load %struct.table_config*, %struct.table_config** %4, align 8
  %20 = getelementptr inbounds %struct.table_config, %struct.table_config* %19, i32 0, i32 3
  %21 = call i32 @ipfw_objhash_del(%struct.namedobj_instance* %18, %struct.TYPE_4__* %20)
  %22 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.table_info* @KIDX_TO_TI(%struct.ip_fw_chain* %22, i32 %23)
  store %struct.table_info* %24, %struct.table_info** %6, align 8
  %25 = load %struct.table_info*, %struct.table_info** %6, align 8
  %26 = call i32 @memset(%struct.table_info* %25, i32 0, i32 4)
  %27 = load %struct.table_config*, %struct.table_config** %4, align 8
  %28 = getelementptr inbounds %struct.table_config, %struct.table_config* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.table_config*, %struct.table_config** %4, align 8
  %30 = getelementptr inbounds %struct.table_config, %struct.table_config* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 8
  %35 = load %struct.table_config*, %struct.table_config** %4, align 8
  %36 = getelementptr inbounds %struct.table_config, %struct.table_config* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (i32, i32*)*, i32 (i32, i32*)** %38, align 8
  %40 = icmp ne i32 (i32, i32*)* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %2
  %42 = load %struct.table_config*, %struct.table_config** %4, align 8
  %43 = getelementptr inbounds %struct.table_config, %struct.table_config* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32 (i32, i32*)*, i32 (i32, i32*)** %45, align 8
  %47 = load %struct.table_config*, %struct.table_config** %4, align 8
  %48 = getelementptr inbounds %struct.table_config, %struct.table_config* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 %46(i32 %49, i32* null)
  br label %51

51:                                               ; preds = %41, %2
  ret void
}

declare dso_local i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_WLOCK_ASSERT(%struct.ip_fw_chain*) #1

declare dso_local %struct.namedobj_instance* @CHAIN_TO_NI(%struct.ip_fw_chain*) #1

declare dso_local i32 @ipfw_objhash_del(%struct.namedobj_instance*, %struct.TYPE_4__*) #1

declare dso_local %struct.table_info* @KIDX_TO_TI(%struct.ip_fw_chain*, i32) #1

declare dso_local i32 @memset(%struct.table_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
