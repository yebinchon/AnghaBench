; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_dump_table_v0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_dump_table_v0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.sockopt_data = type { i64 }
%struct.TYPE_4__ = type { i64, i64, i32, i32 }
%struct.tid_info = type { i32, %struct.sockopt_data*, %struct.table_config*, %struct.ip_fw_chain*, i32 }
%struct.table_config = type { i32, %struct.table_algo*, %struct.TYPE_3__ }
%struct.table_algo = type { i32 (i32, i32, i32, %struct.tid_info*)* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dump_args = type { i32, %struct.sockopt_data*, %struct.table_config*, %struct.ip_fw_chain*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dump_table_xentry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32*, %struct.sockopt_data*)* @dump_table_v0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_table_v0(%struct.ip_fw_chain* %0, i32* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.tid_info, align 8
  %10 = alloca %struct.table_config*, align 8
  %11 = alloca %struct.table_algo*, align 8
  %12 = alloca %struct.dump_args, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  %15 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %16 = call i64 @ipfw_get_sopt_header(%struct.sockopt_data* %15, i32 24)
  %17 = inttoptr i64 %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %8, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %19 = icmp eq %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %101

22:                                               ; preds = %3
  %23 = call i32 @memset(%struct.tid_info* %9, i32 0, i32 40)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %9, i32 0, i32 4
  store i32 %26, i32* %27, align 8
  %28 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %29 = call i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain* %28)
  %30 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %31 = call i32 @CHAIN_TO_NI(%struct.ip_fw_chain* %30)
  %32 = call %struct.table_config* @find_table(i32 %31, %struct.tid_info* %9)
  store %struct.table_config* %32, %struct.table_config** %10, align 8
  %33 = icmp eq %struct.table_config* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %36 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %35)
  store i32 0, i32* %4, align 4
  br label %101

37:                                               ; preds = %22
  %38 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %39 = load %struct.table_config*, %struct.table_config** %10, align 8
  %40 = call i64 @table_get_count(%struct.ip_fw_chain* %38, %struct.table_config* %39)
  store i64 %40, i64* %14, align 8
  %41 = load i64, i64* %14, align 8
  %42 = mul i64 %41, 4
  %43 = add i64 %42, 24
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.table_config*, %struct.table_config** %10, align 8
  %51 = getelementptr inbounds %struct.table_config, %struct.table_config* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %9, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %61 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %13, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %37
  %66 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %67 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %66)
  %68 = load i32, i32* @ENOMEM, align 4
  store i32 %68, i32* %4, align 4
  br label %101

69:                                               ; preds = %37
  %70 = bitcast %struct.dump_args* %12 to %struct.tid_info*
  %71 = call i32 @memset(%struct.tid_info* %70, i32 0, i32 40)
  %72 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %73 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %12, i32 0, i32 3
  store %struct.ip_fw_chain* %72, %struct.ip_fw_chain** %73, align 8
  %74 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %75 = load %struct.table_config*, %struct.table_config** %10, align 8
  %76 = getelementptr inbounds %struct.table_config, %struct.table_config* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @KIDX_TO_TI(%struct.ip_fw_chain* %74, i32 %78)
  %80 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %12, i32 0, i32 0
  store i32 %79, i32* %80, align 8
  %81 = load %struct.table_config*, %struct.table_config** %10, align 8
  %82 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %12, i32 0, i32 2
  store %struct.table_config* %81, %struct.table_config** %82, align 8
  %83 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %84 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %12, i32 0, i32 1
  store %struct.sockopt_data* %83, %struct.sockopt_data** %84, align 8
  %85 = load %struct.table_config*, %struct.table_config** %10, align 8
  %86 = getelementptr inbounds %struct.table_config, %struct.table_config* %85, i32 0, i32 1
  %87 = load %struct.table_algo*, %struct.table_algo** %86, align 8
  store %struct.table_algo* %87, %struct.table_algo** %11, align 8
  %88 = load %struct.table_algo*, %struct.table_algo** %11, align 8
  %89 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %88, i32 0, i32 0
  %90 = load i32 (i32, i32, i32, %struct.tid_info*)*, i32 (i32, i32, i32, %struct.tid_info*)** %89, align 8
  %91 = load %struct.table_config*, %struct.table_config** %10, align 8
  %92 = getelementptr inbounds %struct.table_config, %struct.table_config* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %12, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @dump_table_xentry, align 4
  %97 = bitcast %struct.dump_args* %12 to %struct.tid_info*
  %98 = call i32 %90(i32 %93, i32 %95, i32 %96, %struct.tid_info* %97)
  %99 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %100 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %99)
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %69, %65, %34, %20
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i64 @ipfw_get_sopt_header(%struct.sockopt_data*, i32) #1

declare dso_local i32 @memset(%struct.tid_info*, i32, i32) #1

declare dso_local i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.table_config* @find_table(i32, %struct.tid_info*) #1

declare dso_local i32 @CHAIN_TO_NI(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i64 @table_get_count(%struct.ip_fw_chain*, %struct.table_config*) #1

declare dso_local i32 @KIDX_TO_TI(%struct.ip_fw_chain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
