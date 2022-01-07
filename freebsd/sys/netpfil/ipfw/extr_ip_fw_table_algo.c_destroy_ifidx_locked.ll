; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_destroy_ifidx_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_destroy_ifidx_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.namedobj_instance = type { i32 }
%struct.named_object = type { i32 }
%struct.ifentry = type { i32 }
%struct.ip_fw_chain = type { i32 }

@M_IPFW_TBL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.namedobj_instance*, %struct.named_object*, i8*)* @destroy_ifidx_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @destroy_ifidx_locked(%struct.namedobj_instance* %0, %struct.named_object* %1, i8* %2) #0 {
  %4 = alloca %struct.namedobj_instance*, align 8
  %5 = alloca %struct.named_object*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ifentry*, align 8
  %8 = alloca %struct.ip_fw_chain*, align 8
  store %struct.namedobj_instance* %0, %struct.namedobj_instance** %4, align 8
  store %struct.named_object* %1, %struct.named_object** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.ip_fw_chain*
  store %struct.ip_fw_chain* %10, %struct.ip_fw_chain** %8, align 8
  %11 = load %struct.named_object*, %struct.named_object** %5, align 8
  %12 = bitcast %struct.named_object* %11 to %struct.ifentry*
  store %struct.ifentry* %12, %struct.ifentry** %7, align 8
  %13 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %8, align 8
  %14 = load %struct.ifentry*, %struct.ifentry** %7, align 8
  %15 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %14, i32 0, i32 0
  %16 = call i32 @ipfw_iface_del_notify(%struct.ip_fw_chain* %13, i32* %15)
  %17 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %8, align 8
  %18 = load %struct.ifentry*, %struct.ifentry** %7, align 8
  %19 = getelementptr inbounds %struct.ifentry, %struct.ifentry* %18, i32 0, i32 0
  %20 = call i32 @ipfw_iface_unref(%struct.ip_fw_chain* %17, i32* %19)
  %21 = load %struct.ifentry*, %struct.ifentry** %7, align 8
  %22 = load i32, i32* @M_IPFW_TBL, align 4
  %23 = call i32 @free(%struct.ifentry* %21, i32 %22)
  ret i32 0
}

declare dso_local i32 @ipfw_iface_del_notify(%struct.ip_fw_chain*, i32*) #1

declare dso_local i32 @ipfw_iface_unref(%struct.ip_fw_chain*, i32*) #1

declare dso_local i32 @free(%struct.ifentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
