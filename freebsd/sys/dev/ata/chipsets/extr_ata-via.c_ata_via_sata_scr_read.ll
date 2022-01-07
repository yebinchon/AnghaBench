; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-via.c_ata_via_sata_scr_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-via.c_ata_via_sata_scr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATA_SS_DET_NO_DEVICE = common dso_local global i32 0, align 4
@ATA_SS_IPM_PARTIAL = common dso_local global i32 0, align 4
@ATA_SS_IPM_SLUMBER = common dso_local global i32 0, align 4
@ATA_SS_IPM_ACTIVE = common dso_local global i32 0, align 4
@ATA_SS_SPD_GEN2 = common dso_local global i32 0, align 4
@ATA_SS_SPD_GEN1 = common dso_local global i32 0, align 4
@ATA_SC_DET_RESET = common dso_local global i32 0, align 4
@ATA_SC_DET_DISABLE = common dso_local global i32 0, align 4
@ATA_SC_IPM_DIS_PARTIAL = common dso_local global i32 0, align 4
@ATA_SC_IPM_DIS_SLUMBER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @ata_via_sata_scr_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_via_sata_scr_read(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @device_get_parent(i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 1
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %123 [
    i32 128, label %19
    i32 129, label %72
    i32 130, label %80
  ]

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 160, %21
  %23 = call i8* @pci_read_config(i32 %20, i32 %22, i32 1)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = and i32 %25, 3
  %27 = load i32*, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ATA_SS_DET_NO_DEVICE, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %71

32:                                               ; preds = %19
  %33 = load i32, i32* %11, align 4
  %34 = and i32 %33, 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* @ATA_SS_IPM_PARTIAL, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %37
  store i32 %40, i32* %38, align 4
  br label %56

41:                                               ; preds = %32
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32, i32* @ATA_SS_IPM_SLUMBER, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  br label %55

50:                                               ; preds = %41
  %51 = load i32, i32* @ATA_SS_IPM_ACTIVE, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %50, %45
  br label %56

56:                                               ; preds = %55, %36
  %57 = load i32, i32* %11, align 4
  %58 = and i32 %57, 16
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32, i32* @ATA_SS_SPD_GEN2, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 4
  br label %70

65:                                               ; preds = %56
  %66 = load i32, i32* @ATA_SS_SPD_GEN1, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %66
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %65, %60
  br label %71

71:                                               ; preds = %70, %19
  br label %125

72:                                               ; preds = %4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %7, align 4
  %75 = mul nsw i32 %74, 4
  %76 = add nsw i32 168, %75
  %77 = call i8* @pci_read_config(i32 %73, i32 %76, i32 4)
  %78 = ptrtoint i8* %77 to i32
  %79 = load i32*, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  br label %125

80:                                               ; preds = %4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 164, %82
  %84 = call i8* @pci_read_config(i32 %81, i32 %83, i32 1)
  %85 = ptrtoint i8* %84 to i32
  store i32 %85, i32* %11, align 4
  %86 = load i32*, i32** %9, align 8
  store i32 0, i32* %86, align 4
  %87 = load i32, i32* %11, align 4
  %88 = and i32 %87, 1
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %80
  %91 = load i32, i32* @ATA_SC_DET_RESET, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %91
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %90, %80
  %96 = load i32, i32* %11, align 4
  %97 = and i32 %96, 2
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i32, i32* @ATA_SC_DET_DISABLE, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %100
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %99, %95
  %105 = load i32, i32* %11, align 4
  %106 = and i32 %105, 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load i32, i32* @ATA_SC_IPM_DIS_PARTIAL, align 4
  %110 = load i32*, i32** %9, align 8
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %109
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %108, %104
  %114 = load i32, i32* %11, align 4
  %115 = and i32 %114, 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load i32, i32* @ATA_SC_IPM_DIS_SLUMBER, align 4
  %119 = load i32*, i32** %9, align 8
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %118
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %117, %113
  br label %125

123:                                              ; preds = %4
  %124 = load i32, i32* @EINVAL, align 4
  store i32 %124, i32* %5, align 4
  br label %126

125:                                              ; preds = %122, %72, %71
  store i32 0, i32* %5, align 4
  br label %126

126:                                              ; preds = %125, %123
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i8* @pci_read_config(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
