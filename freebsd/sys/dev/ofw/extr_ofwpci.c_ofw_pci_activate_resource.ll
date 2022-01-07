; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofwpci.c_ofw_pci_activate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofwpci.c_ofw_pci_activate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.ofw_pci_softc = type { i32, %struct.ofw_pci_range* }
%struct.ofw_pci_range = type { i32, i64, i64, i64 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@OFW_PCI_PHYS_HI_SPACEMASK = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"ofw_pci mapdev: start %jx, len %jd\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @ofw_pci_activate_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofw_pci_activate_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.ofw_pci_softc*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.ofw_pci_range*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.ofw_pci_softc* @device_get_softc(i32 %19)
  store %struct.ofw_pci_softc* %20, %struct.ofw_pci_softc** %12, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @SYS_RES_IOPORT, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %5
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @SYS_RES_MEMORY, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.resource*, %struct.resource** %11, align 8
  %34 = call i32 @bus_generic_activate_resource(i32 %29, i32 %30, i32 %31, i32 %32, %struct.resource* %33)
  store i32 %34, i32* %6, align 4
  br label %145

35:                                               ; preds = %24, %5
  %36 = load %struct.resource*, %struct.resource** %11, align 8
  %37 = call i64 @rman_get_start(%struct.resource* %36)
  store i64 %37, i64* %16, align 8
  %38 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %12, align 8
  %39 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %38, i32 0, i32 1
  %40 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %39, align 8
  store %struct.ofw_pci_range* %40, %struct.ofw_pci_range** %15, align 8
  br label %41

41:                                               ; preds = %102, %35
  %42 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %15, align 8
  %43 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %12, align 8
  %44 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %43, i32 0, i32 1
  %45 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %44, align 8
  %46 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %12, align 8
  %47 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %45, i64 %49
  %51 = icmp ult %struct.ofw_pci_range* %42, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %41
  %53 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %15, align 8
  %54 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %52, %41
  %58 = phi i1 [ false, %41 ], [ %56, %52 ]
  br i1 %58, label %59, label %105

59:                                               ; preds = %57
  %60 = load i64, i64* %16, align 8
  %61 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %15, align 8
  %62 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %75, label %65

65:                                               ; preds = %59
  %66 = load i64, i64* %16, align 8
  %67 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %15, align 8
  %68 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %15, align 8
  %71 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = icmp sge i64 %66, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %65, %59
  br label %102

76:                                               ; preds = %65
  %77 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %15, align 8
  %78 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @OFW_PCI_PHYS_HI_SPACEMASK, align 4
  %81 = and i32 %79, %80
  switch i32 %81, label %86 [
    i32 130, label %82
    i32 129, label %84
    i32 128, label %84
  ]

82:                                               ; preds = %76
  %83 = load i32, i32* @SYS_RES_IOPORT, align 4
  store i32 %83, i32* %17, align 4
  br label %87

84:                                               ; preds = %76, %76
  %85 = load i32, i32* @SYS_RES_MEMORY, align 4
  store i32 %85, i32* %17, align 4
  br label %87

86:                                               ; preds = %76
  store i32 -1, i32* %17, align 4
  br label %87

87:                                               ; preds = %86, %84, %82
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %17, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %15, align 8
  %93 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %15, align 8
  %96 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %94, %97
  %99 = load i64, i64* %16, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* %16, align 8
  br label %105

101:                                              ; preds = %87
  br label %102

102:                                              ; preds = %101, %75
  %103 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %15, align 8
  %104 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %103, i32 1
  store %struct.ofw_pci_range* %104, %struct.ofw_pci_range** %15, align 8
  br label %41

105:                                              ; preds = %91, %57
  %106 = load i64, i64* @bootverbose, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load i64, i64* %16, align 8
  %110 = trunc i64 %109 to i32
  %111 = load %struct.resource*, %struct.resource** %11, align 8
  %112 = call i32 @rman_get_size(%struct.resource* %111)
  %113 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %112)
  br label %114

114:                                              ; preds = %108, %105
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32* @BUS_GET_BUS_TAG(i32 %115, i32 %116)
  store i32* %117, i32** %14, align 8
  %118 = load i32*, i32** %14, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i32, i32* @ENOMEM, align 4
  store i32 %121, i32* %6, align 4
  br label %145

122:                                              ; preds = %114
  %123 = load %struct.resource*, %struct.resource** %11, align 8
  %124 = load i32*, i32** %14, align 8
  %125 = call i32 @rman_set_bustag(%struct.resource* %123, i32* %124)
  %126 = load i32*, i32** %14, align 8
  %127 = load i64, i64* %16, align 8
  %128 = load %struct.resource*, %struct.resource** %11, align 8
  %129 = call i32 @rman_get_size(%struct.resource* %128)
  %130 = call i32 @bus_space_map(i32* %126, i64 %127, i32 %129, i32 0, i64* %13)
  store i32 %130, i32* %18, align 4
  %131 = load i32, i32* %18, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %122
  %134 = load i32, i32* @ENOMEM, align 4
  store i32 %134, i32* %6, align 4
  br label %145

135:                                              ; preds = %122
  %136 = load %struct.resource*, %struct.resource** %11, align 8
  %137 = load i64, i64* %13, align 8
  %138 = call i32 @rman_set_bushandle(%struct.resource* %136, i64 %137)
  %139 = load %struct.resource*, %struct.resource** %11, align 8
  %140 = load i64, i64* %13, align 8
  %141 = inttoptr i64 %140 to i8*
  %142 = call i32 @rman_set_virtual(%struct.resource* %139, i8* %141)
  %143 = load %struct.resource*, %struct.resource** %11, align 8
  %144 = call i32 @rman_activate_resource(%struct.resource* %143)
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %135, %133, %120, %28
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local %struct.ofw_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_generic_activate_resource(i32, i32, i32, i32, %struct.resource*) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @rman_get_size(%struct.resource*) #1

declare dso_local i32* @BUS_GET_BUS_TAG(i32, i32) #1

declare dso_local i32 @rman_set_bustag(%struct.resource*, i32*) #1

declare dso_local i32 @bus_space_map(i32*, i64, i32, i32, i64*) #1

declare dso_local i32 @rman_set_bushandle(%struct.resource*, i64) #1

declare dso_local i32 @rman_set_virtual(%struct.resource*, i8*) #1

declare dso_local i32 @rman_activate_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
