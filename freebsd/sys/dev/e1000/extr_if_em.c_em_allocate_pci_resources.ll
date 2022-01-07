; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_allocate_pci_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_allocate_pci_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_6__, %struct.TYPE_5__, i32*, i32* }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, i64, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i64 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unable to allocate bus resource: memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@em_mac_min = common dso_local global i64 0, align 8
@e1000_82543 = common dso_local global i64 0, align 8
@PCIR_CIS = common dso_local global i32 0, align 4
@EM_BAR_TYPE_IO = common dso_local global i64 0, align 8
@EM_BAR_MEM_TYPE_64BIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Unable to locate IO BAR\0A\00", align 1
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Unable to allocate bus resource: ioport\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @em_allocate_pci_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_allocate_pci_resources(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.adapter* @iflib_get_softc(i32 %8)
  store %struct.adapter* %9, %struct.adapter** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @iflib_get_dev(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = call i32 @PCIR_BAR(i32 0)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @SYS_RES_MEMORY, align 4
  %15 = load i32, i32* @RF_ACTIVE, align 4
  %16 = call i8* @bus_alloc_resource_any(i32 %13, i32 %14, i32* %6, i32 %15)
  %17 = bitcast i8* %16 to i32*
  %18 = load %struct.adapter*, %struct.adapter** %4, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 3
  store i32* %17, i32** %19, align 8
  %20 = load %struct.adapter*, %struct.adapter** %4, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %139

28:                                               ; preds = %1
  %29 = load %struct.adapter*, %struct.adapter** %4, align 8
  %30 = getelementptr inbounds %struct.adapter, %struct.adapter* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = call i8* @rman_get_bustag(i32* %31)
  %33 = load %struct.adapter*, %struct.adapter** %4, align 8
  %34 = getelementptr inbounds %struct.adapter, %struct.adapter* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  store i8* %32, i8** %35, align 8
  %36 = load %struct.adapter*, %struct.adapter** %4, align 8
  %37 = getelementptr inbounds %struct.adapter, %struct.adapter* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = call i8* @rman_get_bushandle(i32* %38)
  %40 = load %struct.adapter*, %struct.adapter** %4, align 8
  %41 = getelementptr inbounds %struct.adapter, %struct.adapter* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  store i8* %39, i8** %42, align 8
  %43 = load %struct.adapter*, %struct.adapter** %4, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = bitcast i8** %45 to i32*
  %47 = load %struct.adapter*, %struct.adapter** %4, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  store i32* %46, i32** %49, align 8
  %50 = load %struct.adapter*, %struct.adapter** %4, align 8
  %51 = getelementptr inbounds %struct.adapter, %struct.adapter* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @em_mac_min, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %133

57:                                               ; preds = %28
  %58 = load %struct.adapter*, %struct.adapter** %4, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @e1000_82543, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %133

65:                                               ; preds = %57
  %66 = call i32 @PCIR_BAR(i32 0)
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %90, %65
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @PCIR_CIS, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %67
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @pci_read_config(i32 %72, i32 %73, i32 4)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i64 @EM_BAR_TYPE(i32 %75)
  %77 = load i64, i64* @EM_BAR_TYPE_IO, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %91

80:                                               ; preds = %71
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 4
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i64 @EM_BAR_MEM_TYPE(i32 %83)
  %85 = load i64, i64* @EM_BAR_MEM_TYPE_64BIT, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 4
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %87, %80
  br label %67

91:                                               ; preds = %79, %67
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @PCIR_CIS, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @device_printf(i32 %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* @ENXIO, align 4
  store i32 %98, i32* %2, align 4
  br label %139

99:                                               ; preds = %91
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @SYS_RES_IOPORT, align 4
  %102 = load i32, i32* @RF_ACTIVE, align 4
  %103 = call i8* @bus_alloc_resource_any(i32 %100, i32 %101, i32* %6, i32 %102)
  %104 = bitcast i8* %103 to i32*
  %105 = load %struct.adapter*, %struct.adapter** %4, align 8
  %106 = getelementptr inbounds %struct.adapter, %struct.adapter* %105, i32 0, i32 2
  store i32* %104, i32** %106, align 8
  %107 = load %struct.adapter*, %struct.adapter** %4, align 8
  %108 = getelementptr inbounds %struct.adapter, %struct.adapter* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %99
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @device_printf(i32 %112, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %114 = load i32, i32* @ENXIO, align 4
  store i32 %114, i32* %2, align 4
  br label %139

115:                                              ; preds = %99
  %116 = load %struct.adapter*, %struct.adapter** %4, align 8
  %117 = getelementptr inbounds %struct.adapter, %struct.adapter* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  store i64 0, i64* %118, align 8
  %119 = load %struct.adapter*, %struct.adapter** %4, align 8
  %120 = getelementptr inbounds %struct.adapter, %struct.adapter* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = call i8* @rman_get_bustag(i32* %121)
  %123 = load %struct.adapter*, %struct.adapter** %4, align 8
  %124 = getelementptr inbounds %struct.adapter, %struct.adapter* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  store i8* %122, i8** %125, align 8
  %126 = load %struct.adapter*, %struct.adapter** %4, align 8
  %127 = getelementptr inbounds %struct.adapter, %struct.adapter* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = call i8* @rman_get_bushandle(i32* %128)
  %130 = load %struct.adapter*, %struct.adapter** %4, align 8
  %131 = getelementptr inbounds %struct.adapter, %struct.adapter* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  store i8* %129, i8** %132, align 8
  br label %133

133:                                              ; preds = %115, %57, %28
  %134 = load %struct.adapter*, %struct.adapter** %4, align 8
  %135 = getelementptr inbounds %struct.adapter, %struct.adapter* %134, i32 0, i32 0
  %136 = load %struct.adapter*, %struct.adapter** %4, align 8
  %137 = getelementptr inbounds %struct.adapter, %struct.adapter* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  store %struct.TYPE_6__* %135, %struct.TYPE_6__** %138, align 8
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %133, %111, %95, %24
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i8* @rman_get_bustag(i32*) #1

declare dso_local i8* @rman_get_bushandle(i32*) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i64 @EM_BAR_TYPE(i32) #1

declare dso_local i64 @EM_BAR_MEM_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
