; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_table_get_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_table_get_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.table_config = type { i32, i32, %struct.table_algo*, %struct.TYPE_2__ }
%struct.table_algo = type { i32, i32 (i32, %struct.table_info*, i32, %struct.dump_args*)*, i32 (i32, %struct.table_info*)* }
%struct.table_info = type { i32 }
%struct.dump_args = type opaque
%struct.TYPE_2__ = type { i32 }
%struct.dump_args.0 = type { i32 }

@TA_FLAG_READONLY = common dso_local global i32 0, align 4
@TA_FLAG_EXTCOUNTER = common dso_local global i32 0, align 4
@count_ext_entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.table_config*)* @table_get_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @table_get_count(%struct.ip_fw_chain* %0, %struct.table_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_fw_chain*, align 8
  %5 = alloca %struct.table_config*, align 8
  %6 = alloca %struct.table_info*, align 8
  %7 = alloca %struct.table_algo*, align 8
  %8 = alloca %struct.dump_args.0, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %4, align 8
  store %struct.table_config* %1, %struct.table_config** %5, align 8
  %9 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %10 = load %struct.table_config*, %struct.table_config** %5, align 8
  %11 = getelementptr inbounds %struct.table_config, %struct.table_config* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.table_info* @KIDX_TO_TI(%struct.ip_fw_chain* %9, i32 %13)
  store %struct.table_info* %14, %struct.table_info** %6, align 8
  %15 = load %struct.table_config*, %struct.table_config** %5, align 8
  %16 = getelementptr inbounds %struct.table_config, %struct.table_config* %15, i32 0, i32 2
  %17 = load %struct.table_algo*, %struct.table_algo** %16, align 8
  store %struct.table_algo* %17, %struct.table_algo** %7, align 8
  %18 = load %struct.table_algo*, %struct.table_algo** %7, align 8
  %19 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @TA_FLAG_READONLY, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.table_config*, %struct.table_config** %5, align 8
  %26 = getelementptr inbounds %struct.table_config, %struct.table_config* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %3, align 4
  br label %58

28:                                               ; preds = %2
  %29 = load %struct.table_algo*, %struct.table_algo** %7, align 8
  %30 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @TA_FLAG_EXTCOUNTER, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load %struct.table_algo*, %struct.table_algo** %7, align 8
  %37 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %36, i32 0, i32 2
  %38 = load i32 (i32, %struct.table_info*)*, i32 (i32, %struct.table_info*)** %37, align 8
  %39 = load %struct.table_config*, %struct.table_config** %5, align 8
  %40 = getelementptr inbounds %struct.table_config, %struct.table_config* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.table_info*, %struct.table_info** %6, align 8
  %43 = call i32 %38(i32 %41, %struct.table_info* %42)
  store i32 %43, i32* %3, align 4
  br label %58

44:                                               ; preds = %28
  %45 = call i32 @memset(%struct.dump_args.0* %8, i32 0, i32 4)
  %46 = load %struct.table_algo*, %struct.table_algo** %7, align 8
  %47 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %46, i32 0, i32 1
  %48 = load i32 (i32, %struct.table_info*, i32, %struct.dump_args*)*, i32 (i32, %struct.table_info*, i32, %struct.dump_args*)** %47, align 8
  %49 = load %struct.table_config*, %struct.table_config** %5, align 8
  %50 = getelementptr inbounds %struct.table_config, %struct.table_config* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.table_info*, %struct.table_info** %6, align 8
  %53 = load i32, i32* @count_ext_entries, align 4
  %54 = bitcast %struct.dump_args.0* %8 to %struct.dump_args*
  %55 = call i32 %48(i32 %51, %struct.table_info* %52, i32 %53, %struct.dump_args* %54)
  %56 = getelementptr inbounds %struct.dump_args.0, %struct.dump_args.0* %8, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %44, %35, %24
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.table_info* @KIDX_TO_TI(%struct.ip_fw_chain*, i32) #1

declare dso_local i32 @memset(%struct.dump_args.0*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
