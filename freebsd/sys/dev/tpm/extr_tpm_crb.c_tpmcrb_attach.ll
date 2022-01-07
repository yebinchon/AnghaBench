; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_crb.c_tpmcrb_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_crb.c_tpmcrb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpmcrb_sc = type { i32, i32, i64, i64, %struct.tpm_sc }
%struct.tpm_sc = type { i32, i32, i32, i32*, i64 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@TPM_CRB_INT_ENABLE = common dso_local global i32 0, align 4
@TPM_CRB_INT_ENABLE_BIT = common dso_local global i32 0, align 4
@TPM_CRB_CTRL_RSP_ADDR = common dso_local global i32 0, align 4
@TPM_CRB_CTRL_CMD_LADDR = common dso_local global i32 0, align 4
@TPM_CRB_CTRL_CMD_HADDR = common dso_local global i32 0, align 4
@TPM_CRB_CTRL_CMD_SIZE = common dso_local global i32 0, align 4
@TPM_CRB_CTRL_RSP_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_CRS\00", align 1
@tpmcrb_fix_buff_offsets = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Overlapping Tx/Rx buffers have different sizes\0A\00", align 1
@tpmcrb_transmit = common dso_local global i32 0, align 4
@TPM_CRB_CTRL_RSP_HADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tpmcrb_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpmcrb_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tpmcrb_sc*, align 8
  %5 = alloca %struct.tpm_sc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.tpmcrb_sc* @device_get_softc(i32 %9)
  store %struct.tpmcrb_sc* %10, %struct.tpmcrb_sc** %4, align 8
  %11 = load %struct.tpmcrb_sc*, %struct.tpmcrb_sc** %4, align 8
  %12 = getelementptr inbounds %struct.tpmcrb_sc, %struct.tpmcrb_sc* %11, i32 0, i32 4
  store %struct.tpm_sc* %12, %struct.tpm_sc** %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @acpi_get_handle(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.tpm_sc*, %struct.tpm_sc** %5, align 8
  %17 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.tpm_sc*, %struct.tpm_sc** %5, align 8
  %19 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @SYS_RES_MEMORY, align 4
  %22 = load %struct.tpm_sc*, %struct.tpm_sc** %5, align 8
  %23 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %22, i32 0, i32 4
  %24 = load i32, i32* @RF_ACTIVE, align 4
  %25 = call i32* @bus_alloc_resource_any(i32 %20, i32 %21, i64* %23, i32 %24)
  %26 = load %struct.tpm_sc*, %struct.tpm_sc** %5, align 8
  %27 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %26, i32 0, i32 3
  store i32* %25, i32** %27, align 8
  %28 = load %struct.tpm_sc*, %struct.tpm_sc** %5, align 8
  %29 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %2, align 4
  br label %141

34:                                               ; preds = %1
  %35 = load %struct.tpm_sc*, %struct.tpm_sc** %5, align 8
  %36 = call i32 @tpmcrb_request_locality(%struct.tpm_sc* %35, i32 0)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @SYS_RES_MEMORY, align 4
  %41 = load %struct.tpm_sc*, %struct.tpm_sc** %5, align 8
  %42 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.tpm_sc*, %struct.tpm_sc** %5, align 8
  %45 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @bus_release_resource(i32 %39, i32 %40, i64 %43, i32* %46)
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %2, align 4
  br label %141

49:                                               ; preds = %34
  %50 = load %struct.tpm_sc*, %struct.tpm_sc** %5, align 8
  %51 = load i32, i32* @TPM_CRB_INT_ENABLE, align 4
  %52 = load i32, i32* @TPM_CRB_INT_ENABLE_BIT, align 4
  %53 = xor i32 %52, -1
  %54 = call i32 @AND4(%struct.tpm_sc* %50, i32 %51, i32 %53)
  %55 = load %struct.tpm_sc*, %struct.tpm_sc** %5, align 8
  %56 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.tpm_sc*, %struct.tpm_sc** %5, align 8
  %58 = load i32, i32* @TPM_CRB_CTRL_RSP_ADDR, align 4
  %59 = call i32 @RD8(%struct.tpm_sc* %57, i32 %58)
  %60 = load %struct.tpmcrb_sc*, %struct.tpmcrb_sc** %4, align 8
  %61 = getelementptr inbounds %struct.tpmcrb_sc, %struct.tpmcrb_sc* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.tpm_sc*, %struct.tpm_sc** %5, align 8
  %63 = load i32, i32* @TPM_CRB_CTRL_CMD_LADDR, align 4
  %64 = call i8* @RD4(%struct.tpm_sc* %62, i32 %63)
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.tpmcrb_sc*, %struct.tpmcrb_sc** %4, align 8
  %67 = getelementptr inbounds %struct.tpmcrb_sc, %struct.tpmcrb_sc* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.tpm_sc*, %struct.tpm_sc** %5, align 8
  %69 = load i32, i32* @TPM_CRB_CTRL_CMD_HADDR, align 4
  %70 = call i8* @RD4(%struct.tpm_sc* %68, i32 %69)
  %71 = ptrtoint i8* %70 to i32
  %72 = shl i32 %71, 32
  %73 = load %struct.tpmcrb_sc*, %struct.tpmcrb_sc** %4, align 8
  %74 = getelementptr inbounds %struct.tpmcrb_sc, %struct.tpmcrb_sc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.tpm_sc*, %struct.tpm_sc** %5, align 8
  %78 = load i32, i32* @TPM_CRB_CTRL_CMD_SIZE, align 4
  %79 = call i8* @RD4(%struct.tpm_sc* %77, i32 %78)
  %80 = ptrtoint i8* %79 to i64
  %81 = load %struct.tpmcrb_sc*, %struct.tpmcrb_sc** %4, align 8
  %82 = getelementptr inbounds %struct.tpmcrb_sc, %struct.tpmcrb_sc* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  %83 = load %struct.tpm_sc*, %struct.tpm_sc** %5, align 8
  %84 = load i32, i32* @TPM_CRB_CTRL_RSP_SIZE, align 4
  %85 = call i8* @RD4(%struct.tpm_sc* %83, i32 %84)
  %86 = ptrtoint i8* %85 to i64
  %87 = load %struct.tpmcrb_sc*, %struct.tpmcrb_sc** %4, align 8
  %88 = getelementptr inbounds %struct.tpmcrb_sc, %struct.tpmcrb_sc* %87, i32 0, i32 3
  store i64 %86, i64* %88, align 8
  %89 = load %struct.tpm_sc*, %struct.tpm_sc** %5, align 8
  %90 = call i32 @tpmcrb_relinquish_locality(%struct.tpm_sc* %89)
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @tpmcrb_fix_buff_offsets, align 4
  %93 = load %struct.tpmcrb_sc*, %struct.tpmcrb_sc** %4, align 8
  %94 = bitcast %struct.tpmcrb_sc* %93 to i8*
  %95 = call i32 @AcpiWalkResources(i32 %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %92, i8* %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i64 @ACPI_FAILURE(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %49
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @tpmcrb_detach(i32 %100)
  %102 = load i32, i32* @ENXIO, align 4
  store i32 %102, i32* %2, align 4
  br label %141

103:                                              ; preds = %49
  %104 = load %struct.tpmcrb_sc*, %struct.tpmcrb_sc** %4, align 8
  %105 = getelementptr inbounds %struct.tpmcrb_sc, %struct.tpmcrb_sc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.tpmcrb_sc*, %struct.tpmcrb_sc** %4, align 8
  %108 = getelementptr inbounds %struct.tpmcrb_sc, %struct.tpmcrb_sc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %106, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %103
  %112 = load %struct.tpmcrb_sc*, %struct.tpmcrb_sc** %4, align 8
  %113 = getelementptr inbounds %struct.tpmcrb_sc, %struct.tpmcrb_sc* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.tpmcrb_sc*, %struct.tpmcrb_sc** %4, align 8
  %116 = getelementptr inbounds %struct.tpmcrb_sc, %struct.tpmcrb_sc* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %114, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %111
  %120 = load %struct.tpm_sc*, %struct.tpm_sc** %5, align 8
  %121 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @device_printf(i32 %122, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @tpmcrb_detach(i32 %124)
  %126 = load i32, i32* @ENXIO, align 4
  store i32 %126, i32* %2, align 4
  br label %141

127:                                              ; preds = %111
  br label %128

128:                                              ; preds = %127, %103
  %129 = load i32, i32* @tpmcrb_transmit, align 4
  %130 = load %struct.tpm_sc*, %struct.tpm_sc** %5, align 8
  %131 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.tpm_sc*, %struct.tpm_sc** %5, align 8
  %133 = call i32 @tpm20_init(%struct.tpm_sc* %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = load i32, i32* %3, align 4
  %138 = call i32 @tpmcrb_detach(i32 %137)
  br label %139

139:                                              ; preds = %136, %128
  %140 = load i32, i32* %8, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %139, %119, %99, %38, %32
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.tpmcrb_sc* @device_get_softc(i32) #1

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @tpmcrb_request_locality(%struct.tpm_sc*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

declare dso_local i32 @AND4(%struct.tpm_sc*, i32, i32) #1

declare dso_local i32 @RD8(%struct.tpm_sc*, i32) #1

declare dso_local i8* @RD4(%struct.tpm_sc*, i32) #1

declare dso_local i32 @tpmcrb_relinquish_locality(%struct.tpm_sc*) #1

declare dso_local i32 @AcpiWalkResources(i32, i8*, i32, i8*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @tpmcrb_detach(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @tpm20_init(%struct.tpm_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
