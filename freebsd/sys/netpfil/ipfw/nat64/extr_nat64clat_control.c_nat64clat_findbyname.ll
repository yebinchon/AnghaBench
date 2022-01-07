; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64clat_control.c_nat64clat_findbyname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64clat_control.c_nat64clat_findbyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.tid_info = type { i32 }
%struct.named_object = type { i32 }

@IPFW_TLV_NAT64CLAT_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.tid_info*, %struct.named_object**)* @nat64clat_findbyname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat64clat_findbyname(%struct.ip_fw_chain* %0, %struct.tid_info* %1, %struct.named_object** %2) #0 {
  %4 = alloca %struct.ip_fw_chain*, align 8
  %5 = alloca %struct.tid_info*, align 8
  %6 = alloca %struct.named_object**, align 8
  %7 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %4, align 8
  store %struct.tid_info* %1, %struct.tid_info** %5, align 8
  store %struct.named_object** %2, %struct.named_object*** %6, align 8
  %8 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %9 = call i32 @CHAIN_TO_SRV(%struct.ip_fw_chain* %8)
  %10 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %11 = load i32, i32* @IPFW_TLV_NAT64CLAT_NAME, align 4
  %12 = load %struct.named_object**, %struct.named_object*** %6, align 8
  %13 = call i32 @ipfw_objhash_find_type(i32 %9, %struct.tid_info* %10, i32 %11, %struct.named_object** %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  ret i32 %14
}

declare dso_local i32 @ipfw_objhash_find_type(i32, %struct.tid_info*, i32, %struct.named_object**) #1

declare dso_local i32 @CHAIN_TO_SRV(%struct.ip_fw_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
