; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_nvram_cfe.c_bhnd_nvram_cfe_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_nvram_cfe.c_bhnd_nvram_cfe_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_platform = type { i32, i32*, i32* }
%struct.bhnd_nvram_cfe_softc = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"missing NVRAM I/O context\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"missing NVRAM class\00", align 1
@BHND_SERVICE_NVRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bhnd_nvram_cfe_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_cfe_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_platform*, align 8
  %5 = alloca %struct.bhnd_nvram_cfe_softc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = call %struct.bcm_platform* (...) @bcm_get_platform()
  store %struct.bcm_platform* %7, %struct.bcm_platform** %4, align 8
  %8 = load %struct.bcm_platform*, %struct.bcm_platform** %4, align 8
  %9 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.bcm_platform*, %struct.bcm_platform** %4, align 8
  %15 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* %3, align 4
  %21 = call %struct.bhnd_nvram_cfe_softc* @device_get_softc(i32 %20)
  store %struct.bhnd_nvram_cfe_softc* %21, %struct.bhnd_nvram_cfe_softc** %5, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.bhnd_nvram_cfe_softc*, %struct.bhnd_nvram_cfe_softc** %5, align 8
  %24 = getelementptr inbounds %struct.bhnd_nvram_cfe_softc, %struct.bhnd_nvram_cfe_softc* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.bhnd_nvram_cfe_softc*, %struct.bhnd_nvram_cfe_softc** %5, align 8
  %26 = getelementptr inbounds %struct.bhnd_nvram_cfe_softc, %struct.bhnd_nvram_cfe_softc* %25, i32 0, i32 0
  %27 = load %struct.bcm_platform*, %struct.bcm_platform** %4, align 8
  %28 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.bcm_platform*, %struct.bcm_platform** %4, align 8
  %31 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @bhnd_nvram_store_parse_new(i32* %26, i32* %29, i32* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %54

38:                                               ; preds = %1
  %39 = load %struct.bcm_platform*, %struct.bcm_platform** %4, align 8
  %40 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %39, i32 0, i32 0
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @BHND_SERVICE_NVRAM, align 4
  %43 = call i32 @bhnd_service_registry_add(i32* %40, i32 %41, i32 %42, i32 0)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load %struct.bhnd_nvram_cfe_softc*, %struct.bhnd_nvram_cfe_softc** %5, align 8
  %48 = getelementptr inbounds %struct.bhnd_nvram_cfe_softc, %struct.bhnd_nvram_cfe_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @bhnd_nvram_store_free(i32 %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %54

52:                                               ; preds = %38
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %46, %36
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.bcm_platform* @bcm_get_platform(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.bhnd_nvram_cfe_softc* @device_get_softc(i32) #1

declare dso_local i32 @bhnd_nvram_store_parse_new(i32*, i32*, i32*) #1

declare dso_local i32 @bhnd_service_registry_add(i32*, i32, i32, i32) #1

declare dso_local i32 @bhnd_nvram_store_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
