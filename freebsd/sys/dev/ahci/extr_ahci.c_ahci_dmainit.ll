; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_dmainit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_dmainit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_channel = type { i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ahci_dc_cb_args = type { i32, i32 }

@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@AHCI_WORK_SIZE = common dso_local global i64 0, align 8
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@ahci_dmasetupc_cb = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@AHCI_P_CMD_FBSCP = common dso_local global i32 0, align 4
@AHCI_SG_ENTRIES = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@AHCI_PRD_MAX = common dso_local global i64 0, align 8
@busdma_lock_mutex = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"WARNING - DMA initialization failed, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ahci_dmainit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_dmainit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahci_channel*, align 8
  %4 = alloca %struct.ahci_dc_cb_args, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.ahci_channel* @device_get_softc(i32 %7)
  store %struct.ahci_channel* %8, %struct.ahci_channel** %3, align 8
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @bus_get_dma_tag(i32 %9)
  %11 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %12 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %13 = load i64, i64* @AHCI_WORK_SIZE, align 8
  %14 = load i64, i64* @AHCI_WORK_SIZE, align 8
  %15 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %16 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 8
  %18 = call i32 @bus_dma_tag_create(i32 %10, i32 1024, i32 0, i32 %11, i32 %12, i32* null, i32* null, i64 %13, i64 1, i64 %14, i32 0, i32* null, i32* null, i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %189

22:                                               ; preds = %1
  %23 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %24 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %28 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 7
  %30 = bitcast i32* %29 to i8**
  %31 = load i32, i32* @BUS_DMA_ZERO, align 4
  %32 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %33 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 6
  %35 = call i32 @bus_dmamem_alloc(i32 %26, i8** %30, i32 %31, i32* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %22
  br label %189

39:                                               ; preds = %22
  %40 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %41 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %45 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %49 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* @AHCI_WORK_SIZE, align 8
  %53 = load i32, i32* @ahci_dmasetupc_cb, align 4
  %54 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %55 = call i32 @bus_dmamap_load(i32 %43, i32 %47, i32 %51, i64 %52, i32 %53, %struct.ahci_dc_cb_args* %4, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %39
  %59 = getelementptr inbounds %struct.ahci_dc_cb_args, %struct.ahci_dc_cb_args* %4, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %58, %39
  %63 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %64 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %68 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %72 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @bus_dmamem_free(i32 %66, i32 %70, i32 %74)
  br label %189

76:                                               ; preds = %58
  %77 = getelementptr inbounds %struct.ahci_dc_cb_args, %struct.ahci_dc_cb_args* %4, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %80 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 5
  store i32 %78, i32* %81, align 4
  %82 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %83 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @AHCI_P_CMD_FBSCP, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %76
  store i64 4096, i64* %5, align 8
  br label %90

89:                                               ; preds = %76
  store i64 256, i64* %5, align 8
  br label %90

90:                                               ; preds = %89, %88
  %91 = load i32, i32* %2, align 4
  %92 = call i32 @bus_get_dma_tag(i32 %91)
  %93 = load i64, i64* %5, align 8
  %94 = trunc i64 %93 to i32
  %95 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %96 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %97 = load i64, i64* %5, align 8
  %98 = load i64, i64* %5, align 8
  %99 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %100 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 4
  %102 = call i32 @bus_dma_tag_create(i32 %92, i32 %94, i32 0, i32 %95, i32 %96, i32* null, i32* null, i64 %97, i64 1, i64 %98, i32 0, i32* null, i32* null, i32* %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %90
  br label %189

106:                                              ; preds = %90
  %107 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %108 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %112 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 3
  %114 = bitcast i32* %113 to i8**
  %115 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %116 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = call i32 @bus_dmamem_alloc(i32 %110, i8** %114, i32 0, i32* %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %106
  br label %189

122:                                              ; preds = %106
  %123 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %124 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %128 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %132 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load i64, i64* %5, align 8
  %136 = load i32, i32* @ahci_dmasetupc_cb, align 4
  %137 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %138 = call i32 @bus_dmamap_load(i32 %126, i32 %130, i32 %134, i64 %135, i32 %136, %struct.ahci_dc_cb_args* %4, i32 %137)
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %122
  %142 = getelementptr inbounds %struct.ahci_dc_cb_args, %struct.ahci_dc_cb_args* %4, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %159

145:                                              ; preds = %141, %122
  %146 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %147 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %151 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %155 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @bus_dmamem_free(i32 %149, i32 %153, i32 %157)
  br label %189

159:                                              ; preds = %141
  %160 = getelementptr inbounds %struct.ahci_dc_cb_args, %struct.ahci_dc_cb_args* %4, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %163 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  store i32 %161, i32* %164, align 4
  %165 = load i32, i32* %2, align 4
  %166 = call i32 @bus_get_dma_tag(i32 %165)
  %167 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %168 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %169 = load i64, i64* @AHCI_SG_ENTRIES, align 8
  %170 = load i64, i64* @PAGE_SIZE, align 8
  %171 = mul i64 %169, %170
  %172 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %173 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = mul i64 %171, %174
  %176 = load i64, i64* @AHCI_SG_ENTRIES, align 8
  %177 = load i64, i64* @AHCI_PRD_MAX, align 8
  %178 = load i32*, i32** @busdma_lock_mutex, align 8
  %179 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %180 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %179, i32 0, i32 3
  %181 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %182 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = call i32 @bus_dma_tag_create(i32 %166, i32 2, i32 0, i32 %167, i32 %168, i32* null, i32* null, i64 %175, i64 %176, i64 %177, i32 0, i32* %178, i32* %180, i32* %183)
  store i32 %184, i32* %6, align 4
  %185 = load i32, i32* %6, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %159
  br label %189

188:                                              ; preds = %159
  br label %195

189:                                              ; preds = %187, %145, %121, %105, %62, %38, %21
  %190 = load i32, i32* %2, align 4
  %191 = load i32, i32* %6, align 4
  %192 = call i32 @device_printf(i32 %190, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* %2, align 4
  %194 = call i32 @ahci_dmafini(i32 %193)
  br label %195

195:                                              ; preds = %189, %188
  ret void
}

declare dso_local %struct.ahci_channel* @device_get_softc(i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i64, i64, i64, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i64, i32, %struct.ahci_dc_cb_args*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @ahci_dmafini(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
