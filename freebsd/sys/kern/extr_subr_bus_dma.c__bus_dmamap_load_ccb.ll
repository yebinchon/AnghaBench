; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus_dma.c__bus_dmamap_load_ccb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus_dma.c__bus_dmamap_load_ccb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.ccb_nvmeio }
%struct.ccb_nvmeio = type { i32, i32, i8* }
%struct.ccb_hdr = type { i32, i32 }
%struct.ccb_scsiio = type { i32, i32, i8* }
%struct.ccb_ataio = type { i32, i8* }
%struct.bio = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"_bus_dmamap_load_ccb: Unsupported func code %d\00", align 1
@CAM_DATA_MASK = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"_bus_dmamap_load_ccb: flags 0x%X unimplemented\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %union.ccb*, i32*, i32)* @_bus_dmamap_load_ccb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bus_dmamap_load_ccb(i32 %0, i32 %1, %union.ccb* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.ccb*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ccb_hdr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ccb_scsiio*, align 8
  %17 = alloca %struct.ccb_scsiio*, align 8
  %18 = alloca %struct.ccb_ataio*, align 8
  %19 = alloca %struct.ccb_nvmeio*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %union.ccb* %2, %union.ccb** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %20 = load %union.ccb*, %union.ccb** %8, align 8
  %21 = bitcast %union.ccb* %20 to %struct.ccb_hdr*
  store %struct.ccb_hdr* %21, %struct.ccb_hdr** %11, align 8
  %22 = load %struct.ccb_hdr*, %struct.ccb_hdr** %11, align 8
  %23 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %70 [
    i32 128, label %25
    i32 131, label %37
    i32 132, label %49
    i32 129, label %58
    i32 130, label %58
  ]

25:                                               ; preds = %5
  %26 = load %union.ccb*, %union.ccb** %8, align 8
  %27 = bitcast %union.ccb* %26 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %27, %struct.ccb_scsiio** %16, align 8
  %28 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %16, align 8
  %29 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %12, align 8
  %31 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %16, align 8
  %32 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %14, align 4
  %34 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %16, align 8
  %35 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %15, align 4
  br label %75

37:                                               ; preds = %5
  %38 = load %union.ccb*, %union.ccb** %8, align 8
  %39 = bitcast %union.ccb* %38 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %39, %struct.ccb_scsiio** %17, align 8
  %40 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %17, align 8
  %41 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %12, align 8
  %43 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %17, align 8
  %44 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %14, align 4
  %46 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %17, align 8
  %47 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %15, align 4
  br label %75

49:                                               ; preds = %5
  %50 = load %union.ccb*, %union.ccb** %8, align 8
  %51 = bitcast %union.ccb* %50 to %struct.ccb_ataio*
  store %struct.ccb_ataio* %51, %struct.ccb_ataio** %18, align 8
  %52 = load %struct.ccb_ataio*, %struct.ccb_ataio** %18, align 8
  %53 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %12, align 8
  %55 = load %struct.ccb_ataio*, %struct.ccb_ataio** %18, align 8
  %56 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %75

58:                                               ; preds = %5, %5
  %59 = load %union.ccb*, %union.ccb** %8, align 8
  %60 = bitcast %union.ccb* %59 to %struct.ccb_nvmeio*
  store %struct.ccb_nvmeio* %60, %struct.ccb_nvmeio** %19, align 8
  %61 = load %struct.ccb_nvmeio*, %struct.ccb_nvmeio** %19, align 8
  %62 = getelementptr inbounds %struct.ccb_nvmeio, %struct.ccb_nvmeio* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %12, align 8
  %64 = load %struct.ccb_nvmeio*, %struct.ccb_nvmeio** %19, align 8
  %65 = getelementptr inbounds %struct.ccb_nvmeio, %struct.ccb_nvmeio* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %14, align 4
  %67 = load %struct.ccb_nvmeio*, %struct.ccb_nvmeio** %19, align 8
  %68 = getelementptr inbounds %struct.ccb_nvmeio, %struct.ccb_nvmeio* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %15, align 4
  br label %75

70:                                               ; preds = %5
  %71 = load %struct.ccb_hdr*, %struct.ccb_hdr** %11, align 8
  %72 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %70, %58, %49, %37, %25
  %76 = load %struct.ccb_hdr*, %struct.ccb_hdr** %11, align 8
  %77 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @CAM_DATA_MASK, align 4
  %80 = and i32 %78, %79
  switch i32 %80, label %128 [
    i32 133, label %81
    i32 136, label %90
    i32 135, label %100
    i32 134, label %111
    i32 137, label %120
  ]

81:                                               ; preds = %75
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i8*, i8** %12, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* @kernel_pmap, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @_bus_dmamap_load_buffer(i32 %82, i32 %83, i8* %84, i32 %85, i32 %86, i32 %87, i32* null, i32* %88)
  store i32 %89, i32* %13, align 4
  br label %133

90:                                               ; preds = %75
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i8*, i8** %12, align 8
  %94 = ptrtoint i8* %93 to i64
  %95 = trunc i64 %94 to i32
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @_bus_dmamap_load_phys(i32 %91, i32 %92, i32 %95, i32 %96, i32 %97, i32* null, i32* %98)
  store i32 %99, i32* %13, align 4
  br label %133

100:                                              ; preds = %75
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i8*, i8** %12, align 8
  %104 = bitcast i8* %103 to i32*
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* @kernel_pmap, align 4
  %107 = load i32*, i32** %9, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @_bus_dmamap_load_vlist(i32 %101, i32 %102, i32* %104, i32 %105, i32 %106, i32* %107, i32 %108, i32 0, i32 %109)
  store i32 %110, i32* %13, align 4
  br label %133

111:                                              ; preds = %75
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %7, align 4
  %114 = load i8*, i8** %12, align 8
  %115 = bitcast i8* %114 to i32*
  %116 = load i32, i32* %15, align 4
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @_bus_dmamap_load_plist(i32 %112, i32 %113, i32* %115, i32 %116, i32* %117, i32 %118)
  store i32 %119, i32* %13, align 4
  br label %133

120:                                              ; preds = %75
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load i8*, i8** %12, align 8
  %124 = bitcast i8* %123 to %struct.bio*
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @_bus_dmamap_load_bio(i32 %121, i32 %122, %struct.bio* %124, i32* %125, i32 %126)
  store i32 %127, i32* %13, align 4
  br label %133

128:                                              ; preds = %75
  %129 = load %struct.ccb_hdr*, %struct.ccb_hdr** %11, align 8
  %130 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %128, %120, %111, %100, %90, %81
  %134 = load i32, i32* %13, align 4
  ret i32 %134
}

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @_bus_dmamap_load_buffer(i32, i32, i8*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @_bus_dmamap_load_phys(i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @_bus_dmamap_load_vlist(i32, i32, i32*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @_bus_dmamap_load_plist(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @_bus_dmamap_load_bio(i32, i32, %struct.bio*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
