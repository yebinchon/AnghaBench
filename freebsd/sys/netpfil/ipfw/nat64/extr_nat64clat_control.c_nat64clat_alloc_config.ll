; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64clat_control.c_nat64clat_alloc_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64clat_control.c_nat64clat_alloc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nat64clat_cfg = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@M_IPFW = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@NAT64STATS = common dso_local global i32 0, align 4
@IPFW_TLV_NAT64CLAT_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nat64clat_cfg* (i8*, i32)* @nat64clat_alloc_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nat64clat_cfg* @nat64clat_alloc_config(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nat64clat_cfg*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @M_IPFW, align 4
  %7 = load i32, i32* @M_WAITOK, align 4
  %8 = load i32, i32* @M_ZERO, align 4
  %9 = or i32 %7, %8
  %10 = call %struct.nat64clat_cfg* @malloc(i32 20, i32 %6, i32 %9)
  store %struct.nat64clat_cfg* %10, %struct.nat64clat_cfg** %5, align 8
  %11 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %5, align 8
  %12 = getelementptr inbounds %struct.nat64clat_cfg, %struct.nat64clat_cfg* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NAT64STATS, align 4
  %17 = load i32, i32* @M_WAITOK, align 4
  %18 = call i32 @COUNTER_ARRAY_ALLOC(i32 %15, i32 %16, i32 %17)
  %19 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %5, align 8
  %20 = getelementptr inbounds %struct.nat64clat_cfg, %struct.nat64clat_cfg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %5, align 8
  %23 = getelementptr inbounds %struct.nat64clat_cfg, %struct.nat64clat_cfg* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @IPFW_TLV_NAT64CLAT_NAME, align 4
  %26 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %5, align 8
  %27 = getelementptr inbounds %struct.nat64clat_cfg, %struct.nat64clat_cfg* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %5, align 8
  %31 = getelementptr inbounds %struct.nat64clat_cfg, %struct.nat64clat_cfg* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %5, align 8
  %34 = getelementptr inbounds %struct.nat64clat_cfg, %struct.nat64clat_cfg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @strlcpy(i32 %35, i8* %36, i32 4)
  %38 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %5, align 8
  ret %struct.nat64clat_cfg* %38
}

declare dso_local %struct.nat64clat_cfg* @malloc(i32, i32, i32) #1

declare dso_local i32 @COUNTER_ARRAY_ALLOC(i32, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
