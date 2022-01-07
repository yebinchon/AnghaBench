; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tdfx/extr_tdfx_pci.c_tdfx_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tdfx/extr_tdfx_pci.c_tdfx_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tdfx_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32*, i32*, i32*, i32*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.tdfx_softc* }

@tdfx_count = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@PCI_DEVICE_3DFX_VOODOO3 = common dso_local global i32 0, align 4
@PCI_DEVICE_3DFX_BANSHEE = common dso_local global i32 0, align 4
@PCIR_IOBASE0_2 = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@tdfx_cdev = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"3dfx%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tdfx_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tdfx_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tdfx_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call i32 @PCIR_BAR(i32 0)
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* @tdfx_count, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @tdfx_count, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.tdfx_softc* @device_get_softc(i32 %9)
  store %struct.tdfx_softc* %10, %struct.tdfx_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %13 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %12, i32 0, i32 16
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @pci_get_vendor(i32 %14)
  %16 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %17 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %16, i32 0, i32 15
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @pci_get_devid(i32 %18)
  %20 = ashr i32 %19, 16
  %21 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %22 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @pci_get_bus(i32 %23)
  %25 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %26 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %25, i32 0, i32 14
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @pci_get_slot(i32 %27)
  %29 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %30 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %29, i32 0, i32 13
  store i32 %28, i32* %30, align 8
  %31 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %32 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %31, i32 0, i32 12
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @pci_read_config(i32 %33, i32 16, i32 4)
  %35 = and i32 %34, -65536
  %36 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %37 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @SYS_RES_MEMORY, align 4
  %40 = load i32, i32* @RF_ACTIVE, align 4
  %41 = load i32, i32* @RF_SHAREABLE, align 4
  %42 = or i32 %40, %41
  %43 = call i8* @bus_alloc_resource_any(i32 %38, i32 %39, i32* %5, i32 %42)
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %46 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %45, i32 0, i32 11
  store i32* %44, i32** %46, align 8
  %47 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %48 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %47, i32 0, i32 11
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %1
  %52 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %53 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %52, i32 0, i32 2
  store i32 0, i32* %53, align 8
  br label %58

54:                                               ; preds = %1
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %57 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @pci_get_devid(i32 %59)
  %61 = load i32, i32* @PCI_DEVICE_3DFX_VOODOO3, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @pci_get_devid(i32 %64)
  %66 = load i32, i32* @PCI_DEVICE_3DFX_BANSHEE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %129

68:                                               ; preds = %63, %58
  store i32 20, i32* %5, align 4
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @pci_read_config(i32 %69, i32 20, i32 4)
  %71 = and i32 %70, -65536
  %72 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %73 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @SYS_RES_MEMORY, align 4
  %76 = load i32, i32* @RF_ACTIVE, align 4
  %77 = load i32, i32* @RF_SHAREABLE, align 4
  %78 = or i32 %76, %77
  %79 = call i8* @bus_alloc_resource_any(i32 %74, i32 %75, i32* %5, i32 %78)
  %80 = bitcast i8* %79 to i32*
  %81 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %82 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %81, i32 0, i32 10
  store i32* %80, i32** %82, align 8
  %83 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %84 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %83, i32 0, i32 10
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %68
  %88 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %89 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %88, i32 0, i32 4
  store i32 0, i32* %89, align 8
  br label %94

90:                                               ; preds = %68
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %93 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %90, %87
  %95 = load i32, i32* @PCIR_IOBASE0_2, align 4
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @pci_read_config(i32 %96, i32 44, i32 2)
  %98 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %99 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @pci_read_config(i32 %100, i32 48, i32 2)
  %102 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %103 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %101, %104
  %106 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %107 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* @SYS_RES_IOPORT, align 4
  %110 = load i32, i32* @RF_ACTIVE, align 4
  %111 = load i32, i32* @RF_SHAREABLE, align 4
  %112 = or i32 %110, %111
  %113 = call i8* @bus_alloc_resource_any(i32 %108, i32 %109, i32* %5, i32 %112)
  %114 = bitcast i8* %113 to i32*
  %115 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %116 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %115, i32 0, i32 9
  store i32* %114, i32** %116, align 8
  %117 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %118 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %117, i32 0, i32 9
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %94
  %122 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %123 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %122, i32 0, i32 7
  store i32 0, i32* %123, align 4
  br label %128

124:                                              ; preds = %94
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %127 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %126, i32 0, i32 7
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %124, %121
  br label %136

129:                                              ; preds = %63
  %130 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %131 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %130, i32 0, i32 3
  store i32 0, i32* %131, align 4
  %132 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %133 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %132, i32 0, i32 10
  store i32* null, i32** %133, align 8
  %134 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %135 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %134, i32 0, i32 9
  store i32* null, i32** %135, align 8
  br label %136

136:                                              ; preds = %129, %128
  %137 = load i32, i32* %3, align 4
  %138 = call i64 @tdfx_setmtrr(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  store i32 -1, i32* %2, align 4
  br label %156

141:                                              ; preds = %136
  %142 = load i32, i32* %3, align 4
  %143 = call i32 @device_get_unit(i32 %142)
  %144 = load i32, i32* @UID_ROOT, align 4
  %145 = load i32, i32* @GID_WHEEL, align 4
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @device_get_unit(i32 %146)
  %148 = call %struct.TYPE_2__* @make_dev(i32* @tdfx_cdev, i32 %143, i32 %144, i32 %145, i32 384, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %147)
  %149 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %150 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %149, i32 0, i32 8
  store %struct.TYPE_2__* %148, %struct.TYPE_2__** %150, align 8
  %151 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %152 = load %struct.tdfx_softc*, %struct.tdfx_softc** %4, align 8
  %153 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %152, i32 0, i32 8
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  store %struct.tdfx_softc* %151, %struct.tdfx_softc** %155, align 8
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %141, %140
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local %struct.tdfx_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i32 @pci_get_bus(i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i64 @tdfx_setmtrr(i32) #1

declare dso_local %struct.TYPE_2__* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
