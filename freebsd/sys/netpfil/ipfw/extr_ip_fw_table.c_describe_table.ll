; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_describe_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_describe_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.sockopt_data = type { i32 }
%struct._ipfw_obj_header = type { i32 }
%struct.table_config = type { i32 }
%struct.tid_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32*, %struct.sockopt_data*)* @describe_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @describe_table(%struct.ip_fw_chain* %0, i32* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct._ipfw_obj_header*, align 8
  %9 = alloca %struct.table_config*, align 8
  %10 = alloca %struct.tid_info, align 4
  %11 = alloca i64, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  store i64 8, i64* %11, align 8
  %12 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %13 = load i64, i64* %11, align 8
  %14 = call i64 @ipfw_get_sopt_header(%struct.sockopt_data* %12, i64 %13)
  %15 = inttoptr i64 %14 to %struct._ipfw_obj_header*
  store %struct._ipfw_obj_header* %15, %struct._ipfw_obj_header** %8, align 8
  %16 = load %struct._ipfw_obj_header*, %struct._ipfw_obj_header** %8, align 8
  %17 = icmp eq %struct._ipfw_obj_header* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %42

20:                                               ; preds = %3
  %21 = load %struct._ipfw_obj_header*, %struct._ipfw_obj_header** %8, align 8
  %22 = call i32 @objheader_to_ti(%struct._ipfw_obj_header* %21, %struct.tid_info* %10)
  %23 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %24 = call i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain* %23)
  %25 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %26 = call i32 @CHAIN_TO_NI(%struct.ip_fw_chain* %25)
  %27 = call %struct.table_config* @find_table(i32 %26, %struct.tid_info* %10)
  store %struct.table_config* %27, %struct.table_config** %9, align 8
  %28 = icmp eq %struct.table_config* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %31 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %30)
  %32 = load i32, i32* @ESRCH, align 4
  store i32 %32, i32* %4, align 4
  br label %42

33:                                               ; preds = %20
  %34 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %35 = load %struct.table_config*, %struct.table_config** %9, align 8
  %36 = load %struct._ipfw_obj_header*, %struct._ipfw_obj_header** %8, align 8
  %37 = getelementptr inbounds %struct._ipfw_obj_header, %struct._ipfw_obj_header* %36, i64 1
  %38 = bitcast %struct._ipfw_obj_header* %37 to i32*
  %39 = call i32 @export_table_info(%struct.ip_fw_chain* %34, %struct.table_config* %35, i32* %38)
  %40 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %41 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %33, %29, %18
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @ipfw_get_sopt_header(%struct.sockopt_data*, i64) #1

declare dso_local i32 @objheader_to_ti(%struct._ipfw_obj_header*, %struct.tid_info*) #1

declare dso_local i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.table_config* @find_table(i32, %struct.tid_info*) #1

declare dso_local i32 @CHAIN_TO_NI(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @export_table_info(%struct.ip_fw_chain*, %struct.table_config*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
