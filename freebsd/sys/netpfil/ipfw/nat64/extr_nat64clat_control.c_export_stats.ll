; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64clat_control.c_export_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64clat_control.c_export_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.nat64clat_cfg = type { i32 }
%struct.ipfw_nat64clat_stats = type { i32 }

@opcnt64 = common dso_local global i32 0, align 4
@opcnt46 = common dso_local global i32 0, align 4
@ofrags = common dso_local global i32 0, align 4
@ifrags = common dso_local global i32 0, align 4
@oerrors = common dso_local global i32 0, align 4
@noroute4 = common dso_local global i32 0, align 4
@noroute6 = common dso_local global i32 0, align 4
@noproto = common dso_local global i32 0, align 4
@nomem = common dso_local global i32 0, align 4
@dropped = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_fw_chain*, %struct.nat64clat_cfg*, %struct.ipfw_nat64clat_stats*)* @export_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @export_stats(%struct.ip_fw_chain* %0, %struct.nat64clat_cfg* %1, %struct.ipfw_nat64clat_stats* %2) #0 {
  %4 = alloca %struct.ip_fw_chain*, align 8
  %5 = alloca %struct.nat64clat_cfg*, align 8
  %6 = alloca %struct.ipfw_nat64clat_stats*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %4, align 8
  store %struct.nat64clat_cfg* %1, %struct.nat64clat_cfg** %5, align 8
  store %struct.ipfw_nat64clat_stats* %2, %struct.ipfw_nat64clat_stats** %6, align 8
  %7 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %5, align 8
  %8 = load %struct.ipfw_nat64clat_stats*, %struct.ipfw_nat64clat_stats** %6, align 8
  %9 = load i32, i32* @opcnt64, align 4
  %10 = call i32 @__COPY_STAT_FIELD(%struct.nat64clat_cfg* %7, %struct.ipfw_nat64clat_stats* %8, i32 %9)
  %11 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %5, align 8
  %12 = load %struct.ipfw_nat64clat_stats*, %struct.ipfw_nat64clat_stats** %6, align 8
  %13 = load i32, i32* @opcnt46, align 4
  %14 = call i32 @__COPY_STAT_FIELD(%struct.nat64clat_cfg* %11, %struct.ipfw_nat64clat_stats* %12, i32 %13)
  %15 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %5, align 8
  %16 = load %struct.ipfw_nat64clat_stats*, %struct.ipfw_nat64clat_stats** %6, align 8
  %17 = load i32, i32* @ofrags, align 4
  %18 = call i32 @__COPY_STAT_FIELD(%struct.nat64clat_cfg* %15, %struct.ipfw_nat64clat_stats* %16, i32 %17)
  %19 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %5, align 8
  %20 = load %struct.ipfw_nat64clat_stats*, %struct.ipfw_nat64clat_stats** %6, align 8
  %21 = load i32, i32* @ifrags, align 4
  %22 = call i32 @__COPY_STAT_FIELD(%struct.nat64clat_cfg* %19, %struct.ipfw_nat64clat_stats* %20, i32 %21)
  %23 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %5, align 8
  %24 = load %struct.ipfw_nat64clat_stats*, %struct.ipfw_nat64clat_stats** %6, align 8
  %25 = load i32, i32* @oerrors, align 4
  %26 = call i32 @__COPY_STAT_FIELD(%struct.nat64clat_cfg* %23, %struct.ipfw_nat64clat_stats* %24, i32 %25)
  %27 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %5, align 8
  %28 = load %struct.ipfw_nat64clat_stats*, %struct.ipfw_nat64clat_stats** %6, align 8
  %29 = load i32, i32* @noroute4, align 4
  %30 = call i32 @__COPY_STAT_FIELD(%struct.nat64clat_cfg* %27, %struct.ipfw_nat64clat_stats* %28, i32 %29)
  %31 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %5, align 8
  %32 = load %struct.ipfw_nat64clat_stats*, %struct.ipfw_nat64clat_stats** %6, align 8
  %33 = load i32, i32* @noroute6, align 4
  %34 = call i32 @__COPY_STAT_FIELD(%struct.nat64clat_cfg* %31, %struct.ipfw_nat64clat_stats* %32, i32 %33)
  %35 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %5, align 8
  %36 = load %struct.ipfw_nat64clat_stats*, %struct.ipfw_nat64clat_stats** %6, align 8
  %37 = load i32, i32* @noproto, align 4
  %38 = call i32 @__COPY_STAT_FIELD(%struct.nat64clat_cfg* %35, %struct.ipfw_nat64clat_stats* %36, i32 %37)
  %39 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %5, align 8
  %40 = load %struct.ipfw_nat64clat_stats*, %struct.ipfw_nat64clat_stats** %6, align 8
  %41 = load i32, i32* @nomem, align 4
  %42 = call i32 @__COPY_STAT_FIELD(%struct.nat64clat_cfg* %39, %struct.ipfw_nat64clat_stats* %40, i32 %41)
  %43 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %5, align 8
  %44 = load %struct.ipfw_nat64clat_stats*, %struct.ipfw_nat64clat_stats** %6, align 8
  %45 = load i32, i32* @dropped, align 4
  %46 = call i32 @__COPY_STAT_FIELD(%struct.nat64clat_cfg* %43, %struct.ipfw_nat64clat_stats* %44, i32 %45)
  ret void
}

declare dso_local i32 @__COPY_STAT_FIELD(%struct.nat64clat_cfg*, %struct.ipfw_nat64clat_stats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
