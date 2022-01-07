; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_dump_srvobjects.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_dump_srvobjects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.sockopt_data = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@export_objhash_ntlv_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32*, %struct.sockopt_data*)* @dump_srvobjects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_srvobjects(%struct.ip_fw_chain* %0, i32* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  %10 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %11 = call i64 @ipfw_get_sopt_header(%struct.sockopt_data* %10, i32 12)
  %12 = inttoptr i64 %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %8, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %14 = icmp eq %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %4, align 4
  br label %58

17:                                               ; preds = %3
  %18 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %19 = call i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain* %18)
  %20 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %21 = call i32 @CHAIN_TO_SRV(%struct.ip_fw_chain* %20)
  %22 = call i32 @ipfw_objhash_count(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = add i64 12, %25
  %27 = trunc i64 %26 to i32
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %31 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %17
  %38 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %39 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %38)
  %40 = load i32, i32* @ENOMEM, align 4
  store i32 %40, i32* %4, align 4
  br label %58

41:                                               ; preds = %17
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  store i32 4, i32* %46, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %51 = call i32 @CHAIN_TO_SRV(%struct.ip_fw_chain* %50)
  %52 = load i32, i32* @export_objhash_ntlv_internal, align 4
  %53 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %54 = call i32 @ipfw_objhash_foreach(i32 %51, i32 %52, %struct.sockopt_data* %53)
  br label %55

55:                                               ; preds = %49, %41
  %56 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %57 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %56)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %37, %15
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @ipfw_get_sopt_header(%struct.sockopt_data*, i32) #1

declare dso_local i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @ipfw_objhash_count(i32) #1

declare dso_local i32 @CHAIN_TO_SRV(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @ipfw_objhash_foreach(i32, i32, %struct.sockopt_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
