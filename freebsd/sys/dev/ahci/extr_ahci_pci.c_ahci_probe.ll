; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci_pci.c_ahci_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci_pci.c_ahci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i8* }

@PCIC_BRIDGE = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@PCIC_STORAGE = common dso_local global i64 0, align 8
@PCIS_STORAGE_SATA = common dso_local global i64 0, align 8
@PCIP_STORAGE_SATA_AHCI_1_0 = common dso_local global i64 0, align 8
@PCIS_STORAGE_RAID = common dso_local global i64 0, align 8
@ahci_ids = common dso_local global %struct.TYPE_2__* null, align 8
@force_ahci = common dso_local global i32 0, align 4
@AHCI_Q_NOFORCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s AHCI SATA controller\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"AHCI SATA controller\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ahci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [64 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @pci_get_devid(i32 %9)
  store i64 %10, i64* %7, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @pci_get_revid(i32 %11)
  store i64 %12, i64* %8, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @pci_get_class(i32 %13)
  %15 = load i64, i64* @PCIC_BRIDGE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %127

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @pci_get_class(i32 %20)
  %22 = load i64, i64* @PCIC_STORAGE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @pci_get_subclass(i32 %25)
  %27 = load i64, i64* @PCIS_STORAGE_SATA, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @pci_get_progif(i32 %30)
  %32 = load i64, i64* @PCIP_STORAGE_SATA_AHCI_1_0, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* %6, align 4
  br label %47

35:                                               ; preds = %29, %24, %19
  %36 = load i32, i32* %3, align 4
  %37 = call i64 @pci_get_class(i32 %36)
  %38 = load i64, i64* @PCIC_STORAGE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @pci_get_subclass(i32 %41)
  %43 = load i64, i64* @PCIS_STORAGE_RAID, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 2, i32* %6, align 4
  br label %46

46:                                               ; preds = %45, %40, %35
  br label %47

47:                                               ; preds = %46, %34
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %115, %47
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ahci_ids, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %118

56:                                               ; preds = %48
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ahci_ids, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %114

65:                                               ; preds = %56
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ahci_ids, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %8, align 8
  %73 = icmp sle i64 %71, %72
  br i1 %73, label %74, label %114

74:                                               ; preds = %65
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %90, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* @force_ahci, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %114

80:                                               ; preds = %77
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ahci_ids, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @AHCI_Q_NOFORCE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %114, label %90

90:                                               ; preds = %80, %74
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @pci_get_vendor(i32 %91)
  %93 = icmp eq i32 %92, 6523
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @pci_read_config(i32 %95, i32 223, i32 1)
  %97 = and i32 %96, 64
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* @ENXIO, align 4
  store i32 %100, i32* %2, align 4
  br label %127

101:                                              ; preds = %94, %90
  %102 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ahci_ids, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 3
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @snprintf(i8* %102, i32 64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %108)
  %110 = load i32, i32* %3, align 4
  %111 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %112 = call i32 @device_set_desc_copy(i32 %110, i8* %111)
  %113 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %113, i32* %2, align 4
  br label %127

114:                                              ; preds = %80, %77, %65, %56
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  br label %48

118:                                              ; preds = %48
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 1
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load i32, i32* @ENXIO, align 4
  store i32 %122, i32* %2, align 4
  br label %127

123:                                              ; preds = %118
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @device_set_desc_copy(i32 %124, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %126 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %123, %121, %101, %99, %17
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i64 @pci_get_devid(i32) #1

declare dso_local i64 @pci_get_revid(i32) #1

declare dso_local i64 @pci_get_class(i32) #1

declare dso_local i64 @pci_get_subclass(i32) #1

declare dso_local i64 @pci_get_progif(i32) #1

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
