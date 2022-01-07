; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@PCIR_CCS = common dso_local global i8* null, align 8
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@PCIR_DDMA = common dso_local global i8* null, align 8
@PCIR_DS = common dso_local global i8* null, align 8
@PCIR_MT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"unable to map IO port space\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@envy24_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unable to map interrupt\0A\00", align 1
@BUS_SPACE_MAXADDR_ENVY24 = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_ENVY24 = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"unable to create dma tag\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*)* @envy24_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envy24_alloc_resource(%struct.sc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc_info*, align 8
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  %4 = load i8*, i8** @PCIR_CCS, align 8
  %5 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %6 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %5, i32 0, i32 20
  store i8* %4, i8** %6, align 8
  %7 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %8 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SYS_RES_IOPORT, align 4
  %11 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %12 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %11, i32 0, i32 20
  %13 = load i32, i32* @RF_ACTIVE, align 4
  %14 = call i8* @bus_alloc_resource_any(i32 %9, i32 %10, i8** %12, i32 %13)
  %15 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %16 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %15, i32 0, i32 14
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** @PCIR_DDMA, align 8
  %18 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %19 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %18, i32 0, i32 19
  store i8* %17, i8** %19, align 8
  %20 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %21 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SYS_RES_IOPORT, align 4
  %24 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %25 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %24, i32 0, i32 19
  %26 = load i32, i32* @RF_ACTIVE, align 4
  %27 = call i8* @bus_alloc_resource_any(i32 %22, i32 %23, i8** %25, i32 %26)
  %28 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %29 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %28, i32 0, i32 11
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** @PCIR_DS, align 8
  %31 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %32 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %31, i32 0, i32 18
  store i8* %30, i8** %32, align 8
  %33 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %34 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SYS_RES_IOPORT, align 4
  %37 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %38 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %37, i32 0, i32 18
  %39 = load i32, i32* @RF_ACTIVE, align 4
  %40 = call i8* @bus_alloc_resource_any(i32 %35, i32 %36, i8** %38, i32 %39)
  %41 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %42 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %41, i32 0, i32 8
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @PCIR_MT, align 8
  %44 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %45 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %44, i32 0, i32 17
  store i8* %43, i8** %45, align 8
  %46 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %47 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SYS_RES_IOPORT, align 4
  %50 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %51 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %50, i32 0, i32 17
  %52 = load i32, i32* @RF_ACTIVE, align 4
  %53 = call i8* @bus_alloc_resource_any(i32 %48, i32 %49, i8** %51, i32 %52)
  %54 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %55 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %57 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %56, i32 0, i32 14
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %75

60:                                               ; preds = %1
  %61 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %62 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %61, i32 0, i32 11
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %67 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %66, i32 0, i32 8
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %72 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %71, i32 0, i32 5
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %70, %65, %60, %1
  %76 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %77 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i32, i8*, ...) @device_printf(i32 %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* @ENXIO, align 4
  store i32 %80, i32* %2, align 4
  br label %188

81:                                               ; preds = %70
  %82 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %83 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %82, i32 0, i32 14
  %84 = load i8*, i8** %83, align 8
  %85 = call i8* @rman_get_bustag(i8* %84)
  %86 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %87 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %86, i32 0, i32 16
  store i8* %85, i8** %87, align 8
  %88 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %89 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %88, i32 0, i32 14
  %90 = load i8*, i8** %89, align 8
  %91 = call i8* @rman_get_bushandle(i8* %90)
  %92 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %93 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %92, i32 0, i32 15
  store i8* %91, i8** %93, align 8
  %94 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %95 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %94, i32 0, i32 11
  %96 = load i8*, i8** %95, align 8
  %97 = call i8* @rman_get_bustag(i8* %96)
  %98 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %99 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %98, i32 0, i32 13
  store i8* %97, i8** %99, align 8
  %100 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %101 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %100, i32 0, i32 11
  %102 = load i8*, i8** %101, align 8
  %103 = call i8* @rman_get_bushandle(i8* %102)
  %104 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %105 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %104, i32 0, i32 12
  store i8* %103, i8** %105, align 8
  %106 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %107 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %106, i32 0, i32 8
  %108 = load i8*, i8** %107, align 8
  %109 = call i8* @rman_get_bustag(i8* %108)
  %110 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %111 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %110, i32 0, i32 10
  store i8* %109, i8** %111, align 8
  %112 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %113 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %112, i32 0, i32 8
  %114 = load i8*, i8** %113, align 8
  %115 = call i8* @rman_get_bushandle(i8* %114)
  %116 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %117 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %116, i32 0, i32 9
  store i8* %115, i8** %117, align 8
  %118 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %119 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %118, i32 0, i32 5
  %120 = load i8*, i8** %119, align 8
  %121 = call i8* @rman_get_bustag(i8* %120)
  %122 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %123 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %122, i32 0, i32 7
  store i8* %121, i8** %123, align 8
  %124 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %125 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %124, i32 0, i32 5
  %126 = load i8*, i8** %125, align 8
  %127 = call i8* @rman_get_bushandle(i8* %126)
  %128 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %129 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %128, i32 0, i32 6
  store i8* %127, i8** %129, align 8
  %130 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %131 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %130, i32 0, i32 4
  store i8* null, i8** %131, align 8
  %132 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %133 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @SYS_RES_IRQ, align 4
  %136 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %137 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %136, i32 0, i32 4
  %138 = load i32, i32* @RF_ACTIVE, align 4
  %139 = load i32, i32* @RF_SHAREABLE, align 4
  %140 = or i32 %138, %139
  %141 = call i8* @bus_alloc_resource_any(i32 %134, i32 %135, i8** %137, i32 %140)
  %142 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %143 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %142, i32 0, i32 3
  store i8* %141, i8** %143, align 8
  %144 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %145 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %144, i32 0, i32 3
  %146 = load i8*, i8** %145, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %162

148:                                              ; preds = %81
  %149 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %150 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %153 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %152, i32 0, i32 3
  %154 = load i8*, i8** %153, align 8
  %155 = load i32, i32* @INTR_MPSAFE, align 4
  %156 = load i32, i32* @envy24_intr, align 4
  %157 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %158 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %159 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %158, i32 0, i32 2
  %160 = call i64 @snd_setup_intr(i32 %151, i8* %154, i32 %155, i32 %156, %struct.sc_info* %157, i32* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %148, %81
  %163 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %164 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 (i32, i8*, ...) @device_printf(i32 %165, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %167 = load i32, i32* @ENXIO, align 4
  store i32 %167, i32* %2, align 4
  br label %188

168:                                              ; preds = %148
  %169 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %170 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @bus_get_dma_tag(i32 %171)
  %173 = load i32, i32* @BUS_SPACE_MAXADDR_ENVY24, align 4
  %174 = load i32, i32* @BUS_SPACE_MAXADDR_ENVY24, align 4
  %175 = load i32, i32* @BUS_SPACE_MAXSIZE_ENVY24, align 4
  %176 = load i32, i32* @busdma_lock_mutex, align 4
  %177 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %178 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %177, i32 0, i32 1
  %179 = call i64 @bus_dma_tag_create(i32 %172, i32 4, i32 0, i32 %173, i32 %174, i32* null, i32* null, i32 %175, i32 1, i32 262143, i32 0, i32 %176, i32* @Giant, i32* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %168
  %182 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %183 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 (i32, i8*, ...) @device_printf(i32 %184, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %186 = load i32, i32* @ENXIO, align 4
  store i32 %186, i32* %2, align 4
  br label %188

187:                                              ; preds = %168
  store i32 0, i32* %2, align 4
  br label %188

188:                                              ; preds = %187, %181, %162, %75
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i8**, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i8* @rman_get_bustag(i8*) #1

declare dso_local i8* @rman_get_bushandle(i8*) #1

declare dso_local i64 @snd_setup_intr(i32, i8*, i32, i32, %struct.sc_info*, i32*) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
