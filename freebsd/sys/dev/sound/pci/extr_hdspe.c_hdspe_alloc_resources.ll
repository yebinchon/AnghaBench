; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe.c_hdspe_alloc_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe.c_hdspe_alloc_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i8*, i32, i32, i64 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unable to map SYS_RES_MEMORY.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_AV = common dso_local global i32 0, align 4
@hdspe_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to alloc interrupt resource.\0A\00", align 1
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@HDSPE_DMASEGSIZE = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Unable to create dma tag.\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Can't alloc pbuf.\0A\00", align 1
@hdspe_dmapsetmap = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Can't load pbuf.\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Can't alloc rbuf.\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Can't load rbuf.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*)* @hdspe_alloc_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdspe_alloc_resources(%struct.sc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc_info*, align 8
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  %4 = call i64 @PCIR_BAR(i32 0)
  %5 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %6 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %5, i32 0, i32 13
  store i64 %4, i64* %6, align 8
  %7 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %8 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SYS_RES_MEMORY, align 4
  %11 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %12 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %11, i32 0, i32 13
  %13 = load i32, i32* @RF_ACTIVE, align 4
  %14 = call i8* @bus_alloc_resource_any(i32 %9, i32 %10, i64* %12, i32 %13)
  %15 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %16 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %15, i32 0, i32 10
  store i8* %14, i8** %16, align 8
  %17 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %18 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %17, i32 0, i32 10
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %23 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %201

27:                                               ; preds = %1
  %28 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %29 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %28, i32 0, i32 10
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @rman_get_bustag(i8* %30)
  %32 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %33 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %32, i32 0, i32 12
  store i32 %31, i32* %33, align 4
  %34 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %35 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %34, i32 0, i32 10
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @rman_get_bushandle(i8* %36)
  %38 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %39 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %38, i32 0, i32 11
  store i32 %37, i32* %39, align 8
  %40 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %41 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %40, i32 0, i32 9
  store i64 0, i64* %41, align 8
  %42 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %43 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SYS_RES_IRQ, align 4
  %46 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %47 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %46, i32 0, i32 9
  %48 = load i32, i32* @RF_ACTIVE, align 4
  %49 = load i32, i32* @RF_SHAREABLE, align 4
  %50 = or i32 %48, %49
  %51 = call i8* @bus_alloc_resource_any(i32 %44, i32 %45, i64* %47, i32 %50)
  %52 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %53 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %52, i32 0, i32 8
  store i8* %51, i8** %53, align 8
  %54 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %55 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %54, i32 0, i32 8
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %74

58:                                               ; preds = %27
  %59 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %60 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %63 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %62, i32 0, i32 8
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* @INTR_MPSAFE, align 4
  %66 = load i32, i32* @INTR_TYPE_AV, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @hdspe_intr, align 4
  %69 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %70 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %71 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %70, i32 0, i32 7
  %72 = call i64 @bus_setup_intr(i32 %61, i8* %64, i32 %67, i32* null, i32 %68, %struct.sc_info* %69, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %58, %27
  %75 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %76 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @device_printf(i32 %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @ENXIO, align 4
  store i32 %79, i32* %2, align 4
  br label %201

80:                                               ; preds = %58
  %81 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %82 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @bus_get_dma_tag(i32 %83)
  %85 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %86 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %87 = load i32, i32* @HDSPE_DMASEGSIZE, align 4
  %88 = mul nsw i32 2, %87
  %89 = load i32, i32* @HDSPE_DMASEGSIZE, align 4
  %90 = load i32, i32* @busdma_lock_mutex, align 4
  %91 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %92 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %91, i32 0, i32 5
  %93 = call i64 @bus_dma_tag_create(i32 %84, i32 4, i32 0, i32 %85, i32 %86, i32* null, i32* null, i32 %88, i32 2, i32 %89, i32 0, i32 %90, i32* @Giant, i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %80
  %96 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %97 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @device_printf(i32 %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* @ENXIO, align 4
  store i32 %100, i32* %2, align 4
  br label %201

101:                                              ; preds = %80
  %102 = load i32, i32* @HDSPE_DMASEGSIZE, align 4
  %103 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %104 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %106 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %109 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %108, i32 0, i32 2
  %110 = bitcast i32* %109 to i8**
  %111 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %112 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %113 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %112, i32 0, i32 6
  %114 = call i64 @bus_dmamem_alloc(i32 %107, i8** %110, i32 %111, i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %101
  %117 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %118 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @device_printf(i32 %119, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %121 = load i32, i32* @ENXIO, align 4
  store i32 %121, i32* %2, align 4
  br label %201

122:                                              ; preds = %101
  %123 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %124 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %127 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %130 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %133 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @hdspe_dmapsetmap, align 4
  %136 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %137 = call i64 @bus_dmamap_load(i32 %125, i32 %128, i32 %131, i32 %134, i32 %135, %struct.sc_info* %136, i32 0)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %122
  %140 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %141 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @device_printf(i32 %142, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %144 = load i32, i32* @ENXIO, align 4
  store i32 %144, i32* %2, align 4
  br label %201

145:                                              ; preds = %122
  %146 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %147 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %150 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %149, i32 0, i32 1
  %151 = bitcast i32* %150 to i8**
  %152 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %153 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %154 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %153, i32 0, i32 4
  %155 = call i64 @bus_dmamem_alloc(i32 %148, i8** %151, i32 %152, i32* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %145
  %158 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %159 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @device_printf(i32 %160, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %162 = load i32, i32* @ENXIO, align 4
  store i32 %162, i32* %2, align 4
  br label %201

163:                                              ; preds = %145
  %164 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %165 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %168 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %171 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %174 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @hdspe_dmapsetmap, align 4
  %177 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %178 = call i64 @bus_dmamap_load(i32 %166, i32 %169, i32 %172, i32 %175, i32 %176, %struct.sc_info* %177, i32 0)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %163
  %181 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %182 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @device_printf(i32 %183, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %185 = load i32, i32* @ENXIO, align 4
  store i32 %185, i32* %2, align 4
  br label %201

186:                                              ; preds = %163
  %187 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %188 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %191 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @bzero(i32 %189, i32 %192)
  %194 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %195 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %198 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @bzero(i32 %196, i32 %199)
  store i32 0, i32* %2, align 4
  br label %201

201:                                              ; preds = %186, %180, %157, %139, %116, %95, %74, %21
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local i64 @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i8*) #1

declare dso_local i32 @rman_get_bushandle(i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i8*, i32, i32*, i32, %struct.sc_info*, i32*) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.sc_info*, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
