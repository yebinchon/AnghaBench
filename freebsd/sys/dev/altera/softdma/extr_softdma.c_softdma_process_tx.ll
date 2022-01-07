; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/softdma/extr_softdma.c_softdma_process_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/softdma/extr_softdma.c_softdma_process_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.softdma_channel = type { %struct.softdma_softc* }
%struct.softdma_softc = type { i32* }
%struct.softdma_desc = type { i32, i32, i32 }

@CONTROL_GEN_SOP = common dso_local global i32 0, align 4
@A_ONCHIP_FIFO_MEM_CORE_METADATA = common dso_local global i32 0, align 4
@A_ONCHIP_FIFO_MEM_CORE_SOP = common dso_local global i32 0, align 4
@CONTROL_GEN_EOP = common dso_local global i32 0, align 4
@A_ONCHIP_FIFO_MEM_CORE_EOP = common dso_local global i32 0, align 4
@A_ONCHIP_FIFO_MEM_CORE_DATA = common dso_local global i32 0, align 4
@A_ONCHIP_FIFO_MEM_CORE_EMPTY_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.softdma_channel*, %struct.softdma_desc*)* @softdma_process_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @softdma_process_tx(%struct.softdma_channel* %0, %struct.softdma_desc* %1) #0 {
  %3 = alloca %struct.softdma_channel*, align 8
  %4 = alloca %struct.softdma_desc*, align 8
  %5 = alloca %struct.softdma_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.softdma_channel* %0, %struct.softdma_channel** %3, align 8
  store %struct.softdma_desc* %1, %struct.softdma_desc** %4, align 8
  %13 = load %struct.softdma_channel*, %struct.softdma_channel** %3, align 8
  %14 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %13, i32 0, i32 0
  %15 = load %struct.softdma_softc*, %struct.softdma_softc** %14, align 8
  store %struct.softdma_softc* %15, %struct.softdma_softc** %5, align 8
  %16 = load %struct.softdma_softc*, %struct.softdma_softc** %5, align 8
  %17 = call i32 @fifo_fill_level_wait(%struct.softdma_softc* %16)
  %18 = load %struct.softdma_desc*, %struct.softdma_desc** %4, align 8
  %19 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CONTROL_GEN_SOP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.softdma_softc*, %struct.softdma_softc** %5, align 8
  %26 = load i32, i32* @A_ONCHIP_FIFO_MEM_CORE_METADATA, align 4
  %27 = load i32, i32* @A_ONCHIP_FIFO_MEM_CORE_SOP, align 4
  %28 = call i32 @softdma_mem_write(%struct.softdma_softc* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %2
  store i32 0, i32* %11, align 4
  store i32 0, i32* %7, align 4
  %30 = load %struct.softdma_desc*, %struct.softdma_desc** %4, align 8
  %31 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  %33 = load %struct.softdma_desc*, %struct.softdma_desc** %4, align 8
  %34 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %29
  %40 = load i32, i32* %7, align 4
  %41 = shl i32 %40, 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %41, %45
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 8
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %12, align 4
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %39, %29
  %54 = load i32, i32* %12, align 4
  %55 = icmp sge i32 %54, 2
  br i1 %55, label %56, label %74

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, 2
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = shl i32 %61, 16
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %62, %66
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 16
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 2
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %12, align 4
  %73 = sub nsw i32 %72, 2
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %60, %56, %53
  br label %75

75:                                               ; preds = %112, %74
  %76 = load i32, i32* %12, align 4
  %77 = icmp sge i32 %76, 4
  br i1 %77, label %78, label %121

78:                                               ; preds = %75
  %79 = load i32, i32* %7, align 4
  %80 = shl i32 %79, 32
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %80, %84
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 4
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %12, align 4
  %89 = sub nsw i32 %88, 4
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %11, align 4
  %92 = ashr i32 %90, %91
  store i32 %92, i32* %8, align 4
  %93 = load %struct.softdma_softc*, %struct.softdma_softc** %5, align 8
  %94 = call i32 @fifo_fill_level_wait(%struct.softdma_softc* %93)
  %95 = load i32, i32* %12, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %78
  %98 = load i32, i32* %11, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %97
  %101 = load %struct.softdma_desc*, %struct.softdma_desc** %4, align 8
  %102 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @CONTROL_GEN_EOP, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %100
  %108 = load %struct.softdma_softc*, %struct.softdma_softc** %5, align 8
  %109 = load i32, i32* @A_ONCHIP_FIFO_MEM_CORE_METADATA, align 4
  %110 = load i32, i32* @A_ONCHIP_FIFO_MEM_CORE_EOP, align 4
  %111 = call i32 @softdma_mem_write(%struct.softdma_softc* %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %107, %100, %97, %78
  %113 = load %struct.softdma_softc*, %struct.softdma_softc** %5, align 8
  %114 = getelementptr inbounds %struct.softdma_softc, %struct.softdma_softc* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @A_ONCHIP_FIFO_MEM_CORE_DATA, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @bus_write_4(i32 %117, i32 %118, i32 %119)
  br label %75

121:                                              ; preds = %75
  %122 = load i32, i32* %12, align 4
  %123 = and i32 %122, 2
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %121
  %126 = load i32, i32* %7, align 4
  %127 = shl i32 %126, 16
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = inttoptr i64 %129 to i32*
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %127, %131
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 16
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, 2
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %12, align 4
  %138 = sub nsw i32 %137, 2
  store i32 %138, i32* %12, align 4
  br label %139

139:                                              ; preds = %125, %121
  %140 = load i32, i32* %12, align 4
  %141 = and i32 %140, 1
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %139
  %144 = load i32, i32* %7, align 4
  %145 = shl i32 %144, 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = inttoptr i64 %147 to i32*
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %145, %149
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 8
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %12, align 4
  %156 = sub nsw i32 %155, 1
  store i32 %156, i32* %12, align 4
  br label %157

157:                                              ; preds = %143, %139
  %158 = load i32, i32* %11, align 4
  %159 = icmp sge i32 %158, 32
  br i1 %159, label %160, label %194

160:                                              ; preds = %157
  %161 = load i32, i32* %11, align 4
  %162 = sub nsw i32 %161, 32
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %11, align 4
  %165 = ashr i32 %163, %164
  store i32 %165, i32* %8, align 4
  %166 = load %struct.softdma_softc*, %struct.softdma_softc** %5, align 8
  %167 = call i32 @fifo_fill_level_wait(%struct.softdma_softc* %166)
  %168 = load i32, i32* %12, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %185

170:                                              ; preds = %160
  %171 = load i32, i32* %11, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %185

173:                                              ; preds = %170
  %174 = load %struct.softdma_desc*, %struct.softdma_desc** %4, align 8
  %175 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @CONTROL_GEN_EOP, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %173
  %181 = load %struct.softdma_softc*, %struct.softdma_softc** %5, align 8
  %182 = load i32, i32* @A_ONCHIP_FIFO_MEM_CORE_METADATA, align 4
  %183 = load i32, i32* @A_ONCHIP_FIFO_MEM_CORE_EOP, align 4
  %184 = call i32 @softdma_mem_write(%struct.softdma_softc* %181, i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %180, %173, %170, %160
  %186 = load %struct.softdma_softc*, %struct.softdma_softc** %5, align 8
  %187 = getelementptr inbounds %struct.softdma_softc, %struct.softdma_softc* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @A_ONCHIP_FIFO_MEM_CORE_DATA, align 4
  %192 = load i32, i32* %8, align 4
  %193 = call i32 @bus_write_4(i32 %190, i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %185, %157
  %195 = load i32, i32* %11, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %225

197:                                              ; preds = %194
  %198 = load i32, i32* %11, align 4
  %199 = sub nsw i32 32, %198
  store i32 %199, i32* %9, align 4
  %200 = load i32, i32* %11, align 4
  %201 = sdiv i32 %200, 8
  store i32 %201, i32* %11, align 4
  %202 = load %struct.softdma_softc*, %struct.softdma_softc** %5, align 8
  %203 = call i32 @fifo_fill_level_wait(%struct.softdma_softc* %202)
  %204 = load i32, i32* @A_ONCHIP_FIFO_MEM_CORE_EOP, align 4
  %205 = load i32, i32* %11, align 4
  %206 = sub nsw i32 4, %205
  %207 = load i32, i32* @A_ONCHIP_FIFO_MEM_CORE_EMPTY_SHIFT, align 4
  %208 = shl i32 %206, %207
  %209 = or i32 %204, %208
  store i32 %209, i32* %10, align 4
  %210 = load %struct.softdma_softc*, %struct.softdma_softc** %5, align 8
  %211 = load i32, i32* @A_ONCHIP_FIFO_MEM_CORE_METADATA, align 4
  %212 = load i32, i32* %10, align 4
  %213 = call i32 @softdma_mem_write(%struct.softdma_softc* %210, i32 %211, i32 %212)
  %214 = load i32, i32* %7, align 4
  %215 = load i32, i32* %9, align 4
  %216 = shl i32 %214, %215
  store i32 %216, i32* %8, align 4
  %217 = load %struct.softdma_softc*, %struct.softdma_softc** %5, align 8
  %218 = getelementptr inbounds %struct.softdma_softc, %struct.softdma_softc* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @A_ONCHIP_FIFO_MEM_CORE_DATA, align 4
  %223 = load i32, i32* %8, align 4
  %224 = call i32 @bus_write_4(i32 %221, i32 %222, i32 %223)
  br label %225

225:                                              ; preds = %197, %194
  %226 = load %struct.softdma_desc*, %struct.softdma_desc** %4, align 8
  %227 = getelementptr inbounds %struct.softdma_desc, %struct.softdma_desc* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  ret i32 %228
}

declare dso_local i32 @fifo_fill_level_wait(%struct.softdma_softc*) #1

declare dso_local i32 @softdma_mem_write(%struct.softdma_softc*, i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
