; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i32, i64, i32, i32, i64, i32, i32, i32 }

@SDHCI_QUIRK_BROKEN_SDMA_BOUNDARY = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i32 0, align 4
@SDHCI_BLKSZ_SDMA_BNDRY_4K = common dso_local global i32 0, align 4
@SDHCI_BLKSZ_SDMA_BNDRY_8K = common dso_local global i32 0, align 4
@SDHCI_BLKSZ_SDMA_BNDRY_16K = common dso_local global i32 0, align 4
@SDHCI_BLKSZ_SDMA_BNDRY_32K = common dso_local global i32 0, align 4
@SDHCI_BLKSZ_SDMA_BNDRY_64K = common dso_local global i32 0, align 4
@SDHCI_BLKSZ_SDMA_BNDRY_128K = common dso_local global i32 0, align 4
@SDHCI_BLKSZ_SDMA_BNDRY_256K = common dso_local global i32 0, align 4
@SDHCI_BLKSZ_SDMA_BNDRY_512K = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Can't create DMA tag for SDMA\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Can't alloc DMA memory for SDMA\0A\00", align 1
@sdhci_getaddr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Can't load DMA memory for SDMA\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_slot*)* @sdhci_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_dma_alloc(%struct.sdhci_slot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_slot*, align 8
  %4 = alloca i32, align 4
  store %struct.sdhci_slot* %0, %struct.sdhci_slot** %3, align 8
  %5 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %6 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @SDHCI_QUIRK_BROKEN_SDMA_BOUNDARY, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %71, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @MAXPHYS, align 4
  %13 = icmp sle i32 %12, 4096
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* @SDHCI_BLKSZ_SDMA_BNDRY_4K, align 4
  %16 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %17 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 8
  br label %70

18:                                               ; preds = %11
  %19 = load i32, i32* @MAXPHYS, align 4
  %20 = icmp sle i32 %19, 8192
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* @SDHCI_BLKSZ_SDMA_BNDRY_8K, align 4
  %23 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %24 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 8
  br label %69

25:                                               ; preds = %18
  %26 = load i32, i32* @MAXPHYS, align 4
  %27 = icmp sle i32 %26, 16384
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* @SDHCI_BLKSZ_SDMA_BNDRY_16K, align 4
  %30 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %31 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 8
  br label %68

32:                                               ; preds = %25
  %33 = load i32, i32* @MAXPHYS, align 4
  %34 = icmp sle i32 %33, 32768
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* @SDHCI_BLKSZ_SDMA_BNDRY_32K, align 4
  %37 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %38 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 8
  br label %67

39:                                               ; preds = %32
  %40 = load i32, i32* @MAXPHYS, align 4
  %41 = icmp sle i32 %40, 65536
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* @SDHCI_BLKSZ_SDMA_BNDRY_64K, align 4
  %44 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %45 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 8
  br label %66

46:                                               ; preds = %39
  %47 = load i32, i32* @MAXPHYS, align 4
  %48 = icmp sle i32 %47, 131072
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* @SDHCI_BLKSZ_SDMA_BNDRY_128K, align 4
  %51 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %52 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 8
  br label %65

53:                                               ; preds = %46
  %54 = load i32, i32* @MAXPHYS, align 4
  %55 = icmp sle i32 %54, 262144
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* @SDHCI_BLKSZ_SDMA_BNDRY_256K, align 4
  %58 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %59 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 8
  br label %64

60:                                               ; preds = %53
  %61 = load i32, i32* @SDHCI_BLKSZ_SDMA_BNDRY_512K, align 4
  %62 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %63 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %60, %56
  br label %65

65:                                               ; preds = %64, %49
  br label %66

66:                                               ; preds = %65, %42
  br label %67

67:                                               ; preds = %66, %35
  br label %68

68:                                               ; preds = %67, %28
  br label %69

69:                                               ; preds = %68, %21
  br label %70

70:                                               ; preds = %69, %14
  br label %71

71:                                               ; preds = %70, %1
  %72 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %73 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @SDHCI_SDMA_BNDRY_TO_BBUFSZ(i32 %74)
  %76 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %77 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 8
  %78 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %79 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @bus_get_dma_tag(i32 %80)
  %82 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %83 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %86 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %87 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %88 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %91 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %94 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %95 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %94, i32 0, i32 2
  %96 = call i32 @bus_dma_tag_create(i32 %81, i32 %84, i32 0, i32 %85, i32 %86, i32* null, i32* null, i32 %89, i32 1, i32 %92, i32 %93, i32* null, i32* null, i32* %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %71
  %100 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %101 = call i32 @slot_printf(%struct.sdhci_slot* %100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %102 = load i32, i32* %4, align 4
  store i32 %102, i32* %2, align 4
  br label %173

103:                                              ; preds = %71
  %104 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %105 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %108 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %107, i32 0, i32 4
  %109 = bitcast i64* %108 to i8**
  %110 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %111 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %112 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %111, i32 0, i32 3
  %113 = call i32 @bus_dmamem_alloc(i32 %106, i8** %109, i32 %110, i32* %112)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %103
  %117 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %118 = call i32 @slot_printf(%struct.sdhci_slot* %117, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %119 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %120 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @bus_dma_tag_destroy(i32 %121)
  %123 = load i32, i32* %4, align 4
  store i32 %123, i32* %2, align 4
  br label %173

124:                                              ; preds = %103
  %125 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %126 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %129 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %132 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to i8*
  %135 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %136 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @sdhci_getaddr, align 4
  %139 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %140 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %139, i32 0, i32 1
  %141 = call i32 @bus_dmamap_load(i32 %127, i32 %130, i8* %134, i32 %137, i32 %138, i64* %140, i32 0)
  store i32 %141, i32* %4, align 4
  %142 = load i32, i32* %4, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %124
  %145 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %146 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %172

149:                                              ; preds = %144, %124
  %150 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %151 = call i32 @slot_printf(%struct.sdhci_slot* %150, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %152 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %153 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %156 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %159 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @bus_dmamem_free(i32 %154, i64 %157, i32 %160)
  %162 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %163 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @bus_dma_tag_destroy(i32 %164)
  %166 = load i32, i32* %4, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %149
  %169 = load i32, i32* %4, align 4
  store i32 %169, i32* %2, align 4
  br label %173

170:                                              ; preds = %149
  %171 = load i32, i32* @EFAULT, align 4
  store i32 %171, i32* %2, align 4
  br label %173

172:                                              ; preds = %144
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %172, %170, %168, %116, %99
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local i32 @SDHCI_SDMA_BNDRY_TO_BBUFSZ(i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @slot_printf(%struct.sdhci_slot*, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i8*, i32, i32, i64*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
