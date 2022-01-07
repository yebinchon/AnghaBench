; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_ipfw_dump_table_legacy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_ipfw_dump_table_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.tid_info = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32* }
%struct.table_config = type { i32, %struct.TYPE_4__, %struct.table_algo* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.table_algo = type { i32 (i32, i32, i32, %struct.dump_args*)* }
%struct.dump_args = type opaque
%struct.dump_args.0 = type { i32, i32, i32, i32*, %struct.table_config*, %struct.ip_fw_chain* }

@IPFW_TABLE_ADDR = common dso_local global i64 0, align 8
@dump_table_entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipfw_dump_table_legacy(%struct.ip_fw_chain* %0, %struct.tid_info* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca %struct.tid_info*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.table_config*, align 8
  %9 = alloca %struct.table_algo*, align 8
  %10 = alloca %struct.dump_args.0, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store %struct.tid_info* %1, %struct.tid_info** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %14 = call i32 @CHAIN_TO_NI(%struct.ip_fw_chain* %13)
  %15 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %16 = call %struct.table_config* @find_table(i32 %14, %struct.tid_info* %15)
  store %struct.table_config* %16, %struct.table_config** %8, align 8
  %17 = icmp eq %struct.table_config* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %69

19:                                               ; preds = %3
  %20 = load %struct.table_config*, %struct.table_config** %8, align 8
  %21 = getelementptr inbounds %struct.table_config, %struct.table_config* %20, i32 0, i32 2
  %22 = load %struct.table_algo*, %struct.table_algo** %21, align 8
  store %struct.table_algo* %22, %struct.table_algo** %9, align 8
  %23 = load %struct.table_config*, %struct.table_config** %8, align 8
  %24 = getelementptr inbounds %struct.table_config, %struct.table_config* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IPFW_TABLE_ADDR, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %69

30:                                               ; preds = %19
  %31 = call i32 @memset(%struct.dump_args.0* %10, i32 0, i32 40)
  %32 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %33 = getelementptr inbounds %struct.dump_args.0, %struct.dump_args.0* %10, i32 0, i32 5
  store %struct.ip_fw_chain* %32, %struct.ip_fw_chain** %33, align 8
  %34 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %35 = load %struct.table_config*, %struct.table_config** %8, align 8
  %36 = getelementptr inbounds %struct.table_config, %struct.table_config* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @KIDX_TO_TI(%struct.ip_fw_chain* %34, i32 %38)
  %40 = getelementptr inbounds %struct.dump_args.0, %struct.dump_args.0* %10, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load %struct.table_config*, %struct.table_config** %8, align 8
  %42 = getelementptr inbounds %struct.dump_args.0, %struct.dump_args.0* %10, i32 0, i32 4
  store %struct.table_config* %41, %struct.table_config** %42, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = getelementptr inbounds %struct.dump_args.0, %struct.dump_args.0* %10, i32 0, i32 3
  store i32* %46, i32** %47, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.dump_args.0, %struct.dump_args.0* %10, i32 0, i32 2
  store i32 %50, i32* %51, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load %struct.table_algo*, %struct.table_algo** %9, align 8
  %55 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %54, i32 0, i32 0
  %56 = load i32 (i32, i32, i32, %struct.dump_args*)*, i32 (i32, i32, i32, %struct.dump_args*)** %55, align 8
  %57 = load %struct.table_config*, %struct.table_config** %8, align 8
  %58 = getelementptr inbounds %struct.table_config, %struct.table_config* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.dump_args.0, %struct.dump_args.0* %10, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @dump_table_entry, align 4
  %63 = bitcast %struct.dump_args.0* %10 to %struct.dump_args*
  %64 = call i32 %56(i32 %59, i32 %61, i32 %62, %struct.dump_args* %63)
  %65 = getelementptr inbounds %struct.dump_args.0, %struct.dump_args.0* %10, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %30, %29, %18
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.table_config* @find_table(i32, %struct.tid_info*) #1

declare dso_local i32 @CHAIN_TO_NI(%struct.ip_fw_chain*) #1

declare dso_local i32 @memset(%struct.dump_args.0*, i32, i32) #1

declare dso_local i32 @KIDX_TO_TI(%struct.ip_fw_chain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
