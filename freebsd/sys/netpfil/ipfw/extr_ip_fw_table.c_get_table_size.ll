; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_get_table_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_get_table_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.sockopt_data = type { i32 }
%struct.tid_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32*, %struct.sockopt_data*)* @get_table_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_table_size(%struct.ip_fw_chain* %0, i32* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.tid_info, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  store i64 8, i64* %10, align 8
  %12 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %13 = load i64, i64* %10, align 8
  %14 = call i64 @ipfw_get_sopt_header(%struct.sockopt_data* %12, i64 %13)
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %35

20:                                               ; preds = %3
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32* %22, i32** %8, align 8
  %23 = call i32 @memset(%struct.tid_info* %9, i32 0, i32 4)
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %9, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %28 = call i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain* %27)
  %29 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @ipfw_count_xtable(%struct.ip_fw_chain* %29, %struct.tid_info* %9, i32* %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %33 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %32)
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %20, %18
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i64 @ipfw_get_sopt_header(%struct.sockopt_data*, i64) #1

declare dso_local i32 @memset(%struct.tid_info*, i32, i32) #1

declare dso_local i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @ipfw_count_xtable(%struct.ip_fw_chain*, %struct.tid_info*, i32*) #1

declare dso_local i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
