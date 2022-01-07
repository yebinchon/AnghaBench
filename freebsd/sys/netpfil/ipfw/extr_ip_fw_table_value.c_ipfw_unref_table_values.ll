; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_value.c_ipfw_unref_table_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_value.c_ipfw_unref_table_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.table_config = type { i32 }
%struct.table_algo = type { i32 (i8*, %struct.table_info*, i32, %struct.flush_args*)* }
%struct.flush_args = type opaque
%struct.table_info = type { i32 }
%struct.flush_args.0 = type { %struct.table_info*, i8*, %struct.table_algo*, %struct.ip_fw_chain* }

@unref_table_value_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipfw_unref_table_values(%struct.ip_fw_chain* %0, %struct.table_config* %1, %struct.table_algo* %2, i8* %3, %struct.table_info* %4) #0 {
  %6 = alloca %struct.ip_fw_chain*, align 8
  %7 = alloca %struct.table_config*, align 8
  %8 = alloca %struct.table_algo*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.table_info*, align 8
  %11 = alloca %struct.flush_args.0, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %6, align 8
  store %struct.table_config* %1, %struct.table_config** %7, align 8
  store %struct.table_algo* %2, %struct.table_algo** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.table_info* %4, %struct.table_info** %10, align 8
  %12 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %13 = call i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain* %12)
  %14 = call i32 @memset(%struct.flush_args.0* %11, i32 0, i32 32)
  %15 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %16 = getelementptr inbounds %struct.flush_args.0, %struct.flush_args.0* %11, i32 0, i32 3
  store %struct.ip_fw_chain* %15, %struct.ip_fw_chain** %16, align 8
  %17 = load %struct.table_algo*, %struct.table_algo** %8, align 8
  %18 = getelementptr inbounds %struct.flush_args.0, %struct.flush_args.0* %11, i32 0, i32 2
  store %struct.table_algo* %17, %struct.table_algo** %18, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = getelementptr inbounds %struct.flush_args.0, %struct.flush_args.0* %11, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = load %struct.table_info*, %struct.table_info** %10, align 8
  %22 = getelementptr inbounds %struct.flush_args.0, %struct.flush_args.0* %11, i32 0, i32 0
  store %struct.table_info* %21, %struct.table_info** %22, align 8
  %23 = load %struct.table_algo*, %struct.table_algo** %8, align 8
  %24 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %23, i32 0, i32 0
  %25 = load i32 (i8*, %struct.table_info*, i32, %struct.flush_args*)*, i32 (i8*, %struct.table_info*, i32, %struct.flush_args*)** %24, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load %struct.table_info*, %struct.table_info** %10, align 8
  %28 = load i32, i32* @unref_table_value_cb, align 4
  %29 = bitcast %struct.flush_args.0* %11 to %struct.flush_args*
  %30 = call i32 %25(i8* %26, %struct.table_info* %27, i32 %28, %struct.flush_args* %29)
  ret void
}

declare dso_local i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain*) #1

declare dso_local i32 @memset(%struct.flush_args.0*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
