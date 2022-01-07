; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_pci.c_amr_pci_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_pci.c_amr_pci_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_softc = type { i8*, i8*, i32*, i32, i64, i32*, i64, i64, i32, i64, i64, i64, i32, i64, i32, i64, i64 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amr_softc*)* @amr_pci_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amr_pci_free(%struct.amr_softc* %0) #0 {
  %2 = alloca %struct.amr_softc*, align 8
  %3 = alloca i8*, align 8
  store %struct.amr_softc* %0, %struct.amr_softc** %2, align 8
  %4 = call i32 @debug_called(i32 1)
  %5 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %6 = call i32 @amr_free(%struct.amr_softc* %5)
  %7 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %8 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %7, i32 0, i32 16
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %13 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %12, i32 0, i32 16
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @bus_dma_tag_destroy(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %18 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %17, i32 0, i32 15
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %23 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %22, i32 0, i32 15
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @bus_dma_tag_destroy(i64 %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %28 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %49

31:                                               ; preds = %26
  %32 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %33 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %32, i32 0, i32 13
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %36 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %35, i32 0, i32 14
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @bus_dmamap_unload(i64 %34, i32 %37)
  %39 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %40 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %39, i32 0, i32 13
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %43 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %46 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %45, i32 0, i32 14
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @bus_dmamem_free(i64 %41, i8* %44, i32 %47)
  br label %49

49:                                               ; preds = %31, %26
  %50 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %51 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %50, i32 0, i32 13
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %56 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %55, i32 0, i32 13
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @bus_dma_tag_destroy(i64 %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %61 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %82

64:                                               ; preds = %59
  %65 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %66 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %65, i32 0, i32 11
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %69 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %68, i32 0, i32 12
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @bus_dmamap_unload(i64 %67, i32 %70)
  %72 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %73 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %72, i32 0, i32 11
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %76 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %79 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %78, i32 0, i32 12
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @bus_dmamem_free(i64 %74, i8* %77, i32 %80)
  br label %82

82:                                               ; preds = %64, %59
  %83 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %84 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %83, i32 0, i32 11
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %89 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %88, i32 0, i32 11
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @bus_dma_tag_destroy(i64 %90)
  br label %92

92:                                               ; preds = %87, %82
  %93 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %94 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %93, i32 0, i32 10
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = ptrtoint i8* %96 to i64
  %98 = inttoptr i64 %97 to i8*
  store i8* %98, i8** %3, align 8
  %99 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %100 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %99, i32 0, i32 9
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %92
  %104 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %105 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %104, i32 0, i32 7
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %108 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %107, i32 0, i32 8
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @bus_dmamap_unload(i64 %106, i32 %109)
  %111 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %112 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %111, i32 0, i32 7
  %113 = load i64, i64* %112, align 8
  %114 = load i8*, i8** %3, align 8
  %115 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %116 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %115, i32 0, i32 8
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @bus_dmamem_free(i64 %113, i8* %114, i32 %117)
  br label %119

119:                                              ; preds = %103, %92
  %120 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %121 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %120, i32 0, i32 7
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %126 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %125, i32 0, i32 7
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @bus_dma_tag_destroy(i64 %127)
  br label %129

129:                                              ; preds = %124, %119
  %130 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %131 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %130, i32 0, i32 6
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %129
  %135 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %136 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %139 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %138, i32 0, i32 5
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %142 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %141, i32 0, i32 6
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @bus_teardown_intr(i32 %137, i32* %140, i64 %143)
  br label %145

145:                                              ; preds = %134, %129
  %146 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %147 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %146, i32 0, i32 5
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %159

150:                                              ; preds = %145
  %151 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %152 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @SYS_RES_IRQ, align 4
  %155 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %156 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %155, i32 0, i32 5
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @bus_release_resource(i32 %153, i32 %154, i32 0, i32* %157)
  br label %159

159:                                              ; preds = %150, %145
  %160 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %161 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %166 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @bus_dma_tag_destroy(i64 %167)
  br label %169

169:                                              ; preds = %164, %159
  %170 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %171 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %192

174:                                              ; preds = %169
  %175 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %176 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %179 = call i64 @AMR_IS_QUARTZ(%struct.amr_softc* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %174
  %182 = load i32, i32* @SYS_RES_MEMORY, align 4
  br label %185

183:                                              ; preds = %174
  %184 = load i32, i32* @SYS_RES_IOPORT, align 4
  br label %185

185:                                              ; preds = %183, %181
  %186 = phi i32 [ %182, %181 ], [ %184, %183 ]
  %187 = call i32 @PCIR_BAR(i32 0)
  %188 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %189 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %188, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @bus_release_resource(i32 %177, i32 %186, i32 %187, i32* %190)
  br label %192

192:                                              ; preds = %185, %169
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @amr_free(%struct.amr_softc*) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @bus_dmamap_unload(i64, i32) #1

declare dso_local i32 @bus_dmamem_free(i64, i8*, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i64 @AMR_IS_QUARTZ(%struct.amr_softc*) #1

declare dso_local i32 @PCIR_BAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
