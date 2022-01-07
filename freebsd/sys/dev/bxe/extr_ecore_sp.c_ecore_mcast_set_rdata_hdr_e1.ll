; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_mcast_set_rdata_hdr_e1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_mcast_set_rdata_hdr_e1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_mcast_ramrod_params = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ecore_raw_obj }
%struct.ecore_raw_obj = type { i32, i32, i64 }
%struct.mac_configuration_cmd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32, i32, i8* }

@ECORE_MAX_EMUL_MULTI = common dso_local global i32 0, align 4
@ECORE_MAX_MULTICAST = common dso_local global i32 0, align 4
@ECORE_SWCID_MASK = common dso_local global i32 0, align 4
@ECORE_FILTER_MCAST_PENDING = common dso_local global i32 0, align 4
@ECORE_SWCID_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.ecore_mcast_ramrod_params*, i8*)* @ecore_mcast_set_rdata_hdr_e1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_mcast_set_rdata_hdr_e1(%struct.bxe_softc* %0, %struct.ecore_mcast_ramrod_params* %1, i8* %2) #0 {
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca %struct.ecore_mcast_ramrod_params*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ecore_raw_obj*, align 8
  %8 = alloca %struct.mac_configuration_cmd*, align 8
  %9 = alloca i8*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store %struct.ecore_mcast_ramrod_params* %1, %struct.ecore_mcast_ramrod_params** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %5, align 8
  %11 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.ecore_raw_obj* %13, %struct.ecore_raw_obj** %7, align 8
  %14 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %7, align 8
  %15 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.mac_configuration_cmd*
  store %struct.mac_configuration_cmd* %17, %struct.mac_configuration_cmd** %8, align 8
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %19 = call i64 @CHIP_REV_IS_SLOW(%struct.bxe_softc* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load i32, i32* @ECORE_MAX_EMUL_MULTI, align 4
  %23 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %7, align 8
  %24 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 1, %25
  %27 = mul nsw i32 %22, %26
  br label %35

28:                                               ; preds = %3
  %29 = load i32, i32* @ECORE_MAX_MULTICAST, align 4
  %30 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %7, align 8
  %31 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 1, %32
  %34 = mul nsw i32 %29, %33
  br label %35

35:                                               ; preds = %28, %21
  %36 = phi i32 [ %27, %21 ], [ %34, %28 ]
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load %struct.mac_configuration_cmd*, %struct.mac_configuration_cmd** %8, align 8
  %41 = getelementptr inbounds %struct.mac_configuration_cmd, %struct.mac_configuration_cmd* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  store i8* %39, i8** %42, align 8
  %43 = call i32 @ECORE_CPU_TO_LE16(i32 255)
  %44 = load %struct.mac_configuration_cmd*, %struct.mac_configuration_cmd** %8, align 8
  %45 = getelementptr inbounds %struct.mac_configuration_cmd, %struct.mac_configuration_cmd* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 4
  %47 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %7, align 8
  %48 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ECORE_SWCID_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @ECORE_FILTER_MCAST_PENDING, align 4
  %53 = load i32, i32* @ECORE_SWCID_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = or i32 %51, %54
  %56 = call i32 @ECORE_CPU_TO_LE32(i32 %55)
  %57 = load %struct.mac_configuration_cmd*, %struct.mac_configuration_cmd** %8, align 8
  %58 = getelementptr inbounds %struct.mac_configuration_cmd, %struct.mac_configuration_cmd* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load %struct.mac_configuration_cmd*, %struct.mac_configuration_cmd** %8, align 8
  %62 = getelementptr inbounds %struct.mac_configuration_cmd, %struct.mac_configuration_cmd* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i8* %60, i8** %63, align 8
  ret void
}

declare dso_local i64 @CHIP_REV_IS_SLOW(%struct.bxe_softc*) #1

declare dso_local i32 @ECORE_CPU_TO_LE16(i32) #1

declare dso_local i32 @ECORE_CPU_TO_LE32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
