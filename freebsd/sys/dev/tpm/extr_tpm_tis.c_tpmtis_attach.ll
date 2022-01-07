; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_tis.c_tpmtis_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_tis.c_tpmtis_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_sc = type { i32, i32, i32, i32, i32*, i64, i32*, i64, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@tpmtis_intr_handler = common dso_local global i32 0, align 4
@tpmtis_transmit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tpmtis_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpmtis_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tpm_sc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.tpm_sc* @device_get_softc(i32 %6)
  store %struct.tpm_sc* %7, %struct.tpm_sc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %10 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %9, i32 0, i32 8
  store i32 %8, i32* %10, align 8
  %11 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %12 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %11, i32 0, i32 7
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @SYS_RES_MEMORY, align 4
  %15 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %16 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %15, i32 0, i32 7
  %17 = load i32, i32* @RF_ACTIVE, align 4
  %18 = call i8* @bus_alloc_resource_any(i32 %13, i32 %14, i64* %16, i32 %17)
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %21 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %20, i32 0, i32 6
  store i32* %19, i32** %21, align 8
  %22 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %23 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %22, i32 0, i32 6
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %87

28:                                               ; preds = %1
  %29 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %30 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @SYS_RES_IRQ, align 4
  %33 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %34 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %33, i32 0, i32 5
  %35 = load i32, i32* @RF_ACTIVE, align 4
  %36 = load i32, i32* @RF_SHAREABLE, align 4
  %37 = or i32 %35, %36
  %38 = call i8* @bus_alloc_resource_any(i32 %31, i32 %32, i64* %34, i32 %37)
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %41 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %40, i32 0, i32 4
  store i32* %39, i32** %41, align 8
  %42 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %43 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %69

46:                                               ; preds = %28
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %49 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @INTR_TYPE_MISC, align 4
  %52 = load i32, i32* @INTR_MPSAFE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @tpmtis_intr_handler, align 4
  %55 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %56 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %57 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %56, i32 0, i32 3
  %58 = call i64 @bus_setup_intr(i32 %47, i32* %50, i32 %53, i32* null, i32 %54, %struct.tpm_sc* %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %46
  %61 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %62 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  br label %68

63:                                               ; preds = %46
  %64 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %65 = call i32 @tpmtis_setup_intr(%struct.tpm_sc* %64)
  %66 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %67 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %63, %60
  br label %72

69:                                               ; preds = %28
  %70 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %71 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  br label %72

72:                                               ; preds = %69, %68
  %73 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %74 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %73, i32 0, i32 1
  store i32 -1, i32* %74, align 4
  %75 = load i32, i32* @tpmtis_transmit, align 4
  %76 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %77 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %79 = call i32 @tpm20_init(%struct.tpm_sc* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @tpmtis_detach(i32 %83)
  br label %85

85:                                               ; preds = %82, %72
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %85, %26
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.tpm_sc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.tpm_sc*, i32*) #1

declare dso_local i32 @tpmtis_setup_intr(%struct.tpm_sc*) #1

declare dso_local i32 @tpm20_init(%struct.tpm_sc*) #1

declare dso_local i32 @tpmtis_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
