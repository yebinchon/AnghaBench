; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32, i32, i64, i64 (i32*)*, i32, i32, i32, i32*, i32, i32 }

@IOMASK = common dso_local global i32 0, align 4
@ata_pci_ch_attach = common dso_local global i32 0, align 4
@ata_pci_ch_detach = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIM_CMD_BUSMASTEREN = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@ATA_BMADDR_RID = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ata\00", align 1
@ata_devclass = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to add ata child device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_pci_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ata_pci_controller*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.ata_pci_controller* @device_get_softc(i32* %8)
  store %struct.ata_pci_controller* %9, %struct.ata_pci_controller** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @ata_legacy(i32* %10)
  %12 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %13 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %12, i32 0, i32 2
  store i64 %11, i64* %13, align 8
  %14 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %15 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @PCIR_BAR(i32 2)
  %21 = call i32 @pci_read_config(i32* %19, i32 %20, i32 4)
  %22 = load i32, i32* @IOMASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18, %1
  %26 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %27 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %26, i32 0, i32 0
  store i32 2, i32* %27, align 8
  br label %31

28:                                               ; preds = %18
  %29 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %30 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %33 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %32, i32 0, i32 1
  store i32 -1, i32* %33, align 4
  %34 = load i32, i32* @ata_pci_ch_attach, align 4
  %35 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %36 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %35, i32 0, i32 9
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @ata_pci_ch_detach, align 4
  %38 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %39 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %42 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %41, i32 0, i32 7
  store i32* %40, i32** %42, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @pci_enable_busmaster(i32* %43)
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* @PCIR_COMMAND, align 4
  %47 = call i32 @pci_read_config(i32* %45, i32 %46, i32 2)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @PCIM_CMD_BUSMASTEREN, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @PCIM_CMD_BUSMASTEREN, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %31
  %54 = load i32, i32* @SYS_RES_IOPORT, align 4
  %55 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %56 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @ATA_BMADDR_RID, align 4
  %58 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %59 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %62 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %65 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %64, i32 0, i32 4
  %66 = load i32, i32* @RF_ACTIVE, align 4
  %67 = call i32 @bus_alloc_resource_any(i32* %60, i32 %63, i32* %65, i32 %66)
  %68 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %69 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %53, %31
  %71 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %72 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %71, i32 0, i32 3
  %73 = load i64 (i32*)*, i64 (i32*)** %72, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = call i64 %73(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @ENXIO, align 4
  store i32 %78, i32* %2, align 4
  br label %133

79:                                               ; preds = %70
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %127, %79
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %83 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %130

86:                                               ; preds = %80
  %87 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %88 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %7, align 4
  %91 = shl i32 1, %90
  %92 = and i32 %89, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %127

95:                                               ; preds = %86
  %96 = load i32*, i32** %3, align 8
  %97 = load i32, i32* %7, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %7, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %109

102:                                              ; preds = %99, %95
  %103 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %104 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* %7, align 4
  br label %112

109:                                              ; preds = %102, %99
  %110 = load i32, i32* @ata_devclass, align 4
  %111 = call i32 @devclass_find_free_unit(i32 %110, i32 2)
  br label %112

112:                                              ; preds = %109, %107
  %113 = phi i32 [ %108, %107 ], [ %111, %109 ]
  %114 = call i32* @device_add_child(i32* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %113)
  store i32* %114, i32** %5, align 8
  %115 = load i32*, i32** %5, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load i32*, i32** %3, align 8
  %119 = call i32 @device_printf(i32* %118, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %126

120:                                              ; preds = %112
  %121 = load i32*, i32** %5, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i8*
  %125 = call i32 @device_set_ivars(i32* %121, i8* %124)
  br label %126

126:                                              ; preds = %120, %117
  br label %127

127:                                              ; preds = %126, %94
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %80

130:                                              ; preds = %80
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 @bus_generic_attach(i32* %131)
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %130, %77
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.ata_pci_controller* @device_get_softc(i32*) #1

declare dso_local i64 @ata_legacy(i32*) #1

declare dso_local i32 @pci_read_config(i32*, i32, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32*) #1

declare dso_local i32 @bus_alloc_resource_any(i32*, i32, i32*, i32) #1

declare dso_local i32* @device_add_child(i32*, i8*, i32) #1

declare dso_local i32 @devclass_find_free_unit(i32, i32) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i32 @device_set_ivars(i32*, i8*) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
