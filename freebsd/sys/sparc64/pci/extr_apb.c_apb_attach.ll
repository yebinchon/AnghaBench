; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_apb.c_apb_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_apb.c_apb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apb_softc = type { i8*, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@PCIR_PRIBUS_1 = common dso_local global i32 0, align 4
@PCIR_SECBUS_1 = common dso_local global i32 0, align 4
@PCIR_SUBBUS_1 = common dso_local global i32 0, align 4
@PCIR_BRIDGECTL_1 = common dso_local global i32 0, align 4
@APBR_IOMAP = common dso_local global i32 0, align 4
@APBR_MEMMAP = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Domain number\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"pribus\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Primary bus number\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"secbus\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Secondary bus number\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"subbus\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Subordinate bus number\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [24 x i8] c"  domain            %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"  secondary bus     %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"  subordinate bus   %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"  I/O decode        \00", align 1
@APB_IO_SCALE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"  memory decode     \00", align 1
@APB_MEM_SCALE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @apb_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apb_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.apb_softc*, align 8
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.apb_softc* @device_get_softc(i32 %6)
  store %struct.apb_softc* %7, %struct.apb_softc** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i8* @pci_get_domain(i32 %8)
  %10 = load %struct.apb_softc*, %struct.apb_softc** %3, align 8
  %11 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i8* %9, i8** %13, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call i8* @pci_get_bus(i32 %14)
  %16 = load %struct.apb_softc*, %struct.apb_softc** %3, align 8
  %17 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  store i8* %15, i8** %19, align 8
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @PCIR_PRIBUS_1, align 4
  %22 = load %struct.apb_softc*, %struct.apb_softc** %3, align 8
  %23 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @pci_write_config(i32 %20, i32 %21, i8* %26, i32 1)
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @PCIR_SECBUS_1, align 4
  %30 = call i8* @pci_read_config(i32 %28, i32 %29, i32 1)
  %31 = load %struct.apb_softc*, %struct.apb_softc** %3, align 8
  %32 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i8* %30, i8** %35, align 8
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @PCIR_SUBBUS_1, align 4
  %38 = call i8* @pci_read_config(i32 %36, i32 %37, i32 1)
  %39 = load %struct.apb_softc*, %struct.apb_softc** %3, align 8
  %40 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i8* %38, i8** %43, align 8
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @PCIR_BRIDGECTL_1, align 4
  %46 = call i8* @pci_read_config(i32 %44, i32 %45, i32 2)
  %47 = load %struct.apb_softc*, %struct.apb_softc** %3, align 8
  %48 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  store i8* %46, i8** %50, align 8
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @APBR_IOMAP, align 4
  %53 = call i8* @pci_read_config(i32 %51, i32 %52, i32 1)
  %54 = load %struct.apb_softc*, %struct.apb_softc** %3, align 8
  %55 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @APBR_MEMMAP, align 4
  %58 = call i8* @pci_read_config(i32 %56, i32 %57, i32 1)
  %59 = load %struct.apb_softc*, %struct.apb_softc** %3, align 8
  %60 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* %2, align 4
  %62 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %61)
  store %struct.sysctl_ctx_list* %62, %struct.sysctl_ctx_list** %4, align 8
  %63 = load i32, i32* %2, align 4
  %64 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %63)
  store %struct.sysctl_oid* %64, %struct.sysctl_oid** %5, align 8
  %65 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %66 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %67 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %66)
  %68 = load i32, i32* @OID_AUTO, align 4
  %69 = load i32, i32* @CTLFLAG_RD, align 4
  %70 = load %struct.apb_softc*, %struct.apb_softc** %3, align 8
  %71 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %65, i32 %67, i32 %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %69, i8** %73, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %76 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %77 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %76)
  %78 = load i32, i32* @OID_AUTO, align 4
  %79 = load i32, i32* @CTLFLAG_RD, align 4
  %80 = load %struct.apb_softc*, %struct.apb_softc** %3, align 8
  %81 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %75, i32 %77, i32 %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %79, i8** %83, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %85 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %86 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %87 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %86)
  %88 = load i32, i32* @OID_AUTO, align 4
  %89 = load i32, i32* @CTLFLAG_RD, align 4
  %90 = load %struct.apb_softc*, %struct.apb_softc** %3, align 8
  %91 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %85, i32 %87, i32 %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %89, i8** %94, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %96 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %97 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %98 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %97)
  %99 = load i32, i32* @OID_AUTO, align 4
  %100 = load i32, i32* @CTLFLAG_RD, align 4
  %101 = load %struct.apb_softc*, %struct.apb_softc** %3, align 8
  %102 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %96, i32 %98, i32 %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %100, i8** %105, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %107 = load i32, i32* %2, align 4
  %108 = call i32 @ofw_pcib_gen_setup(i32 %107)
  %109 = load i64, i64* @bootverbose, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %151

111:                                              ; preds = %1
  %112 = load i32, i32* %2, align 4
  %113 = load %struct.apb_softc*, %struct.apb_softc** %3, align 8
  %114 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 (i32, i8*, ...) @device_printf(i32 %112, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %117)
  %119 = load i32, i32* %2, align 4
  %120 = load %struct.apb_softc*, %struct.apb_softc** %3, align 8
  %121 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 (i32, i8*, ...) @device_printf(i32 %119, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %125)
  %127 = load i32, i32* %2, align 4
  %128 = load %struct.apb_softc*, %struct.apb_softc** %3, align 8
  %129 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 (i32, i8*, ...) @device_printf(i32 %127, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %133)
  %135 = load i32, i32* %2, align 4
  %136 = call i32 (i32, i8*, ...) @device_printf(i32 %135, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %137 = load %struct.apb_softc*, %struct.apb_softc** %3, align 8
  %138 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = load i32, i32* @APB_IO_SCALE, align 4
  %141 = call i32 @apb_map_print(i8* %139, i32 %140)
  %142 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %143 = load i32, i32* %2, align 4
  %144 = call i32 (i32, i8*, ...) @device_printf(i32 %143, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %145 = load %struct.apb_softc*, %struct.apb_softc** %3, align 8
  %146 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = load i32, i32* @APB_MEM_SCALE, align 4
  %149 = call i32 @apb_map_print(i8* %147, i32 %148)
  %150 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %151

151:                                              ; preds = %111, %1
  %152 = load i32, i32* %2, align 4
  %153 = call i32 @device_add_child(i32 %152, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 -1)
  %154 = load i32, i32* %2, align 4
  %155 = call i32 @bus_generic_attach(i32 %154)
  ret i32 %155
}

declare dso_local %struct.apb_softc* @device_get_softc(i32) #1

declare dso_local i8* @pci_get_domain(i32) #1

declare dso_local i8* @pci_get_bus(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i8*, i32) #1

declare dso_local i8* @pci_read_config(i32, i32, i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i8**, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @ofw_pcib_gen_setup(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @apb_map_print(i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
