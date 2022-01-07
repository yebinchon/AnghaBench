; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_table_findbykidx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_table_findbykidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.named_object = type { i32 }
%struct.ip_fw_chain = type { i32 }
%struct.namedobj_instance = type { i32 }
%struct.table_config = type { %struct.named_object }

@.str = private unnamed_addr constant [30 x i8] c"Table with index %d not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.named_object* (%struct.ip_fw_chain*, i32)* @table_findbykidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.named_object* @table_findbykidx(%struct.ip_fw_chain* %0, i32 %1) #0 {
  %3 = alloca %struct.ip_fw_chain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.namedobj_instance*, align 8
  %6 = alloca %struct.table_config*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %8 = call i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain* %7)
  %9 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %10 = call %struct.namedobj_instance* @CHAIN_TO_NI(%struct.ip_fw_chain* %9)
  store %struct.namedobj_instance* %10, %struct.namedobj_instance** %5, align 8
  %11 = load %struct.namedobj_instance*, %struct.namedobj_instance** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @ipfw_objhash_lookup_kidx(%struct.namedobj_instance* %11, i32 %12)
  %14 = inttoptr i64 %13 to %struct.table_config*
  store %struct.table_config* %14, %struct.table_config** %6, align 8
  %15 = load %struct.table_config*, %struct.table_config** %6, align 8
  %16 = icmp ne %struct.table_config* %15, null
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @KASSERT(i32 %17, i8* %20)
  %22 = load %struct.table_config*, %struct.table_config** %6, align 8
  %23 = getelementptr inbounds %struct.table_config, %struct.table_config* %22, i32 0, i32 0
  ret %struct.named_object* %23
}

declare dso_local i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain*) #1

declare dso_local %struct.namedobj_instance* @CHAIN_TO_NI(%struct.ip_fw_chain*) #1

declare dso_local i64 @ipfw_objhash_lookup_kidx(%struct.namedobj_instance*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
