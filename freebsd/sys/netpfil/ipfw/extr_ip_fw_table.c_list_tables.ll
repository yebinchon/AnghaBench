; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_list_tables.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_list_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.sockopt_data = type { i64 }
%struct._ipfw_obj_lheader = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32*, %struct.sockopt_data*)* @list_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_tables(%struct.ip_fw_chain* %0, i32* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct._ipfw_obj_lheader*, align 8
  %9 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  %10 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %11 = call i64 @ipfw_get_sopt_header(%struct.sockopt_data* %10, i32 8)
  %12 = inttoptr i64 %11 to %struct._ipfw_obj_lheader*
  store %struct._ipfw_obj_lheader* %12, %struct._ipfw_obj_lheader** %8, align 8
  %13 = load %struct._ipfw_obj_lheader*, %struct._ipfw_obj_lheader** %8, align 8
  %14 = icmp eq %struct._ipfw_obj_lheader* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %4, align 4
  br label %37

17:                                               ; preds = %3
  %18 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %19 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct._ipfw_obj_lheader*, %struct._ipfw_obj_lheader** %8, align 8
  %22 = getelementptr inbounds %struct._ipfw_obj_lheader, %struct._ipfw_obj_lheader* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %37

27:                                               ; preds = %17
  %28 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %29 = call i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain* %28)
  %30 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %31 = load %struct._ipfw_obj_lheader*, %struct._ipfw_obj_lheader** %8, align 8
  %32 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %33 = call i32 @export_tables(%struct.ip_fw_chain* %30, %struct._ipfw_obj_lheader* %31, %struct.sockopt_data* %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %35 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %34)
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %27, %25, %15
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @ipfw_get_sopt_header(%struct.sockopt_data*, i32) #1

declare dso_local i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @export_tables(%struct.ip_fw_chain*, %struct._ipfw_obj_lheader*, %struct.sockopt_data*) #1

declare dso_local i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
