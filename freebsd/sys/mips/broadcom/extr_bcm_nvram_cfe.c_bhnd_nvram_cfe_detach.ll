; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_nvram_cfe.c_bhnd_nvram_cfe_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_nvram_cfe.c_bhnd_nvram_cfe_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_platform = type { i32 }
%struct.bhnd_nvram_cfe_softc = type { i32 }

@BHND_SERVICE_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bhnd_nvram_cfe_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_cfe_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_platform*, align 8
  %5 = alloca %struct.bhnd_nvram_cfe_softc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = call %struct.bcm_platform* (...) @bcm_get_platform()
  store %struct.bcm_platform* %7, %struct.bcm_platform** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.bhnd_nvram_cfe_softc* @device_get_softc(i32 %8)
  store %struct.bhnd_nvram_cfe_softc* %9, %struct.bhnd_nvram_cfe_softc** %5, align 8
  %10 = load %struct.bcm_platform*, %struct.bcm_platform** %4, align 8
  %11 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %10, i32 0, i32 0
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @BHND_SERVICE_ANY, align 4
  %14 = call i32 @bhnd_service_registry_remove(i32* %11, i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %24

19:                                               ; preds = %1
  %20 = load %struct.bhnd_nvram_cfe_softc*, %struct.bhnd_nvram_cfe_softc** %5, align 8
  %21 = getelementptr inbounds %struct.bhnd_nvram_cfe_softc, %struct.bhnd_nvram_cfe_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bhnd_nvram_store_free(i32 %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %19, %17
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.bcm_platform* @bcm_get_platform(...) #1

declare dso_local %struct.bhnd_nvram_cfe_softc* @device_get_softc(i32) #1

declare dso_local i32 @bhnd_service_registry_remove(i32*, i32, i32) #1

declare dso_local i32 @bhnd_nvram_store_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
