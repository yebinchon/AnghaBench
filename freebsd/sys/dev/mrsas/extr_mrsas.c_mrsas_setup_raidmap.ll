; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_setup_raidmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_setup_raidmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i32*, i32*, i32, i32*, i32*, i32, i8**, i32 }

@M_MRSAS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Could not allocate memory for local map\00", align 1
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot allocate raid map tag.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Cannot allocate raidmap memory.\0A\00", align 1
@mrsas_addr_cb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Cannot load raidmap memory.\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Cannot allocate memory for raid map.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mrsas_softc*)* @mrsas_setup_raidmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrsas_setup_raidmap(%struct.mrsas_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mrsas_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %48, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %51

9:                                                ; preds = %6
  %10 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %11 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @M_MRSAS, align 4
  %14 = load i32, i32* @M_NOWAIT, align 4
  %15 = call i64 @malloc(i32 %12, i32 %13, i32 %14)
  %16 = inttoptr i64 %15 to i8*
  %17 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %18 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %17, i32 0, i32 7
  %19 = load i8**, i8*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  store i8* %16, i8** %22, align 8
  %23 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %24 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %23, i32 0, i32 7
  %25 = load i8**, i8*** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %47, label %31

31:                                               ; preds = %9
  %32 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %33 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %40 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %39, i32 0, i32 7
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* @M_MRSAS, align 4
  %45 = call i32 @free(i8* %43, i32 %44)
  br label %46

46:                                               ; preds = %38, %31
  br label %191

47:                                               ; preds = %9
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %6

51:                                               ; preds = %6
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %180, %51
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 2
  br i1 %54, label %55, label %183

55:                                               ; preds = %52
  %56 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %57 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %60 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %61 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %62 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %65 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %68 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %69 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %68, i32 0, i32 5
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = call i64 @bus_dma_tag_create(i32 %58, i32 4, i32 0, i32 %59, i32 %60, i32* null, i32* null, i32 %63, i32 1, i32 %66, i32 %67, i32* null, i32* null, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %55
  %77 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %78 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @device_printf(i32 %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @ENOMEM, align 4
  store i32 %81, i32* %2, align 4
  br label %192

82:                                               ; preds = %55
  %83 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %84 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %83, i32 0, i32 5
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %91 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = bitcast i32* %95 to i8**
  %97 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %98 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %99 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = call i64 @bus_dmamem_alloc(i32 %89, i8** %96, i32 %97, i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %82
  %107 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %108 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @device_printf(i32 %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i32, i32* @ENOMEM, align 4
  store i32 %111, i32* %2, align 4
  br label %192

112:                                              ; preds = %82
  %113 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %114 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %121 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @bzero(i32 %119, i32 %122)
  %124 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %125 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %124, i32 0, i32 5
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %132 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %131, i32 0, i32 4
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %139 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %146 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @mrsas_addr_cb, align 4
  %149 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %150 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %156 = call i64 @bus_dmamap_load(i32 %130, i32 %137, i32 %144, i32 %147, i32 %148, i32* %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %112
  %159 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %160 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @device_printf(i32 %161, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %163 = load i32, i32* @ENOMEM, align 4
  store i32 %163, i32* %2, align 4
  br label %192

164:                                              ; preds = %112
  %165 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %166 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %5, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %164
  %174 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %175 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @device_printf(i32 %176, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %178 = load i32, i32* @ENOMEM, align 4
  store i32 %178, i32* %2, align 4
  br label %192

179:                                              ; preds = %164
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %5, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %5, align 4
  br label %52

183:                                              ; preds = %52
  %184 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %185 = call i32 @mrsas_get_map_info(%struct.mrsas_softc* %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %183
  %188 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %189 = call i32 @mrsas_sync_map_info(%struct.mrsas_softc* %188)
  br label %190

190:                                              ; preds = %187, %183
  store i32 0, i32* %2, align 4
  br label %192

191:                                              ; preds = %46
  store i32 1, i32* %2, align 4
  br label %192

192:                                              ; preds = %191, %190, %173, %158, %106, %76
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @mrsas_get_map_info(%struct.mrsas_softc*) #1

declare dso_local i32 @mrsas_sync_map_info(%struct.mrsas_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
