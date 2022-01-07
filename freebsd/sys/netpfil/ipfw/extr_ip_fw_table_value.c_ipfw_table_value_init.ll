; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_value.c_ipfw_table_value_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_value.c_ipfw_table_value_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { %struct.tables_config*, i32 }
%struct.tables_config = type { i32, i32 }

@VALDATA_START_SIZE = common dso_local global i32 0, align 4
@M_IPFW = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@hash_table_value = common dso_local global i32 0, align 4
@cmp_table_value = common dso_local global i32 0, align 4
@scodes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipfw_table_value_init(%struct.ip_fw_chain* %0, i32 %1) #0 {
  %3 = alloca %struct.ip_fw_chain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tables_config*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @VALDATA_START_SIZE, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 4
  %9 = trunc i64 %8 to i32
  %10 = load i32, i32* @M_IPFW, align 4
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @malloc(i32 %9, i32 %10, i32 %13)
  %15 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %16 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %18 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %17, i32 0, i32 0
  %19 = load %struct.tables_config*, %struct.tables_config** %18, align 8
  store %struct.tables_config* %19, %struct.tables_config** %5, align 8
  %20 = load i32, i32* @VALDATA_START_SIZE, align 4
  %21 = load %struct.tables_config*, %struct.tables_config** %5, align 8
  %22 = getelementptr inbounds %struct.tables_config, %struct.tables_config* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.tables_config*, %struct.tables_config** %5, align 8
  %24 = getelementptr inbounds %struct.tables_config, %struct.tables_config* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ipfw_objhash_create(i32 %25)
  %27 = load %struct.tables_config*, %struct.tables_config** %5, align 8
  %28 = getelementptr inbounds %struct.tables_config, %struct.tables_config* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.tables_config*, %struct.tables_config** %5, align 8
  %30 = getelementptr inbounds %struct.tables_config, %struct.tables_config* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @hash_table_value, align 4
  %33 = load i32, i32* @cmp_table_value, align 4
  %34 = call i32 @ipfw_objhash_set_funcs(i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @scodes, align 4
  %37 = call i32 @IPFW_ADD_SOPT_HANDLER(i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @ipfw_objhash_create(i32) #1

declare dso_local i32 @ipfw_objhash_set_funcs(i32, i32, i32) #1

declare dso_local i32 @IPFW_ADD_SOPT_HANDLER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
