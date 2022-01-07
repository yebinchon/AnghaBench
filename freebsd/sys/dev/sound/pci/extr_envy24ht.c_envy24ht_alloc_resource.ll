; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, i32, i8*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i64, i64 }

@PCIR_CCS = common dso_local global i64 0, align 8
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENVY24HT_PCIR_MT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"unable to map IO port space\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@envy24ht_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unable to map interrupt\0A\00", align 1
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_ENVY24 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"unable to create dma tag\0A\00", align 1
@PCIR_MT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*)* @envy24ht_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envy24ht_alloc_resource(%struct.sc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc_info*, align 8
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  %4 = load i64, i64* @PCIR_CCS, align 8
  %5 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %6 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %5, i32 0, i32 12
  store i64 %4, i64* %6, align 8
  %7 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %8 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SYS_RES_IOPORT, align 4
  %11 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %12 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %11, i32 0, i32 12
  %13 = load i32, i32* @RF_ACTIVE, align 4
  %14 = call i8* @bus_alloc_resource_any(i32 %9, i32 %10, i64* %12, i32 %13)
  %15 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %16 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %15, i32 0, i32 8
  store i8* %14, i8** %16, align 8
  %17 = load i64, i64* @ENVY24HT_PCIR_MT, align 8
  %18 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %19 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %18, i32 0, i32 11
  store i64 %17, i64* %19, align 8
  %20 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %21 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SYS_RES_IOPORT, align 4
  %24 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %25 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %24, i32 0, i32 11
  %26 = load i32, i32* @RF_ACTIVE, align 4
  %27 = call i8* @bus_alloc_resource_any(i32 %22, i32 %23, i64* %25, i32 %26)
  %28 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %29 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %28, i32 0, i32 5
  store i8* %27, i8** %29, align 8
  %30 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %31 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %30, i32 0, i32 8
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %1
  %35 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %36 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %35, i32 0, i32 5
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %34, %1
  %40 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %41 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i32, i8*, ...) @device_printf(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %2, align 4
  br label %127

45:                                               ; preds = %34
  %46 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %47 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %46, i32 0, i32 8
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @rman_get_bustag(i8* %48)
  %50 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %51 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %50, i32 0, i32 10
  store i8* %49, i8** %51, align 8
  %52 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %53 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %52, i32 0, i32 8
  %54 = load i8*, i8** %53, align 8
  %55 = call i8* @rman_get_bushandle(i8* %54)
  %56 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %57 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %56, i32 0, i32 9
  store i8* %55, i8** %57, align 8
  %58 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %59 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %58, i32 0, i32 5
  %60 = load i8*, i8** %59, align 8
  %61 = call i8* @rman_get_bustag(i8* %60)
  %62 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %63 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %62, i32 0, i32 7
  store i8* %61, i8** %63, align 8
  %64 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %65 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %64, i32 0, i32 5
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @rman_get_bushandle(i8* %66)
  %68 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %69 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %68, i32 0, i32 6
  store i8* %67, i8** %69, align 8
  %70 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %71 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %70, i32 0, i32 4
  store i64 0, i64* %71, align 8
  %72 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %73 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @SYS_RES_IRQ, align 4
  %76 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %77 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %76, i32 0, i32 4
  %78 = load i32, i32* @RF_ACTIVE, align 4
  %79 = load i32, i32* @RF_SHAREABLE, align 4
  %80 = or i32 %78, %79
  %81 = call i8* @bus_alloc_resource_any(i32 %74, i32 %75, i64* %77, i32 %80)
  %82 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %83 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %85 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %84, i32 0, i32 3
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %102

88:                                               ; preds = %45
  %89 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %90 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %93 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %92, i32 0, i32 3
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* @INTR_MPSAFE, align 4
  %96 = load i32, i32* @envy24ht_intr, align 4
  %97 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %98 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %99 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %98, i32 0, i32 2
  %100 = call i64 @snd_setup_intr(i32 %91, i8* %94, i32 %95, i32 %96, %struct.sc_info* %97, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %88, %45
  %103 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %104 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i32, i8*, ...) @device_printf(i32 %105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i32, i32* @ENXIO, align 4
  store i32 %107, i32* %2, align 4
  br label %127

108:                                              ; preds = %88
  %109 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %110 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @bus_get_dma_tag(i32 %111)
  %113 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %114 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %115 = load i32, i32* @BUS_SPACE_MAXSIZE_ENVY24, align 4
  %116 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %117 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %116, i32 0, i32 1
  %118 = call i64 @bus_dma_tag_create(i32 %112, i32 4, i32 0, i32 %113, i32 %114, i32* null, i32* null, i32 %115, i32 1, i32 262143, i32 0, i32* null, i32* null, i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %108
  %121 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %122 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (i32, i8*, ...) @device_printf(i32 %123, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %125 = load i32, i32* @ENXIO, align 4
  store i32 %125, i32* %2, align 4
  br label %127

126:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %126, %120, %102, %39
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i8* @rman_get_bustag(i8*) #1

declare dso_local i8* @rman_get_bushandle(i8*) #1

declare dso_local i64 @snd_setup_intr(i32, i8*, i32, i32, %struct.sc_info*, i32*) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
