; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_rxsd_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_rxsd_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_11__*, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32*, i32*, i32*, %struct.mbuf** }
%struct.mbuf = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32, i32 }

@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unable to allocate RX DMA tag: %d\0A\00", align 1
@M_IFLIB = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Unable to allocate RX mbuf map memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Unable to allocate RX cluster map memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Unable to allocate RX bus address map memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Unable to allocate RX buffer DMA map memory\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Unable to create RX buffer DMA map\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @iflib_rxsd_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iflib_rxsd_alloc(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %4, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %5, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %6, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @MPASS(i32 %29)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @MPASS(i32 %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  store %struct.TYPE_11__* %44, %struct.TYPE_11__** %8, align 8
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %222, %1
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %227

51:                                               ; preds = %45
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @bus_get_dma_tag(i32 %62)
  %64 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %65 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  %77 = call i32 @bus_dma_tag_create(i32 %63, i32 1, i32 0, i32 %64, i32 %65, i32* null, i32* null, i32 %68, i32 %71, i32 %74, i32 0, i32* null, i32* null, i32* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %51
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 (i32, i8*, ...) @device_printf(i32 %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %228

84:                                               ; preds = %51
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 8, %93
  %95 = trunc i64 %94 to i32
  %96 = load i32, i32* @M_IFLIB, align 4
  %97 = load i32, i32* @M_NOWAIT, align 4
  %98 = load i32, i32* @M_ZERO, align 4
  %99 = or i32 %97, %98
  %100 = call i64 @malloc(i32 %95, i32 %96, i32 %99)
  %101 = inttoptr i64 %100 to %struct.mbuf**
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 3
  store %struct.mbuf** %101, %struct.mbuf*** %104, align 8
  %105 = icmp ne %struct.mbuf** %101, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %84
  %107 = load i32, i32* %7, align 4
  %108 = call i32 (i32, i8*, ...) @device_printf(i32 %107, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i32, i32* @ENOMEM, align 4
  store i32 %109, i32* %9, align 4
  br label %228

110:                                              ; preds = %84
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = mul i64 4, %119
  %121 = trunc i64 %120 to i32
  %122 = load i32, i32* @M_IFLIB, align 4
  %123 = load i32, i32* @M_NOWAIT, align 4
  %124 = load i32, i32* @M_ZERO, align 4
  %125 = or i32 %123, %124
  %126 = call i64 @malloc(i32 %121, i32 %122, i32 %125)
  %127 = inttoptr i64 %126 to i32*
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  store i32* %127, i32** %130, align 8
  %131 = icmp ne i32* %127, null
  br i1 %131, label %136, label %132

132:                                              ; preds = %110
  %133 = load i32, i32* %7, align 4
  %134 = call i32 (i32, i8*, ...) @device_printf(i32 %133, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %135 = load i32, i32* @ENOMEM, align 4
  store i32 %135, i32* %9, align 4
  br label %228

136:                                              ; preds = %110
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = mul i64 4, %145
  %147 = trunc i64 %146 to i32
  %148 = load i32, i32* @M_IFLIB, align 4
  %149 = load i32, i32* @M_NOWAIT, align 4
  %150 = load i32, i32* @M_ZERO, align 4
  %151 = or i32 %149, %150
  %152 = call i64 @malloc(i32 %147, i32 %148, i32 %151)
  %153 = inttoptr i64 %152 to i32*
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  store i32* %153, i32** %156, align 8
  %157 = icmp ne i32* %153, null
  br i1 %157, label %162, label %158

158:                                              ; preds = %136
  %159 = load i32, i32* %7, align 4
  %160 = call i32 (i32, i8*, ...) @device_printf(i32 %159, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %161 = load i32, i32* @ENOMEM, align 4
  store i32 %161, i32* %9, align 4
  br label %228

162:                                              ; preds = %136
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = mul i64 4, %171
  %173 = trunc i64 %172 to i32
  %174 = load i32, i32* @M_IFLIB, align 4
  %175 = load i32, i32* @M_NOWAIT, align 4
  %176 = load i32, i32* @M_ZERO, align 4
  %177 = or i32 %175, %176
  %178 = call i64 @malloc(i32 %173, i32 %174, i32 %177)
  %179 = inttoptr i64 %178 to i32*
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  store i32* %179, i32** %182, align 8
  %183 = icmp ne i32* %179, null
  br i1 %183, label %188, label %184

184:                                              ; preds = %162
  %185 = load i32, i32* %7, align 4
  %186 = call i32 (i32, i8*, ...) @device_printf(i32 %185, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %187 = load i32, i32* @ENOMEM, align 4
  store i32 %187, i32* %9, align 4
  br label %228

188:                                              ; preds = %162
  store i32 0, i32* %11, align 4
  br label %189

189:                                              ; preds = %218, %188
  %190 = load i32, i32* %11, align 4
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds i32, i32* %193, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = icmp slt i32 %190, %198
  br i1 %199, label %200, label %221

200:                                              ; preds = %189
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %11, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = call i32 @bus_dmamap_create(i32 %203, i32 0, i32* %210)
  store i32 %211, i32* %9, align 4
  %212 = load i32, i32* %9, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %200
  %215 = load i32, i32* %7, align 4
  %216 = call i32 (i32, i8*, ...) @device_printf(i32 %215, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %228

217:                                              ; preds = %200
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %11, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %11, align 4
  br label %189

221:                                              ; preds = %189
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %10, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %10, align 4
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 1
  store %struct.TYPE_11__* %226, %struct.TYPE_11__** %8, align 8
  br label %45

227:                                              ; preds = %45
  store i32 0, i32* %2, align 4
  br label %232

228:                                              ; preds = %214, %184, %158, %132, %106, %80
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %230 = call i32 @iflib_rx_structures_free(%struct.TYPE_14__* %229)
  %231 = load i32, i32* %9, align 4
  store i32 %231, i32* %2, align 4
  br label %232

232:                                              ; preds = %228, %227
  %233 = load i32, i32* %2, align 4
  ret i32 %233
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @iflib_rx_structures_free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
