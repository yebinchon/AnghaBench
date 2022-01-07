; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_ofw_pcibus.c_ofw_pcibus_setup_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_ofw_pcibus.c_ofw_pcibus_setup_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIR_HDRTYPE = common dso_local global i32 0, align 4
@PCIM_HDRTYPE = common dso_local global i32 0, align 4
@PCIM_HDRTYPE_BRIDGE = common dso_local global i32 0, align 4
@PCIR_BRIDGECTL_1 = common dso_local global i32 0, align 4
@PCIB_BCR_MASTER_ABORT_MODE = common dso_local global i32 0, align 4
@PCIB_BCR_SERR_ENABLE = common dso_local global i32 0, align 4
@PCIB_BCR_PERR_ENABLE = common dso_local global i32 0, align 4
@OFW_PCI_LATENCY = common dso_local global i32 0, align 4
@PCIR_SECLAT_1 = common dso_local global i32 0, align 4
@PCIR_MINGNT = common dso_local global i32 0, align 4
@PCIR_LATTIMER = common dso_local global i32 0, align 4
@PCIR_CACHELNSZ = common dso_local global i32 0, align 4
@STRBUF_LINESZ = common dso_local global i32 0, align 4
@PCIR_VENDOR = common dso_local global i32 0, align 4
@PCIR_DEVICE = common dso_local global i32 0, align 4
@PCIR_INTLINE = common dso_local global i32 0, align 4
@PCI_INVALID_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32)* @ofw_pcibus_setup_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ofw_pcibus_setup_device(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @PCIR_HDRTYPE, align 4
  %17 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 1)
  %18 = load i32, i32* @PCIM_HDRTYPE, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @PCIM_HDRTYPE_BRIDGE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %5
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @PCIR_BRIDGECTL_1, align 4
  %28 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 1)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* @PCIB_BCR_MASTER_ABORT_MODE, align 4
  %30 = load i32, i32* @PCIB_BCR_SERR_ENABLE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @PCIB_BCR_PERR_ENABLE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %11, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @PCIR_BRIDGECTL_1, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_WRITE_CONFIG to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 1)
  %43 = load i32, i32* @OFW_PCI_LATENCY, align 4
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @PCIR_SECLAT_1, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_WRITE_CONFIG to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 1)
  br label %74

51:                                               ; preds = %5
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @PCIR_MINGNT, align 4
  %57 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 1)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %51
  %61 = load i32, i32* %7, align 4
  switch i32 %61, label %68 [
    i32 33000000, label %62
    i32 66000000, label %65
  ]

62:                                               ; preds = %60
  %63 = load i32, i32* %11, align 4
  %64 = mul nsw i32 %63, 8
  store i32 %64, i32* %11, align 4
  br label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %11, align 4
  %67 = mul nsw i32 %66, 4
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %60, %65, %62
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @min(i32 %69, i32 255)
  store i32 %70, i32* %11, align 4
  br label %73

71:                                               ; preds = %51
  %72 = load i32, i32* @OFW_PCI_LATENCY, align 4
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %71, %68
  br label %74

74:                                               ; preds = %73, %22
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @PCIR_LATTIMER, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_WRITE_CONFIG to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 1)
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @PCIR_CACHELNSZ, align 4
  %87 = load i32, i32* @STRBUF_LINESZ, align 4
  %88 = sext i32 %87 to i64
  %89 = udiv i64 %88, 4
  %90 = call i32 (i32, i32, i32, i32, i32, i64, i32, ...) bitcast (i32 (...)* @PCIB_WRITE_CONFIG to i32 (i32, i32, i32, i32, i32, i64, i32, ...)*)(i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i64 %89, i32 1)
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @PCIR_VENDOR, align 4
  %96 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 2)
  %97 = icmp eq i32 %96, 4281
  br i1 %97, label %98, label %118

98:                                               ; preds = %74
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @PCIR_DEVICE, align 4
  %104 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 2)
  %105 = icmp eq i32 %104, 21033
  br i1 %105, label %106, label %118

106:                                              ; preds = %98
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %10, align 4
  %115 = call i32 (i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_READ_CONFIG to i32 (i32, i32, i32, i32, i32, i32, ...)*)(i32 %111, i32 %112, i32 %113, i32 %114, i32 80, i32 1)
  %116 = or i32 %115, 3
  %117 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_WRITE_CONFIG to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %107, i32 %108, i32 %109, i32 %110, i32 80, i32 %116, i32 1)
  br label %118

118:                                              ; preds = %106, %98, %74
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @PCIR_INTLINE, align 4
  %124 = load i32, i32* @PCI_INVALID_IRQ, align 4
  %125 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @PCIB_WRITE_CONFIG to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*)(i32 %119, i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 1)
  ret void
}

declare dso_local i32 @PCIB_READ_CONFIG(...) #1

declare dso_local i32 @PCIB_WRITE_CONFIG(...) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
