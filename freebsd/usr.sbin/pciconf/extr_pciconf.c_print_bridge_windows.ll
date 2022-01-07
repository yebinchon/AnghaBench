; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_pciconf.c_print_bridge_windows.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_pciconf.c_print_bridge_windows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_conf = type { i64, i32, i32, i32 }

@PCIR_IOBASEL_1 = common dso_local global i32 0, align 4
@PCIR_IOLIMITL_1 = common dso_local global i32 0, align 4
@PCIM_BRIO_MASK = common dso_local global i32 0, align 4
@PCIM_BRIO_32 = common dso_local global i32 0, align 4
@PCIR_IOBASEH_1 = common dso_local global i32 0, align 4
@PCIR_IOLIMITH_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"I/O Port\00", align 1
@PCIR_MEMBASE_1 = common dso_local global i32 0, align 4
@PCIR_MEMLIMIT_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Memory\00", align 1
@PCIR_PMBASEL_1 = common dso_local global i32 0, align 4
@PCIR_PMLIMITL_1 = common dso_local global i32 0, align 4
@PCIM_BRPM_MASK = common dso_local global i32 0, align 4
@PCIM_BRPM_64 = common dso_local global i32 0, align 4
@PCIR_PMBASEH_1 = common dso_local global i32 0, align 4
@PCIR_PMLIMITH_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Prefetchable Memory\00", align 1
@PCIP_BRIDGE_PCI_SUBTRACTIVE = common dso_local global i64 0, align 8
@PCIR_BRIDGECTL_1 = common dso_local global i32 0, align 4
@PCIB_BCR_ISA_ENABLE = common dso_local global i32 0, align 4
@PCIB_BCR_VGA_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pci_conf*)* @print_bridge_windows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_bridge_windows(i32 %0, %struct.pci_conf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.pci_conf* %1, %struct.pci_conf** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %13 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %12, i32 0, i32 3
  %14 = load i32, i32* @PCIR_IOBASEL_1, align 4
  %15 = call i32 @read_config(i32 %11, i32* %13, i32 %14, i32 1)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %21 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %20, i32 0, i32 3
  %22 = load i32, i32* @PCIR_IOLIMITL_1, align 4
  %23 = call i32 @read_config(i32 %19, i32* %21, i32 %22, i32 1)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %65

25:                                               ; preds = %18, %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @PCIM_BRIO_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @PCIM_BRIO_32, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %25
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %34 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %33, i32 0, i32 3
  %35 = load i32, i32* @PCIR_IOBASEH_1, align 4
  %36 = call i32 @read_config(i32 %32, i32* %34, i32 %35, i32 2)
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @PCI_PPBIOBASE(i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %41 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %40, i32 0, i32 3
  %42 = load i32, i32* @PCIR_IOLIMITH_1, align 4
  %43 = call i32 @read_config(i32 %39, i32* %41, i32 %42, i32 2)
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %46 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %45, i32 0, i32 3
  %47 = load i32, i32* @PCIR_IOLIMITL_1, align 4
  %48 = call i32 @read_config(i32 %44, i32* %46, i32 %47, i32 1)
  %49 = call i32 @PCI_PPBIOLIMIT(i32 %43, i32 %48)
  store i32 %49, i32* %6, align 4
  store i32 32, i32* %10, align 4
  br label %59

50:                                               ; preds = %25
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @PCI_PPBIOBASE(i32 0, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %55 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %54, i32 0, i32 3
  %56 = load i32, i32* @PCIR_IOLIMITL_1, align 4
  %57 = call i32 @read_config(i32 %53, i32* %55, i32 %56, i32 1)
  %58 = call i32 @PCI_PPBIOLIMIT(i32 0, i32 %57)
  store i32 %58, i32* %6, align 4
  store i32 16, i32* %10, align 4
  br label %59

59:                                               ; preds = %50, %31
  %60 = load i32, i32* @PCIR_IOBASEL_1, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @print_window(i32 %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %18
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %68 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %67, i32 0, i32 3
  %69 = load i32, i32* @PCIR_MEMBASE_1, align 4
  %70 = call i32 @read_config(i32 %66, i32* %68, i32 %69, i32 2)
  %71 = call i32 @PCI_PPBMEMBASE(i32 0, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %74 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %73, i32 0, i32 3
  %75 = load i32, i32* @PCIR_MEMLIMIT_1, align 4
  %76 = call i32 @read_config(i32 %72, i32* %74, i32 %75, i32 2)
  %77 = call i32 @PCI_PPBMEMLIMIT(i32 0, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* @PCIR_MEMBASE_1, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @print_window(i32 %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 32, i32 %79, i32 %80)
  %82 = load i32, i32* %3, align 4
  %83 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %84 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %83, i32 0, i32 3
  %85 = load i32, i32* @PCIR_PMBASEL_1, align 4
  %86 = call i32 @read_config(i32 %82, i32* %84, i32 %85, i32 2)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %65
  %90 = load i32, i32* %3, align 4
  %91 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %92 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %91, i32 0, i32 3
  %93 = load i32, i32* @PCIR_PMLIMITL_1, align 4
  %94 = call i32 @read_config(i32 %90, i32* %92, i32 %93, i32 2)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %136

96:                                               ; preds = %89, %65
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @PCIM_BRPM_MASK, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* @PCIM_BRPM_64, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %121

102:                                              ; preds = %96
  %103 = load i32, i32* %3, align 4
  %104 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %105 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %104, i32 0, i32 3
  %106 = load i32, i32* @PCIR_PMBASEH_1, align 4
  %107 = call i32 @read_config(i32 %103, i32* %105, i32 %106, i32 4)
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @PCI_PPBMEMBASE(i32 %107, i32 %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %3, align 4
  %111 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %112 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %111, i32 0, i32 3
  %113 = load i32, i32* @PCIR_PMLIMITH_1, align 4
  %114 = call i32 @read_config(i32 %110, i32* %112, i32 %113, i32 4)
  %115 = load i32, i32* %3, align 4
  %116 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %117 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %116, i32 0, i32 3
  %118 = load i32, i32* @PCIR_PMLIMITL_1, align 4
  %119 = call i32 @read_config(i32 %115, i32* %117, i32 %118, i32 2)
  %120 = call i32 @PCI_PPBMEMLIMIT(i32 %114, i32 %119)
  store i32 %120, i32* %6, align 4
  store i32 64, i32* %10, align 4
  br label %130

121:                                              ; preds = %96
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @PCI_PPBMEMBASE(i32 0, i32 %122)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %3, align 4
  %125 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %126 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %125, i32 0, i32 3
  %127 = load i32, i32* @PCIR_PMLIMITL_1, align 4
  %128 = call i32 @read_config(i32 %124, i32* %126, i32 %127, i32 2)
  %129 = call i32 @PCI_PPBMEMLIMIT(i32 0, i32 %128)
  store i32 %129, i32* %6, align 4
  store i32 32, i32* %10, align 4
  br label %130

130:                                              ; preds = %121, %102
  %131 = load i32, i32* @PCIR_PMBASEL_1, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @print_window(i32 %131, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %130, %89
  %137 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %138 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @PCIP_BRIDGE_PCI_SUBTRACTIVE, align 8
  %141 = icmp eq i64 %139, %140
  %142 = zext i1 %141 to i32
  store i32 %142, i32* %9, align 4
  %143 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %144 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = shl i32 %145, 16
  %147 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %148 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %146, %149
  switch i32 %150, label %152 [
    i32 -1610475651, label %151
    i32 306937990, label %151
    i32 100996055, label %151
  ]

151:                                              ; preds = %136, %136, %136
  store i32 1, i32* %9, align 4
  br label %152

152:                                              ; preds = %151, %136
  %153 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %154 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 32902
  br i1 %156, label %157, label %164

157:                                              ; preds = %152
  %158 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %159 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = and i32 %160, 65280
  %162 = icmp eq i32 %161, 9216
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  store i32 1, i32* %9, align 4
  br label %164

164:                                              ; preds = %163, %157, %152
  %165 = load i32, i32* %3, align 4
  %166 = load %struct.pci_conf*, %struct.pci_conf** %4, align 8
  %167 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %166, i32 0, i32 3
  %168 = load i32, i32* @PCIR_BRIDGECTL_1, align 4
  %169 = call i32 @read_config(i32 %165, i32* %167, i32 %168, i32 2)
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* @PCIB_BCR_ISA_ENABLE, align 4
  %172 = and i32 %170, %171
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @PCIB_BCR_VGA_ENABLE, align 4
  %175 = and i32 %173, %174
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @print_special_decode(i32 %172, i32 %175, i32 %176)
  ret void
}

declare dso_local i32 @read_config(i32, i32*, i32, i32) #1

declare dso_local i32 @PCI_PPBIOBASE(i32, i32) #1

declare dso_local i32 @PCI_PPBIOLIMIT(i32, i32) #1

declare dso_local i32 @print_window(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @PCI_PPBMEMBASE(i32, i32) #1

declare dso_local i32 @PCI_PPBMEMLIMIT(i32, i32) #1

declare dso_local i32 @print_special_decode(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
