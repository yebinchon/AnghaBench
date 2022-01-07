; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_flush_table_v0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_flush_table_v0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.sockopt_data = type { i32 }
%struct._ipfw_obj_header = type { i32 }
%struct.tid_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IP_FW_TABLE_XDESTROY = common dso_local global i64 0, align 8
@IP_FW_TABLE_XFLUSH = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.TYPE_3__*, %struct.sockopt_data*)* @flush_table_v0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush_table_v0(%struct.ip_fw_chain* %0, %struct.TYPE_3__* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._ipfw_obj_header*, align 8
  %10 = alloca %struct.tid_info, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  %11 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %12 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ne i64 %14, 4
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %45

18:                                               ; preds = %3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = bitcast %struct.TYPE_3__* %19 to %struct._ipfw_obj_header*
  store %struct._ipfw_obj_header* %20, %struct._ipfw_obj_header** %9, align 8
  %21 = load %struct._ipfw_obj_header*, %struct._ipfw_obj_header** %9, align 8
  %22 = call i32 @objheader_to_ti(%struct._ipfw_obj_header* %21, %struct.tid_info* %10)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IP_FW_TABLE_XDESTROY, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %30 = call i32 @destroy_table(%struct.ip_fw_chain* %29, %struct.tid_info* %10)
  store i32 %30, i32* %8, align 4
  br label %43

31:                                               ; preds = %18
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IP_FW_TABLE_XFLUSH, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %39 = call i32 @flush_table(%struct.ip_fw_chain* %38, %struct.tid_info* %10)
  store i32 %39, i32* %8, align 4
  br label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @ENOTSUP, align 4
  store i32 %41, i32* %4, align 4
  br label %45

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %28
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %40, %16
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @objheader_to_ti(%struct._ipfw_obj_header*, %struct.tid_info*) #1

declare dso_local i32 @destroy_table(%struct.ip_fw_chain*, %struct.tid_info*) #1

declare dso_local i32 @flush_table(%struct.ip_fw_chain*, %struct.tid_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
