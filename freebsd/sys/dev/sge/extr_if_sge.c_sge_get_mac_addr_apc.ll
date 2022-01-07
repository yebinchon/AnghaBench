; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_get_mac_addr_apc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_get_mac_addr_apc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_softc = type { i32, i32 }
%struct.apc_tbl = type { i64, i64 }
%struct.apc_tbl.0 = type { i64, i64 }

@SIS_VENDORID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@PCIC_BRIDGE = common dso_local global i64 0, align 8
@PCIS_BRIDGE_ISA = common dso_local global i64 0, align 8
@M_TEMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"couldn't find PCI-ISA bridge\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@SGE_FLAG_RGMII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sge_softc*, i32*)* @sge_get_mac_addr_apc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sge_get_mac_addr_apc(%struct.sge_softc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sge_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.apc_tbl*, align 8
  %11 = alloca [3 x %struct.apc_tbl], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sge_softc* %0, %struct.sge_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %8, align 8
  %17 = getelementptr inbounds [3 x %struct.apc_tbl], [3 x %struct.apc_tbl]* %11, i64 0, i64 0
  %18 = getelementptr inbounds %struct.apc_tbl, %struct.apc_tbl* %17, i32 0, i32 0
  %19 = load i32, i32* @SIS_VENDORID, align 4
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %18, align 16
  %21 = getelementptr inbounds %struct.apc_tbl, %struct.apc_tbl* %17, i32 0, i32 1
  store i64 2405, i64* %21, align 8
  %22 = getelementptr inbounds %struct.apc_tbl, %struct.apc_tbl* %17, i64 1
  %23 = getelementptr inbounds %struct.apc_tbl, %struct.apc_tbl* %22, i32 0, i32 0
  %24 = load i32, i32* @SIS_VENDORID, align 4
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %23, align 16
  %26 = getelementptr inbounds %struct.apc_tbl, %struct.apc_tbl* %22, i32 0, i32 1
  store i64 2406, i64* %26, align 8
  %27 = getelementptr inbounds %struct.apc_tbl, %struct.apc_tbl* %22, i64 1
  %28 = getelementptr inbounds %struct.apc_tbl, %struct.apc_tbl* %27, i32 0, i32 0
  %29 = load i32, i32* @SIS_VENDORID, align 4
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %28, align 16
  %31 = getelementptr inbounds %struct.apc_tbl, %struct.apc_tbl* %27, i32 0, i32 1
  store i64 2408, i64* %31, align 8
  %32 = call i32 @devclass_find(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %32, i32* %6, align 4
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %111, %2
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @devclass_get_maxunit(i32 %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %114

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32* @devclass_get_device(i32 %39, i32 %40)
  store i32* %41, i32** %7, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %111

45:                                               ; preds = %38
  %46 = load i32*, i32** %7, align 8
  %47 = call i64 @device_get_children(i32* %46, i32*** %9, i32* %16)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %111

50:                                               ; preds = %45
  store i32 0, i32* %14, align 4
  br label %51

51:                                               ; preds = %104, %50
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %107

55:                                               ; preds = %51
  %56 = load i32**, i32*** %9, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %8, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call i64 @pci_get_class(i32* %61)
  %63 = load i64, i64* @PCIC_BRIDGE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %103

65:                                               ; preds = %55
  %66 = load i32*, i32** %8, align 8
  %67 = call i64 @pci_get_subclass(i32* %66)
  %68 = load i64, i64* @PCIS_BRIDGE_ISA, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %103

70:                                               ; preds = %65
  %71 = getelementptr inbounds [3 x %struct.apc_tbl], [3 x %struct.apc_tbl]* %11, i64 0, i64 0
  store %struct.apc_tbl* %71, %struct.apc_tbl** %10, align 8
  store i32 0, i32* %15, align 4
  br label %72

72:                                               ; preds = %99, %70
  %73 = load i32, i32* %15, align 4
  %74 = getelementptr inbounds [3 x %struct.apc_tbl], [3 x %struct.apc_tbl]* %11, i64 0, i64 0
  %75 = bitcast %struct.apc_tbl* %74 to %struct.apc_tbl.0*
  %76 = call i32 @nitems(%struct.apc_tbl.0* %75)
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %102

78:                                               ; preds = %72
  %79 = load i32*, i32** %8, align 8
  %80 = call i64 @pci_get_vendor(i32* %79)
  %81 = load %struct.apc_tbl*, %struct.apc_tbl** %10, align 8
  %82 = getelementptr inbounds %struct.apc_tbl, %struct.apc_tbl* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %78
  %86 = load i32*, i32** %8, align 8
  %87 = call i64 @pci_get_device(i32* %86)
  %88 = load %struct.apc_tbl*, %struct.apc_tbl** %10, align 8
  %89 = getelementptr inbounds %struct.apc_tbl, %struct.apc_tbl* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i32**, i32*** %9, align 8
  %94 = load i32, i32* @M_TEMP, align 4
  %95 = call i32 @free(i32** %93, i32 %94)
  br label %120

96:                                               ; preds = %85, %78
  %97 = load %struct.apc_tbl*, %struct.apc_tbl** %10, align 8
  %98 = getelementptr inbounds %struct.apc_tbl, %struct.apc_tbl* %97, i32 1
  store %struct.apc_tbl* %98, %struct.apc_tbl** %10, align 8
  br label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %15, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %15, align 4
  br label %72

102:                                              ; preds = %72
  br label %103

103:                                              ; preds = %102, %65, %55
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %14, align 4
  br label %51

107:                                              ; preds = %51
  %108 = load i32**, i32*** %9, align 8
  %109 = load i32, i32* @M_TEMP, align 4
  %110 = call i32 @free(i32** %108, i32 %109)
  br label %111

111:                                              ; preds = %107, %49, %44
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  br label %33

114:                                              ; preds = %33
  %115 = load %struct.sge_softc*, %struct.sge_softc** %4, align 8
  %116 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @device_printf(i32 %117, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %119 = load i32, i32* @EINVAL, align 4
  store i32 %119, i32* %3, align 4
  br label %161

120:                                              ; preds = %92
  %121 = load i32*, i32** %8, align 8
  %122 = call i32 @pci_read_config(i32* %121, i32 72, i32 1)
  store i32 %122, i32* %12, align 4
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* %12, align 4
  %125 = and i32 %124, -3
  %126 = call i32 @pci_write_config(i32* %123, i32 72, i32 %125, i32 1)
  %127 = call i32 @DELAY(i32 50)
  %128 = load i32*, i32** %8, align 8
  %129 = call i32 @pci_read_config(i32* %128, i32 72, i32 1)
  store i32 0, i32* %14, align 4
  br label %130

130:                                              ; preds = %143, %120
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %146

134:                                              ; preds = %130
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 9, %135
  %137 = call i32 @outb(i32 120, i32 %136)
  %138 = call i32 @inb(i32 121)
  %139 = load i32*, i32** %5, align 8
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 %138, i32* %142, align 4
  br label %143

143:                                              ; preds = %134
  %144 = load i32, i32* %14, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %14, align 4
  br label %130

146:                                              ; preds = %130
  %147 = call i32 @outb(i32 120, i32 18)
  %148 = call i32 @inb(i32 121)
  %149 = and i32 %148, 128
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load i32, i32* @SGE_FLAG_RGMII, align 4
  %153 = load %struct.sge_softc*, %struct.sge_softc** %4, align 8
  %154 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %151, %146
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @pci_write_config(i32* %158, i32 72, i32 %159, i32 1)
  store i32 0, i32* %3, align 4
  br label %161

161:                                              ; preds = %157, %114
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @devclass_find(i8*) #1

declare dso_local i32 @devclass_get_maxunit(i32) #1

declare dso_local i32* @devclass_get_device(i32, i32) #1

declare dso_local i64 @device_get_children(i32*, i32***, i32*) #1

declare dso_local i64 @pci_get_class(i32*) #1

declare dso_local i64 @pci_get_subclass(i32*) #1

declare dso_local i32 @nitems(%struct.apc_tbl.0*) #1

declare dso_local i64 @pci_get_vendor(i32*) #1

declare dso_local i64 @pci_get_device(i32*) #1

declare dso_local i32 @free(i32**, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @pci_read_config(i32*, i32, i32) #1

declare dso_local i32 @pci_write_config(i32*, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
