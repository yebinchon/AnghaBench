; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_set_powerstate_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_set_powerstate_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@PCIM_PSTAT_DMASK = common dso_local global i32 0, align 4
@PCIM_PSTAT_D0 = common dso_local global i32 0, align 4
@PCIM_PCAP_D1SUPP = common dso_local global i32 0, align 4
@PCIM_PSTAT_D1 = common dso_local global i32 0, align 4
@PCIM_PCAP_D2SUPP = common dso_local global i32 0, align 4
@PCIM_PSTAT_D2 = common dso_local global i32 0, align 4
@PCIM_PSTAT_D3 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Transition from D%d to D%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_set_powerstate_method(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_devinfo*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.pci_devinfo* @device_get_ivars(i32 %14)
  store %struct.pci_devinfo* %15, %struct.pci_devinfo** %8, align 8
  %16 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %17 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %16, i32 0, i32 0
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %9, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %24, i32* %4, align 4
  br label %126

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @pci_get_powerstate(i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %126

32:                                               ; preds = %25
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* %11, align 4
  br label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp eq i32 %42, 128
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 10000, i32* %13, align 4
  br label %51

45:                                               ; preds = %40
  %46 = load i32, i32* %12, align 4
  %47 = icmp eq i32 %46, 129
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 200, i32* %13, align 4
  br label %50

49:                                               ; preds = %45
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %49, %48
  br label %51

51:                                               ; preds = %50, %44
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @PCI_READ_CONFIG(i32 %52, i32 %53, i32 %57, i32 2)
  %59 = load i32, i32* @PCIM_PSTAT_DMASK, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %7, align 4
  switch i32 %62, label %101 [
    i32 131, label %63
    i32 130, label %67
    i32 129, label %82
    i32 128, label %97
  ]

63:                                               ; preds = %51
  %64 = load i32, i32* @PCIM_PSTAT_D0, align 4
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %10, align 4
  br label %103

67:                                               ; preds = %51
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @PCIM_PCAP_D1SUPP, align 4
  %73 = sext i32 %72 to i64
  %74 = and i64 %71, %73
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %77, i32* %4, align 4
  br label %126

78:                                               ; preds = %67
  %79 = load i32, i32* @PCIM_PSTAT_D1, align 4
  %80 = load i32, i32* %10, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %10, align 4
  br label %103

82:                                               ; preds = %51
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @PCIM_PCAP_D2SUPP, align 4
  %88 = sext i32 %87 to i64
  %89 = and i64 %86, %88
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %92, i32* %4, align 4
  br label %126

93:                                               ; preds = %82
  %94 = load i32, i32* @PCIM_PSTAT_D2, align 4
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %10, align 4
  br label %103

97:                                               ; preds = %51
  %98 = load i32, i32* @PCIM_PSTAT_D3, align 4
  %99 = load i32, i32* %10, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %10, align 4
  br label %103

101:                                              ; preds = %51
  %102 = load i32, i32* @EINVAL, align 4
  store i32 %102, i32* %4, align 4
  br label %126

103:                                              ; preds = %97, %93, %78, %63
  %104 = load i64, i64* @bootverbose, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @pci_printf(%struct.TYPE_5__* %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %106, %103
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @PCI_WRITE_CONFIG(i32 %112, i32 %113, i32 %117, i32 %118, i32 2)
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %111
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @DELAY(i32 %123)
  br label %125

125:                                              ; preds = %122, %111
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %125, %101, %91, %76, %31, %23
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @pci_get_powerstate(i32) #1

declare dso_local i32 @PCI_READ_CONFIG(i32, i32, i32, i32) #1

declare dso_local i32 @pci_printf(%struct.TYPE_5__*, i8*, i32, i32) #1

declare dso_local i32 @PCI_WRITE_CONFIG(i32, i32, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
