; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_scan.c_iwm_mvm_scan_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_scan.c_iwm_mvm_scan_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IWM_UCODE_TLV_CAPA_UMAC_SCAN = common dso_local global i32 0, align 4
@IWM_UCODE_TLV_API_ADAPTIVE_DWELL = common dso_local global i32 0, align 4
@IWM_SCAN_REQ_UMAC_SIZE_V7 = common dso_local global i32 0, align 4
@IWM_SCAN_REQ_UMAC_SIZE_V1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*)* @iwm_mvm_scan_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_mvm_scan_size(%struct.iwm_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwm_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %3, align 8
  %5 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %6 = load i32, i32* @IWM_UCODE_TLV_CAPA_UMAC_SCAN, align 4
  %7 = call i64 @iwm_fw_has_capa(%struct.iwm_softc* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  %10 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %11 = load i32, i32* @IWM_UCODE_TLV_API_ADAPTIVE_DWELL, align 4
  %12 = call i64 @iwm_fw_has_api(%struct.iwm_softc* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @IWM_SCAN_REQ_UMAC_SIZE_V7, align 4
  store i32 %15, i32* %4, align 4
  br label %18

16:                                               ; preds = %9
  %17 = load i32, i32* @IWM_SCAN_REQ_UMAC_SIZE_V1, align 4
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %22 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = add i64 %20, %27
  %29 = add i64 %28, 4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %2, align 4
  br label %42

31:                                               ; preds = %1
  %32 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %33 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 4, %37
  %39 = add i64 4, %38
  %40 = add i64 %39, 4
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %31, %18
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @iwm_fw_has_capa(%struct.iwm_softc*, i32) #1

declare dso_local i64 @iwm_fw_has_api(%struct.iwm_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
