; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64stl_control.c_nat64stl_export_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64stl_control.c_nat64stl_export_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.nat64stl_cfg = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.named_object = type { i32 }

@NAT64STL_FLAGSMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_fw_chain*, %struct.nat64stl_cfg*, %struct.TYPE_7__*)* @nat64stl_export_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nat64stl_export_config(%struct.ip_fw_chain* %0, %struct.nat64stl_cfg* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca %struct.ip_fw_chain*, align 8
  %5 = alloca %struct.nat64stl_cfg*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.named_object*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %4, align 8
  store %struct.nat64stl_cfg* %1, %struct.nat64stl_cfg** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %8 = load %struct.nat64stl_cfg*, %struct.nat64stl_cfg** %5, align 8
  %9 = getelementptr inbounds %struct.nat64stl_cfg, %struct.nat64stl_cfg* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 4
  %14 = load %struct.nat64stl_cfg*, %struct.nat64stl_cfg** %5, align 8
  %15 = getelementptr inbounds %struct.nat64stl_cfg, %struct.nat64stl_cfg* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load %struct.nat64stl_cfg*, %struct.nat64stl_cfg** %5, align 8
  %21 = getelementptr inbounds %struct.nat64stl_cfg, %struct.nat64stl_cfg* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NAT64STL_FLAGSMASK, align 4
  %25 = and i32 %23, %24
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.nat64stl_cfg*, %struct.nat64stl_cfg** %5, align 8
  %29 = getelementptr inbounds %struct.nat64stl_cfg, %struct.nat64stl_cfg* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nat64stl_cfg*, %struct.nat64stl_cfg** %5, align 8
  %38 = getelementptr inbounds %struct.nat64stl_cfg, %struct.nat64stl_cfg* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @strlcpy(i32 %36, i32 %40, i32 4)
  %42 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %43 = load %struct.nat64stl_cfg*, %struct.nat64stl_cfg** %5, align 8
  %44 = getelementptr inbounds %struct.nat64stl_cfg, %struct.nat64stl_cfg* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.named_object* @ipfw_objhash_lookup_table_kidx(%struct.ip_fw_chain* %42, i32 %45)
  store %struct.named_object* %46, %struct.named_object** %7, align 8
  %47 = load %struct.named_object*, %struct.named_object** %7, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = call i32 @ipfw_export_obj_ntlv(%struct.named_object* %47, i32* %49)
  %51 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %52 = load %struct.nat64stl_cfg*, %struct.nat64stl_cfg** %5, align 8
  %53 = getelementptr inbounds %struct.nat64stl_cfg, %struct.nat64stl_cfg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.named_object* @ipfw_objhash_lookup_table_kidx(%struct.ip_fw_chain* %51, i32 %54)
  store %struct.named_object* %55, %struct.named_object** %7, align 8
  %56 = load %struct.named_object*, %struct.named_object** %7, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = call i32 @ipfw_export_obj_ntlv(%struct.named_object* %56, i32* %58)
  ret void
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local %struct.named_object* @ipfw_objhash_lookup_table_kidx(%struct.ip_fw_chain*, i32) #1

declare dso_local i32 @ipfw_export_obj_ntlv(%struct.named_object*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
