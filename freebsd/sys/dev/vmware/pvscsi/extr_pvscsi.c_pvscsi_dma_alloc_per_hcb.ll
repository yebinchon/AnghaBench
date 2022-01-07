; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_dma_alloc_per_hcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_dma_alloc_per_hcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_softc = type { i32, i32, %struct.pvscsi_hcb*, i32, %struct.TYPE_2__, %struct.TYPE_2__, i32, i32 }
%struct.pvscsi_hcb = type { i32, i64, %struct.pvscsi_sg_list*, i64, i8*, i32 }
%struct.pvscsi_sg_list = type { i32 }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [47 x i8] c"Error allocation sg list DMA memory, error %d\0A\00", align 1
@PVSCSI_SENSE_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Error creating dma map for hcb %d, error %d\0A\00", align 1
@links = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvscsi_softc*)* @pvscsi_dma_alloc_per_hcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvscsi_dma_alloc_per_hcb(%struct.pvscsi_softc* %0) #0 {
  %2 = alloca %struct.pvscsi_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvscsi_hcb*, align 8
  store %struct.pvscsi_softc* %0, %struct.pvscsi_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %7 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %8 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %7, i32 0, i32 4
  %9 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %10 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = trunc i64 %13 to i32
  %15 = call i32 @pvscsi_dma_alloc(%struct.pvscsi_softc* %6, %struct.TYPE_2__* %8, i32 %14, i32 1)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %20 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %21, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %151

24:                                               ; preds = %1
  %25 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %26 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %27 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %26, i32 0, i32 5
  %28 = load i32, i32* @PVSCSI_SENSE_LENGTH, align 4
  %29 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %30 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %28, %31
  %33 = call i32 @pvscsi_dma_alloc(%struct.pvscsi_softc* %25, %struct.TYPE_2__* %27, i32 %32, i32 1)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %24
  %37 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %38 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %39, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %151

42:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %121, %42
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %46 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %124

49:                                               ; preds = %43
  %50 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %51 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %50, i32 0, i32 2
  %52 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %52, i64 %54
  store %struct.pvscsi_hcb* %55, %struct.pvscsi_hcb** %5, align 8
  %56 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %57 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %5, align 8
  %60 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %59, i32 0, i32 5
  %61 = call i32 @bus_dmamap_create(i32 %58, i32 0, i32* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %49
  %65 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %66 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %67, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %69)
  br label %151

71:                                               ; preds = %49
  %72 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %73 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @PVSCSI_SENSE_LENGTH, align 4
  %77 = load i32, i32* %3, align 4
  %78 = mul nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %75, %79
  %81 = inttoptr i64 %80 to i8*
  %82 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %5, align 8
  %83 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %82, i32 0, i32 4
  store i8* %81, i8** %83, align 8
  %84 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %85 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @PVSCSI_SENSE_LENGTH, align 4
  %89 = load i32, i32* %3, align 4
  %90 = mul nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %87, %91
  %93 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %5, align 8
  %94 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %93, i32 0, i32 3
  store i64 %92, i64* %94, align 8
  %95 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %96 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 4, %100
  %102 = add i64 %98, %101
  %103 = inttoptr i64 %102 to %struct.pvscsi_sg_list*
  %104 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %5, align 8
  %105 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %104, i32 0, i32 2
  store %struct.pvscsi_sg_list* %103, %struct.pvscsi_sg_list** %105, align 8
  %106 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %107 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = mul i64 4, %111
  %113 = add i64 %109, %112
  %114 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %5, align 8
  %115 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  %116 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %5, align 8
  %117 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %116, i32 0, i32 0
  %118 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %119 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %118, i32 0, i32 3
  %120 = call i32 @callout_init_mtx(i32* %117, i32* %119, i32 0)
  br label %121

121:                                              ; preds = %71
  %122 = load i32, i32* %3, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %3, align 4
  br label %43

124:                                              ; preds = %43
  %125 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %126 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %125, i32 0, i32 1
  %127 = call i32 @SLIST_INIT(i32* %126)
  %128 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %129 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sub nsw i32 %130, 1
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %147, %124
  %133 = load i32, i32* %3, align 4
  %134 = icmp sge i32 %133, 0
  br i1 %134, label %135, label %150

135:                                              ; preds = %132
  %136 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %137 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %136, i32 0, i32 2
  %138 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %137, align 8
  %139 = load i32, i32* %3, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %138, i64 %140
  store %struct.pvscsi_hcb* %141, %struct.pvscsi_hcb** %5, align 8
  %142 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %143 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %142, i32 0, i32 1
  %144 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %5, align 8
  %145 = load i32, i32* @links, align 4
  %146 = call i32 @SLIST_INSERT_HEAD(i32* %143, %struct.pvscsi_hcb* %144, i32 %145)
  br label %147

147:                                              ; preds = %135
  %148 = load i32, i32* %3, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %3, align 4
  br label %132

150:                                              ; preds = %132
  br label %151

151:                                              ; preds = %150, %64, %36, %18
  %152 = load i32, i32* %4, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %156 = load i32, i32* %3, align 4
  %157 = call i32 @pvscsi_dma_free_per_hcb(%struct.pvscsi_softc* %155, i32 %156)
  br label %158

158:                                              ; preds = %154, %151
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @pvscsi_dma_alloc(%struct.pvscsi_softc*, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.pvscsi_hcb*, i32) #1

declare dso_local i32 @pvscsi_dma_free_per_hcb(%struct.pvscsi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
