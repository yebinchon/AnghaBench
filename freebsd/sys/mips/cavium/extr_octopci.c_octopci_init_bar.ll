; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octopci.c_octopci_init_bar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octopci.c_octopci_init_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octopci_softc = type { i32, i32 }

@PCIM_BAR_IO_BASE = common dso_local global i32 0, align 4
@CVMX_OCT_PCI_IO_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%02x.%02x:%02x: no ports for BAR%u.\0A\00", align 1
@CVMX_OCT_PCI_IO_BASE = common dso_local global i32 0, align 4
@PCIM_CMD_PORTEN = common dso_local global i32 0, align 4
@PCIR_BIOS = common dso_local global i64 0, align 8
@PCIM_BAR_MEM_TYPE = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_BASE = common dso_local global i64 0, align 8
@CVMX_OCT_PCI_MEM1_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"%02x.%02x:%02x: no memory for BAR%u.\0A\00", align 1
@CVMX_OCT_PCI_MEM1_BASE = common dso_local global i32 0, align 4
@PCIM_CMD_MEMEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32*)* @octopci_init_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octopci_init_bar(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.octopci_softc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.octopci_softc* @device_get_softc(i32 %18)
  store %struct.octopci_softc* %19, %struct.octopci_softc** %14, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i64 @PCIR_BAR(i32 %24)
  %26 = call i32 @octopci_write_config(i32 %20, i32 %21, i32 %22, i32 %23, i64 %25, i32 -1, i32 4)
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i64 @PCIR_BAR(i32 %31)
  %33 = call i32 @octopci_read_config(i32 %27, i32 %28, i32 %29, i32 %30, i64 %32, i32 4)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %6
  %37 = load i32, i32* %12, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %175

39:                                               ; preds = %6
  %40 = load i32, i32* %15, align 4
  %41 = call i64 @PCI_BAR_IO(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %97

43:                                               ; preds = %39
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* @PCIM_BAR_IO_BASE, align 4
  %46 = and i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %16, align 4
  %49 = load %struct.octopci_softc*, %struct.octopci_softc** %14, align 8
  %50 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %16, align 4
  %53 = call i8* @roundup2(i32 %51, i32 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.octopci_softc*, %struct.octopci_softc** %14, align 8
  %56 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.octopci_softc*, %struct.octopci_softc** %14, align 8
  %58 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %16, align 4
  %61 = add i32 %59, %60
  %62 = load i32, i32* @CVMX_OCT_PCI_IO_SIZE, align 4
  %63 = icmp ugt i32 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %43
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @device_printf(i32 %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* %12, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %175

73:                                               ; preds = %43
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i64 @PCIR_BAR(i32 %78)
  %80 = load i32, i32* @CVMX_OCT_PCI_IO_BASE, align 4
  %81 = load %struct.octopci_softc*, %struct.octopci_softc** %14, align 8
  %82 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add i32 %80, %83
  %85 = call i32 @octopci_write_config(i32 %74, i32 %75, i32 %76, i32 %77, i64 %79, i32 %84, i32 4)
  %86 = load i32, i32* %16, align 4
  %87 = load %struct.octopci_softc*, %struct.octopci_softc** %14, align 8
  %88 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* @PCIM_CMD_PORTEN, align 4
  %92 = load i32*, i32** %13, align 8
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %91
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %12, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %175

97:                                               ; preds = %39
  %98 = load i32, i32* %12, align 4
  %99 = call i64 @PCIR_BAR(i32 %98)
  %100 = load i64, i64* @PCIR_BIOS, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store i32 1, i32* %17, align 4
  br label %118

103:                                              ; preds = %97
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* @PCIM_BAR_MEM_TYPE, align 4
  %106 = and i32 %104, %105
  switch i32 %106, label %116 [
    i32 128, label %107
  ]

107:                                              ; preds = %103
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %12, align 4
  %113 = add i32 %112, 1
  %114 = call i64 @PCIR_BAR(i32 %113)
  %115 = call i32 @octopci_write_config(i32 %108, i32 %109, i32 %110, i32 %111, i64 %114, i32 0, i32 4)
  store i32 2, i32* %17, align 4
  br label %117

116:                                              ; preds = %103
  store i32 1, i32* %17, align 4
  br label %117

117:                                              ; preds = %116, %107
  br label %118

118:                                              ; preds = %117, %102
  %119 = load i32, i32* %15, align 4
  %120 = load i64, i64* @PCIM_BAR_MEM_BASE, align 8
  %121 = trunc i64 %120 to i32
  %122 = and i32 %119, %121
  %123 = xor i32 %122, -1
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %16, align 4
  %125 = load %struct.octopci_softc*, %struct.octopci_softc** %14, align 8
  %126 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %16, align 4
  %129 = call i8* @roundup2(i32 %127, i32 %128)
  %130 = ptrtoint i8* %129 to i32
  %131 = load %struct.octopci_softc*, %struct.octopci_softc** %14, align 8
  %132 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.octopci_softc*, %struct.octopci_softc** %14, align 8
  %134 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %16, align 4
  %137 = add i32 %135, %136
  %138 = load i32, i32* @CVMX_OCT_PCI_MEM1_SIZE, align 4
  %139 = icmp ugt i32 %137, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %118
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @device_printf(i32 %141, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %142, i32 %143, i32 %144, i32 %145)
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %17, align 4
  %149 = add i32 %147, %148
  store i32 %149, i32* %7, align 4
  br label %175

150:                                              ; preds = %118
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %12, align 4
  %156 = call i64 @PCIR_BAR(i32 %155)
  %157 = load i32, i32* @CVMX_OCT_PCI_MEM1_BASE, align 4
  %158 = load %struct.octopci_softc*, %struct.octopci_softc** %14, align 8
  %159 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = add i32 %157, %160
  %162 = call i32 @octopci_write_config(i32 %151, i32 %152, i32 %153, i32 %154, i64 %156, i32 %161, i32 4)
  %163 = load i32, i32* %16, align 4
  %164 = load %struct.octopci_softc*, %struct.octopci_softc** %14, align 8
  %165 = getelementptr inbounds %struct.octopci_softc, %struct.octopci_softc* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = add i32 %166, %163
  store i32 %167, i32* %165, align 4
  %168 = load i32, i32* @PCIM_CMD_MEMEN, align 4
  %169 = load i32*, i32** %13, align 8
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %168
  store i32 %171, i32* %169, align 4
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %17, align 4
  %174 = add i32 %172, %173
  store i32 %174, i32* %7, align 4
  br label %175

175:                                              ; preds = %150, %140, %73, %64, %36
  %176 = load i32, i32* %7, align 4
  ret i32 %176
}

declare dso_local %struct.octopci_softc* @device_get_softc(i32) #1

declare dso_local i32 @octopci_write_config(i32, i32, i32, i32, i64, i32, i32) #1

declare dso_local i64 @PCIR_BAR(i32) #1

declare dso_local i32 @octopci_read_config(i32, i32, i32, i32, i64, i32) #1

declare dso_local i64 @PCI_BAR_IO(i32) #1

declare dso_local i8* @roundup2(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
