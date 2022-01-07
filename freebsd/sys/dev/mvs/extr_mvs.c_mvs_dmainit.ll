; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_dmainit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_dmainit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_channel = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mvs_dc_cb_args = type { i32, i64 }

@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@MVS_WORKRQ_SIZE = common dso_local global i32 0, align 4
@mvs_dmasetupc_cb = common dso_local global i32 0, align 4
@MVS_WORKRP_SIZE = common dso_local global i32 0, align 4
@MVS_EPRD_MAX = common dso_local global i32 0, align 4
@MVS_SG_ENTRIES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MVS_MAX_SLOTS = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"WARNING - DMA initialization failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mvs_dmainit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_dmainit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvs_channel*, align 8
  %4 = alloca %struct.mvs_dc_cb_args, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.mvs_channel* @device_get_softc(i32 %5)
  store %struct.mvs_channel* %6, %struct.mvs_channel** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @bus_get_dma_tag(i32 %7)
  %9 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %10 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %11 = load i32, i32* @MVS_WORKRQ_SIZE, align 4
  %12 = load i32, i32* @MVS_WORKRQ_SIZE, align 4
  %13 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %14 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 8
  %16 = call i64 @bus_dma_tag_create(i32 %8, i32 1024, i32 0, i32 %9, i32 %10, i32* null, i32* null, i32 %11, i32 1, i32 %12, i32 0, i32* null, i32* null, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %165

19:                                               ; preds = %1
  %20 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %21 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %25 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 7
  %27 = bitcast i32* %26 to i8**
  %28 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %29 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 6
  %31 = call i64 @bus_dmamem_alloc(i32 %23, i8** %27, i32 0, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  br label %165

34:                                               ; preds = %19
  %35 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %36 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %40 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %44 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MVS_WORKRQ_SIZE, align 4
  %48 = load i32, i32* @mvs_dmasetupc_cb, align 4
  %49 = call i64 @bus_dmamap_load(i32 %38, i32 %42, i32 %46, i32 %47, i32 %48, %struct.mvs_dc_cb_args* %4, i32 0)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %34
  %52 = getelementptr inbounds %struct.mvs_dc_cb_args, %struct.mvs_dc_cb_args* %4, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %51, %34
  %56 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %57 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %61 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %65 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @bus_dmamem_free(i32 %59, i32 %63, i32 %67)
  br label %165

69:                                               ; preds = %51
  %70 = getelementptr inbounds %struct.mvs_dc_cb_args, %struct.mvs_dc_cb_args* %4, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %73 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 5
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @bus_get_dma_tag(i32 %75)
  %77 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %78 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %79 = load i32, i32* @MVS_WORKRP_SIZE, align 4
  %80 = load i32, i32* @MVS_WORKRP_SIZE, align 4
  %81 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %82 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 4
  %84 = call i64 @bus_dma_tag_create(i32 %76, i32 256, i32 0, i32 %77, i32 %78, i32* null, i32* null, i32 %79, i32 1, i32 %80, i32 0, i32* null, i32* null, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %69
  br label %165

87:                                               ; preds = %69
  %88 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %89 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %93 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  %95 = bitcast i32* %94 to i8**
  %96 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %97 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = call i64 @bus_dmamem_alloc(i32 %91, i8** %95, i32 0, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %87
  br label %165

102:                                              ; preds = %87
  %103 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %104 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %108 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %112 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @MVS_WORKRP_SIZE, align 4
  %116 = load i32, i32* @mvs_dmasetupc_cb, align 4
  %117 = call i64 @bus_dmamap_load(i32 %106, i32 %110, i32 %114, i32 %115, i32 %116, %struct.mvs_dc_cb_args* %4, i32 0)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %102
  %120 = getelementptr inbounds %struct.mvs_dc_cb_args, %struct.mvs_dc_cb_args* %4, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %119, %102
  %124 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %125 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %129 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %133 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @bus_dmamem_free(i32 %127, i32 %131, i32 %135)
  br label %165

137:                                              ; preds = %119
  %138 = getelementptr inbounds %struct.mvs_dc_cb_args, %struct.mvs_dc_cb_args* %4, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %141 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  store i32 %139, i32* %142, align 4
  %143 = load i32, i32* %2, align 4
  %144 = call i32 @bus_get_dma_tag(i32 %143)
  %145 = load i32, i32* @MVS_EPRD_MAX, align 4
  %146 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %147 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %148 = load i32, i32* @MVS_SG_ENTRIES, align 4
  %149 = load i32, i32* @PAGE_SIZE, align 4
  %150 = mul nsw i32 %148, %149
  %151 = load i32, i32* @MVS_MAX_SLOTS, align 4
  %152 = mul nsw i32 %150, %151
  %153 = load i32, i32* @MVS_SG_ENTRIES, align 4
  %154 = load i32, i32* @MVS_EPRD_MAX, align 4
  %155 = load i32*, i32** @busdma_lock_mutex, align 8
  %156 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %157 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %156, i32 0, i32 1
  %158 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %159 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = call i64 @bus_dma_tag_create(i32 %144, i32 2, i32 %145, i32 %146, i32 %147, i32* null, i32* null, i32 %152, i32 %153, i32 %154, i32 0, i32* %155, i32* %157, i32* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %137
  br label %165

164:                                              ; preds = %137
  br label %170

165:                                              ; preds = %163, %123, %101, %86, %55, %33, %18
  %166 = load i32, i32* %2, align 4
  %167 = call i32 @device_printf(i32 %166, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %168 = load i32, i32* %2, align 4
  %169 = call i32 @mvs_dmafini(i32 %168)
  br label %170

170:                                              ; preds = %165, %164
  ret void
}

declare dso_local %struct.mvs_channel* @device_get_softc(i32) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.mvs_dc_cb_args*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mvs_dmafini(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
