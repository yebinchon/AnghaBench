; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_link_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_link_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.table_config = type { i32, %struct.TYPE_3__*, i32, %struct.table_info, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 (i32, %struct.table_info*)* }
%struct.table_info = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.namedobj_instance = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_fw_chain*, %struct.table_config*)* @link_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_table(%struct.ip_fw_chain* %0, %struct.table_config* %1) #0 {
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
  %11 = call %struct.namedobj_instance* @CHAIN_TO_NI(%struct.ip_fw_chain* %10)
  store %struct.namedobj_instance* %11, %struct.namedobj_instance** %5, align 8
  %12 = load %struct.table_config*, %struct.table_config** %4, align 8
  %13 = getelementptr inbounds %struct.table_config, %struct.table_config* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.namedobj_instance*, %struct.namedobj_instance** %5, align 8
  %17 = load %struct.table_config*, %struct.table_config** %4, align 8
  %18 = getelementptr inbounds %struct.table_config, %struct.table_config* %17, i32 0, i32 4
  %19 = call i32 @ipfw_objhash_add(%struct.namedobj_instance* %16, %struct.TYPE_4__* %18)
  %20 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.table_info* @KIDX_TO_TI(%struct.ip_fw_chain* %20, i32 %21)
  store %struct.table_info* %22, %struct.table_info** %6, align 8
  %23 = load %struct.table_info*, %struct.table_info** %6, align 8
  %24 = load %struct.table_config*, %struct.table_config** %4, align 8
  %25 = getelementptr inbounds %struct.table_config, %struct.table_config* %24, i32 0, i32 3
  %26 = bitcast %struct.table_info* %23 to i8*
  %27 = bitcast %struct.table_info* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  %28 = load %struct.table_config*, %struct.table_config** %4, align 8
  %29 = getelementptr inbounds %struct.table_config, %struct.table_config* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32 (i32, %struct.table_info*)*, i32 (i32, %struct.table_info*)** %31, align 8
  %33 = icmp ne i32 (i32, %struct.table_info*)* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %2
  %35 = load %struct.table_config*, %struct.table_config** %4, align 8
  %36 = getelementptr inbounds %struct.table_config, %struct.table_config* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32 (i32, %struct.table_info*)*, i32 (i32, %struct.table_info*)** %38, align 8
  %40 = load %struct.table_config*, %struct.table_config** %4, align 8
  %41 = getelementptr inbounds %struct.table_config, %struct.table_config* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.table_info*, %struct.table_info** %6, align 8
  %44 = call i32 %39(i32 %42, %struct.table_info* %43)
  br label %45

45:                                               ; preds = %34, %2
  %46 = load %struct.table_config*, %struct.table_config** %4, align 8
  %47 = getelementptr inbounds %struct.table_config, %struct.table_config* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.table_config*, %struct.table_config** %4, align 8
  %49 = getelementptr inbounds %struct.table_config, %struct.table_config* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  ret void
}

declare dso_local i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain*) #1

declare dso_local %struct.namedobj_instance* @CHAIN_TO_NI(%struct.ip_fw_chain*) #1

declare dso_local i32 @ipfw_objhash_add(%struct.namedobj_instance*, %struct.TYPE_4__*) #1

declare dso_local %struct.table_info* @KIDX_TO_TI(%struct.ip_fw_chain*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
