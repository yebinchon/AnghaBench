; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_destroy_ifidx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_destroy_ifidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_info = type { i32 }
%struct.iftable_cfg = type { i32, %struct.iftable_cfg*, %struct.ip_fw_chain* }
%struct.ip_fw_chain = type { i32 }

@M_IPFW = common dso_local global i32 0, align 4
@destroy_ifidx_locked = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.table_info*)* @ta_destroy_ifidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ta_destroy_ifidx(i8* %0, %struct.table_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.table_info*, align 8
  %5 = alloca %struct.iftable_cfg*, align 8
  %6 = alloca %struct.ip_fw_chain*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.table_info* %1, %struct.table_info** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.iftable_cfg*
  store %struct.iftable_cfg* %8, %struct.iftable_cfg** %5, align 8
  %9 = load %struct.iftable_cfg*, %struct.iftable_cfg** %5, align 8
  %10 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %9, i32 0, i32 2
  %11 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %10, align 8
  store %struct.ip_fw_chain* %11, %struct.ip_fw_chain** %6, align 8
  %12 = load %struct.iftable_cfg*, %struct.iftable_cfg** %5, align 8
  %13 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %12, i32 0, i32 1
  %14 = load %struct.iftable_cfg*, %struct.iftable_cfg** %13, align 8
  %15 = icmp ne %struct.iftable_cfg* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.iftable_cfg*, %struct.iftable_cfg** %5, align 8
  %18 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %17, i32 0, i32 1
  %19 = load %struct.iftable_cfg*, %struct.iftable_cfg** %18, align 8
  %20 = load i32, i32* @M_IPFW, align 4
  %21 = call i32 @free(%struct.iftable_cfg* %19, i32 %20)
  br label %22

22:                                               ; preds = %16, %2
  %23 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %24 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %23)
  %25 = load %struct.iftable_cfg*, %struct.iftable_cfg** %5, align 8
  %26 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @destroy_ifidx_locked, align 4
  %29 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %30 = call i32 @ipfw_objhash_foreach(i32 %27, i32 %28, %struct.ip_fw_chain* %29)
  %31 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %32 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %31)
  %33 = load %struct.iftable_cfg*, %struct.iftable_cfg** %5, align 8
  %34 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ipfw_objhash_destroy(i32 %35)
  %37 = load %struct.iftable_cfg*, %struct.iftable_cfg** %5, align 8
  %38 = load i32, i32* @M_IPFW, align 4
  %39 = call i32 @free(%struct.iftable_cfg* %37, i32 %38)
  ret void
}

declare dso_local i32 @free(%struct.iftable_cfg*, i32) #1

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @ipfw_objhash_foreach(i32, i32, %struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @ipfw_objhash_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
