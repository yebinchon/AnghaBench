; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_nvme.c_pci_nvme_init_nsdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_nvme.c_pci_nvme_init_nsdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_nvme_softc = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.nvme_namespace_data = type { i32, i32, i32, i32*, i32, i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"%s%u%u%u\00", align 1
@vmname = common dso_local global i32 0, align 4
@OUI_FREEBSD_NVME_LOW = common dso_local global i32 0, align 4
@NVME_NS_DATA_LBAF_LBADS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_nvme_softc*, %struct.nvme_namespace_data*, i32, i32)* @pci_nvme_init_nsdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_nvme_init_nsdata(%struct.pci_nvme_softc* %0, %struct.nvme_namespace_data* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pci_nvme_softc*, align 8
  %6 = alloca %struct.nvme_namespace_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.pci_nvme_softc* %0, %struct.pci_nvme_softc** %5, align 8
  store %struct.nvme_namespace_data* %1, %struct.nvme_namespace_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %5, align 8
  %11 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %5, align 8
  %15 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %13, %17
  %19 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %6, align 8
  %20 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %6, align 8
  %22 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %6, align 8
  %25 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %6, align 8
  %27 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %6, align 8
  %30 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %6, align 8
  %32 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %31, i32 0, i32 6
  store i64 0, i64* %32, align 8
  %33 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %6, align 8
  %34 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %33, i32 0, i32 5
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %72

37:                                               ; preds = %4
  store i8* null, i8** %9, align 8
  %38 = load i32, i32* @vmname, align 4
  %39 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %5, align 8
  %40 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %5, align 8
  %45 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %5, align 8
  %50 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @asprintf(i8** %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %43, i32 %48, i32 %53)
  %55 = load i8*, i8** %9, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %37
  %58 = load i32, i32* @OUI_FREEBSD_NVME_LOW, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @strlen(i8* %60)
  %62 = call i32 @crc16(i32 0, i8* %59, i32 %61)
  %63 = or i32 %58, %62
  store i32 %63, i32* %8, align 4
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @free(i8* %64)
  br label %66

66:                                               ; preds = %57, %37
  %67 = load i32, i32* %8, align 4
  %68 = shl i32 %67, 16
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, 65535
  %71 = or i32 %68, %70
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %66, %4
  %73 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %6, align 8
  %74 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @be64enc(i32 %75, i32 %76)
  %78 = load %struct.pci_nvme_softc*, %struct.pci_nvme_softc** %5, align 8
  %79 = getelementptr inbounds %struct.pci_nvme_softc, %struct.pci_nvme_softc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @NVME_NS_DATA_LBAF_LBADS_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %6, align 8
  %85 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 %83, i32* %87, align 4
  ret void
}

declare dso_local i32 @asprintf(i8**, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @crc16(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @be64enc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
