; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus.c_cardbus_attach_card.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus.c_cardbus_attach_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardbus_softc = type { i32 }
%struct.cardbus_devinfo = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32*, i64 }
%struct.pci_devinfo = type { i32 }

@Giant = common dso_local global i32 0, align 4
@PCI_FUNCMAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Cannot add child!\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Warning: Bogus CIS ignored\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @cardbus_attach_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cardbus_attach_card(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cardbus_softc*, align 8
  %13 = alloca %struct.cardbus_devinfo*, align 8
  store i32* %0, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32* @device_get_parent(i32* %14)
  store i32* %15, i32** %4, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = call %struct.cardbus_softc* @device_get_softc(i32* %16)
  store %struct.cardbus_softc* %17, %struct.cardbus_softc** %12, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @cardbus_detach_card(i32* %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @POWER_DISABLE_SOCKET(i32* %20, i32* %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @POWER_ENABLE_SOCKET(i32* %23, i32* %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @pcib_get_domain(i32* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @pcib_get_bus(i32* %28)
  store i32 %29, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %30 = call i32 @mtx_lock(i32* @Giant)
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %138, %1
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %141

35:                                               ; preds = %31
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @pci_read_device(i32* %36, i32* %37, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = inttoptr i64 %42 to %struct.cardbus_devinfo*
  store %struct.cardbus_devinfo* %43, %struct.cardbus_devinfo** %13, align 8
  %44 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %13, align 8
  %45 = icmp eq %struct.cardbus_devinfo* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %138

47:                                               ; preds = %35
  %48 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %13, align 8
  %49 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @PCI_FUNCMAX, align 4
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %54, %47
  %57 = load i32*, i32** %3, align 8
  %58 = call i32* @device_add_child(i32* %57, i32* null, i32 -1)
  store i32* %58, i32** %5, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @DEVPRINTF(i32* bitcast ([19 x i8]* @.str to i32*))
  %64 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %13, align 8
  %65 = bitcast %struct.cardbus_devinfo* %64 to %struct.pci_devinfo*
  %66 = call i32 @pci_freecfg(%struct.pci_devinfo* %65)
  br label %138

67:                                               ; preds = %56
  %68 = load i32*, i32** %5, align 8
  %69 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %13, align 8
  %70 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i32* %68, i32** %72, align 8
  %73 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %13, align 8
  %74 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = call i32 @resource_list_init(i32* %75)
  %77 = load i32*, i32** %5, align 8
  %78 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %13, align 8
  %79 = call i32 @device_set_ivars(i32* %77, %struct.cardbus_devinfo* %78)
  %80 = load %struct.cardbus_softc*, %struct.cardbus_softc** %12, align 8
  %81 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %13, align 8
  %82 = load i32*, i32** %3, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @cardbus_device_create(%struct.cardbus_softc* %80, %struct.cardbus_devinfo* %81, i32* %82, i32* %83)
  %85 = load i32*, i32** %3, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = call i64 @cardbus_do_cis(i32* %85, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %67
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @DEVPRINTF(i32* bitcast ([28 x i8]* @.str.1 to i32*))
  br label %92

92:                                               ; preds = %89, %67
  %93 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %13, align 8
  %94 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %13, align 8
  %99 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %98, i32 0, i32 0
  %100 = call i32 @pci_cfg_save(i32* %97, %struct.TYPE_5__* %99, i32 0)
  %101 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %13, align 8
  %102 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %13, align 8
  %107 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %106, i32 0, i32 0
  %108 = call i32 @pci_cfg_restore(i32* %105, %struct.TYPE_5__* %107)
  %109 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %13, align 8
  %110 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = call i32 @cardbus_device_setup_regs(%struct.TYPE_6__* %111)
  %113 = load i32*, i32** %3, align 8
  %114 = load i32*, i32** %5, align 8
  %115 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %13, align 8
  %116 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @pci_add_resources(i32* %113, i32* %114, i32 1, i32 %117)
  %119 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %13, align 8
  %120 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %119, i32 0, i32 0
  %121 = call i32 @pci_print_verbose(%struct.TYPE_5__* %120)
  %122 = load i32*, i32** %5, align 8
  %123 = call i64 @device_probe_and_attach(i32* %122)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %92
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %137

128:                                              ; preds = %92
  %129 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %13, align 8
  %130 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.cardbus_devinfo*, %struct.cardbus_devinfo** %13, align 8
  %135 = getelementptr inbounds %struct.cardbus_devinfo, %struct.cardbus_devinfo* %134, i32 0, i32 0
  %136 = call i32 @pci_cfg_save(i32* %133, %struct.TYPE_5__* %135, i32 1)
  br label %137

137:                                              ; preds = %128, %125
  br label %138

138:                                              ; preds = %137, %61, %46
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  br label %31

141:                                              ; preds = %31
  %142 = call i32 @mtx_unlock(i32* @Giant)
  %143 = load i32, i32* %10, align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  store i32 0, i32* %2, align 4
  br label %148

146:                                              ; preds = %141
  %147 = load i32, i32* @ENOENT, align 4
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %146, %145
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32* @device_get_parent(i32*) #1

declare dso_local %struct.cardbus_softc* @device_get_softc(i32*) #1

declare dso_local i32 @cardbus_detach_card(i32*) #1

declare dso_local i32 @POWER_DISABLE_SOCKET(i32*, i32*) #1

declare dso_local i32 @POWER_ENABLE_SOCKET(i32*, i32*) #1

declare dso_local i32 @pcib_get_domain(i32*) #1

declare dso_local i32 @pcib_get_bus(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @pci_read_device(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32* @device_add_child(i32*, i32*, i32) #1

declare dso_local i32 @DEVPRINTF(i32*) #1

declare dso_local i32 @pci_freecfg(%struct.pci_devinfo*) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.cardbus_devinfo*) #1

declare dso_local i32 @cardbus_device_create(%struct.cardbus_softc*, %struct.cardbus_devinfo*, i32*, i32*) #1

declare dso_local i64 @cardbus_do_cis(i32*, i32*) #1

declare dso_local i32 @pci_cfg_save(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @pci_cfg_restore(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @cardbus_device_setup_regs(%struct.TYPE_6__*) #1

declare dso_local i32 @pci_add_resources(i32*, i32*, i32, i32) #1

declare dso_local i32 @pci_print_verbose(%struct.TYPE_5__*) #1

declare dso_local i64 @device_probe_and_attach(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
