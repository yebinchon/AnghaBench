; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_dump_table_v1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_dump_table_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.sockopt_data = type { i64 }
%struct._ipfw_obj_header = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.tid_info = type { i32 }
%struct.table_config = type { i32, %struct.table_algo*, %struct.TYPE_4__ }
%struct.table_algo = type { i32 (i32, i32, i32, %struct.dump_args*)* }
%struct.dump_args = type opaque
%struct.TYPE_4__ = type { i32 }
%struct.dump_args.0 = type { i32, i32, %struct.sockopt_data*, %struct.table_config*, %struct.ip_fw_chain* }

@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dump_table_tentry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32*, %struct.sockopt_data*)* @dump_table_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_table_v1(%struct.ip_fw_chain* %0, i32* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct._ipfw_obj_header*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.tid_info, align 4
  %11 = alloca %struct.table_config*, align 8
  %12 = alloca %struct.table_algo*, align 8
  %13 = alloca %struct.dump_args.0, align 8
  %14 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  store i32 12, i32* %14, align 4
  %15 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %16 = load i32, i32* %14, align 4
  %17 = call i64 @ipfw_get_sopt_header(%struct.sockopt_data* %15, i32 %16)
  %18 = inttoptr i64 %17 to %struct._ipfw_obj_header*
  store %struct._ipfw_obj_header* %18, %struct._ipfw_obj_header** %8, align 8
  %19 = load %struct._ipfw_obj_header*, %struct._ipfw_obj_header** %8, align 8
  %20 = icmp eq %struct._ipfw_obj_header* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %88

23:                                               ; preds = %3
  %24 = load %struct._ipfw_obj_header*, %struct._ipfw_obj_header** %8, align 8
  %25 = getelementptr inbounds %struct._ipfw_obj_header, %struct._ipfw_obj_header* %24, i64 1
  %26 = bitcast %struct._ipfw_obj_header* %25 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %9, align 8
  %27 = load %struct._ipfw_obj_header*, %struct._ipfw_obj_header** %8, align 8
  %28 = call i32 @objheader_to_ti(%struct._ipfw_obj_header* %27, %struct.tid_info* %10)
  %29 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %30 = call i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain* %29)
  %31 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %32 = call i32 @CHAIN_TO_NI(%struct.ip_fw_chain* %31)
  %33 = call %struct.table_config* @find_table(i32 %32, %struct.tid_info* %10)
  store %struct.table_config* %33, %struct.table_config** %11, align 8
  %34 = icmp eq %struct.table_config* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %37 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %36)
  %38 = load i32, i32* @ESRCH, align 4
  store i32 %38, i32* %4, align 4
  br label %88

39:                                               ; preds = %23
  %40 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %41 = load %struct.table_config*, %struct.table_config** %11, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %43 = call i32 @export_table_info(%struct.ip_fw_chain* %40, %struct.table_config* %41, %struct.TYPE_5__* %42)
  %44 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %45 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %39
  %52 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %53 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %52)
  %54 = load i32, i32* @ENOMEM, align 4
  store i32 %54, i32* %4, align 4
  br label %88

55:                                               ; preds = %39
  %56 = call i32 @memset(%struct.dump_args.0* %13, i32 0, i32 32)
  %57 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %58 = getelementptr inbounds %struct.dump_args.0, %struct.dump_args.0* %13, i32 0, i32 4
  store %struct.ip_fw_chain* %57, %struct.ip_fw_chain** %58, align 8
  %59 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %60 = load %struct.table_config*, %struct.table_config** %11, align 8
  %61 = getelementptr inbounds %struct.table_config, %struct.table_config* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @KIDX_TO_TI(%struct.ip_fw_chain* %59, i32 %63)
  %65 = getelementptr inbounds %struct.dump_args.0, %struct.dump_args.0* %13, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = load %struct.table_config*, %struct.table_config** %11, align 8
  %67 = getelementptr inbounds %struct.dump_args.0, %struct.dump_args.0* %13, i32 0, i32 3
  store %struct.table_config* %66, %struct.table_config** %67, align 8
  %68 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %69 = getelementptr inbounds %struct.dump_args.0, %struct.dump_args.0* %13, i32 0, i32 2
  store %struct.sockopt_data* %68, %struct.sockopt_data** %69, align 8
  %70 = load %struct.table_config*, %struct.table_config** %11, align 8
  %71 = getelementptr inbounds %struct.table_config, %struct.table_config* %70, i32 0, i32 1
  %72 = load %struct.table_algo*, %struct.table_algo** %71, align 8
  store %struct.table_algo* %72, %struct.table_algo** %12, align 8
  %73 = load %struct.table_algo*, %struct.table_algo** %12, align 8
  %74 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %73, i32 0, i32 0
  %75 = load i32 (i32, i32, i32, %struct.dump_args*)*, i32 (i32, i32, i32, %struct.dump_args*)** %74, align 8
  %76 = load %struct.table_config*, %struct.table_config** %11, align 8
  %77 = getelementptr inbounds %struct.table_config, %struct.table_config* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.dump_args.0, %struct.dump_args.0* %13, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @dump_table_tentry, align 4
  %82 = bitcast %struct.dump_args.0* %13 to %struct.dump_args*
  %83 = call i32 %75(i32 %78, i32 %80, i32 %81, %struct.dump_args* %82)
  %84 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %85 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %84)
  %86 = getelementptr inbounds %struct.dump_args.0, %struct.dump_args.0* %13, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %55, %51, %35, %21
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i64 @ipfw_get_sopt_header(%struct.sockopt_data*, i32) #1

declare dso_local i32 @objheader_to_ti(%struct._ipfw_obj_header*, %struct.tid_info*) #1

declare dso_local i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.table_config* @find_table(i32, %struct.tid_info*) #1

declare dso_local i32 @CHAIN_TO_NI(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @export_table_info(%struct.ip_fw_chain*, %struct.table_config*, %struct.TYPE_5__*) #1

declare dso_local i32 @memset(%struct.dump_args.0*, i32, i32) #1

declare dso_local i32 @KIDX_TO_TI(%struct.ip_fw_chain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
