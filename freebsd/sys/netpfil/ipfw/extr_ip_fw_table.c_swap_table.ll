; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_swap_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_swap_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.sockopt_data = type { i32 }
%struct._ipfw_obj_header = type { i32 }
%struct.tid_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32*, %struct.sockopt_data*)* @swap_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swap_table(%struct.ip_fw_chain* %0, i32* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._ipfw_obj_header*, align 8
  %10 = alloca %struct.tid_info, align 4
  %11 = alloca %struct.tid_info, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  %12 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %13 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 8
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %32

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = bitcast i32* %20 to %struct._ipfw_obj_header*
  store %struct._ipfw_obj_header* %21, %struct._ipfw_obj_header** %9, align 8
  %22 = load %struct._ipfw_obj_header*, %struct._ipfw_obj_header** %9, align 8
  %23 = getelementptr inbounds %struct._ipfw_obj_header, %struct._ipfw_obj_header* %22, i32 0, i32 0
  %24 = call i32 @ntlv_to_ti(i32* %23, %struct.tid_info* %10)
  %25 = load %struct._ipfw_obj_header*, %struct._ipfw_obj_header** %9, align 8
  %26 = getelementptr inbounds %struct._ipfw_obj_header, %struct._ipfw_obj_header* %25, i64 1
  %27 = bitcast %struct._ipfw_obj_header* %26 to i32*
  %28 = call i32 @ntlv_to_ti(i32* %27, %struct.tid_info* %11)
  %29 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %30 = call i32 @swap_tables(%struct.ip_fw_chain* %29, %struct.tid_info* %10, %struct.tid_info* %11)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %19, %17
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @ntlv_to_ti(i32*, %struct.tid_info*) #1

declare dso_local i32 @swap_tables(%struct.ip_fw_chain*, %struct.tid_info*, %struct.tid_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
