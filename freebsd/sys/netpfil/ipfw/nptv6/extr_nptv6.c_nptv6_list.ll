; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nptv6/extr_nptv6.c_nptv6_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nptv6/extr_nptv6.c_nptv6_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.sockopt_data = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.nptv6_dump_arg = type { %struct.sockopt_data*, %struct.ip_fw_chain* }

@EINVAL = common dso_local global i32 0, align 4
@IPFW_TLV_NPTV6_NAME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@export_config_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32*, %struct.sockopt_data*)* @nptv6_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nptv6_list(%struct.ip_fw_chain* %0, i32* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca %struct.nptv6_dump_arg, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  %10 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %11 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 12
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %4, align 4
  br label %67

17:                                               ; preds = %3
  %18 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %19 = call i64 @ipfw_get_sopt_header(%struct.sockopt_data* %18, i32 12)
  %20 = inttoptr i64 %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %8, align 8
  %21 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %22 = call i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain* %21)
  %23 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %24 = call i32 @CHAIN_TO_SRV(%struct.ip_fw_chain* %23)
  %25 = load i32, i32* @IPFW_TLV_NPTV6_NAME, align 4
  %26 = call i32 @ipfw_objhash_count_type(i32 %24, i32 %25)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 4, i32* %30, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  %38 = sext i32 %37 to i64
  %39 = add i64 12, %38
  %40 = trunc i64 %39 to i32
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %44 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %17
  %51 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %52 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %51)
  %53 = load i32, i32* @ENOMEM, align 4
  store i32 %53, i32* %4, align 4
  br label %67

54:                                               ; preds = %17
  %55 = call i32 @memset(%struct.nptv6_dump_arg* %9, i32 0, i32 16)
  %56 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %57 = getelementptr inbounds %struct.nptv6_dump_arg, %struct.nptv6_dump_arg* %9, i32 0, i32 1
  store %struct.ip_fw_chain* %56, %struct.ip_fw_chain** %57, align 8
  %58 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %59 = getelementptr inbounds %struct.nptv6_dump_arg, %struct.nptv6_dump_arg* %9, i32 0, i32 0
  store %struct.sockopt_data* %58, %struct.sockopt_data** %59, align 8
  %60 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %61 = call i32 @CHAIN_TO_SRV(%struct.ip_fw_chain* %60)
  %62 = load i32, i32* @export_config_cb, align 4
  %63 = load i32, i32* @IPFW_TLV_NPTV6_NAME, align 4
  %64 = call i32 @ipfw_objhash_foreach_type(i32 %61, i32 %62, %struct.nptv6_dump_arg* %9, i32 %63)
  %65 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %66 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %65)
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %54, %50, %15
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i64 @ipfw_get_sopt_header(%struct.sockopt_data*, i32) #1

declare dso_local i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @ipfw_objhash_count_type(i32, i32) #1

declare dso_local i32 @CHAIN_TO_SRV(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @memset(%struct.nptv6_dump_arg*, i32, i32) #1

declare dso_local i32 @ipfw_objhash_foreach_type(i32, i32, %struct.nptv6_dump_arg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
