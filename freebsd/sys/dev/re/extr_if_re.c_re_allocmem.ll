; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_allocmem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_allocmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i64, i64, i32, i32, i32, %struct.TYPE_7__*, i32, i32, %struct.TYPE_6__*, i32, i32, i32, i32, i32, %struct.TYPE_5__*, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@RL_FLAG_PCIE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not allocate parent DMA tag\0A\00", align 1
@MCLBYTES = common dso_local global i32 0, align 4
@RL_NTXSEGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"could not allocate TX DMA tag\0A\00", align 1
@RL_FLAG_JUMBOV2 = common dso_local global i32 0, align 4
@MJUM9BYTES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"could not allocate jumbo RX DMA tag\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"could not allocate RX DMA tag\0A\00", align 1
@RL_RING_ALIGN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"could not allocate TX DMA ring tag\0A\00", align 1
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"could not allocate TX DMA ring\0A\00", align 1
@re_dma_map_addr = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"could not load TX DMA ring\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"could not create DMA map for TX\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"could not create RX DMA ring tag\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"could not allocate RX DMA ring\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"could not load RX DMA ring\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"could not create spare DMA map for jumbo RX\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"could not create DMA map for jumbo RX\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"could not create spare DMA map for RX\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"could not create DMA map for RX\0A\00", align 1
@RL_DUMP_ALIGN = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [37 x i8] c"could not create statistics DMA tag\0A\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"could not allocate statistics DMA memory\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"could not load statistics DMA memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.rl_softc*)* @re_allocmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @re_allocmem(i32 %0, %struct.rl_softc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rl_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.rl_softc* %1, %struct.rl_softc** %5, align 8
  %11 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %12 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %19 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %27 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @RL_FLAG_PCIE, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %32, %2
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @bus_get_dma_tag(i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %39 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %40 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %41 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %42 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %41, i32 0, i32 2
  %43 = call i32 @bus_dma_tag_create(i32 %36, i32 1, i32 0, i32 %37, i32 %38, i32* null, i32* null, i32 %39, i32 0, i32 %40, i32 0, i32* null, i32* null, i32* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %34
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %480

50:                                               ; preds = %34
  %51 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %52 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %55 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %56 = load i32, i32* @MCLBYTES, align 4
  %57 = load i32, i32* @RL_NTXSEGS, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load i32, i32* @RL_NTXSEGS, align 4
  %60 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %61 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 18
  %63 = call i32 @bus_dma_tag_create(i32 %53, i32 1, i32 0, i32 %54, i32 %55, i32* null, i32* null, i32 %58, i32 %59, i32 4096, i32 0, i32* null, i32* null, i32* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %50
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %480

70:                                               ; preds = %50
  %71 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %72 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @RL_FLAG_JUMBOV2, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %70
  %78 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %79 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %82 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %83 = load i32, i32* @MJUM9BYTES, align 4
  %84 = load i32, i32* @MJUM9BYTES, align 4
  %85 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %86 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 12
  %88 = call i32 @bus_dma_tag_create(i32 %80, i32 4, i32 0, i32 %81, i32 %82, i32* null, i32* null, i32 %83, i32 1, i32 %84, i32 0, i32* null, i32* null, i32* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %77
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @device_printf(i32 %92, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %3, align 4
  br label %480

95:                                               ; preds = %77
  br label %96

96:                                               ; preds = %95, %70
  %97 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %98 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %101 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %102 = load i32, i32* @MCLBYTES, align 4
  %103 = load i32, i32* @MCLBYTES, align 4
  %104 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %105 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 9
  %107 = call i32 @bus_dma_tag_create(i32 %99, i32 4, i32 0, i32 %100, i32 %101, i32* null, i32* null, i32 %102, i32 1, i32 %103, i32 0, i32* null, i32* null, i32* %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %96
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @device_printf(i32 %111, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %3, align 4
  br label %480

114:                                              ; preds = %96
  %115 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %116 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @RL_RING_ALIGN, align 4
  %119 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %120 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %124 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 21
  %126 = call i32 @bus_dma_tag_create(i32 %117, i32 %118, i32 0, i32 %119, i32 %120, i32* null, i32* null, i32 %121, i32 1, i32 %122, i32 0, i32* null, i32* null, i32* %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %114
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @device_printf(i32 %130, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %132 = load i32, i32* %9, align 4
  store i32 %132, i32* %3, align 4
  br label %480

133:                                              ; preds = %114
  %134 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %135 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 21
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %139 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 19
  %141 = bitcast i32* %140 to i8**
  %142 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %143 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @BUS_DMA_ZERO, align 4
  %146 = or i32 %144, %145
  %147 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %148 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 20
  %150 = call i32 @bus_dmamem_alloc(i32 %137, i8** %141, i32 %146, i32* %149)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %133
  %154 = load i32, i32* %4, align 4
  %155 = call i32 @device_printf(i32 %154, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %156 = load i32, i32* %9, align 4
  store i32 %156, i32* %3, align 4
  br label %480

157:                                              ; preds = %133
  %158 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %159 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 2
  store i64 0, i64* %160, align 8
  %161 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %162 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 21
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %166 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 20
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %170 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 19
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @re_dma_map_addr, align 4
  %175 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %176 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 2
  %178 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %179 = call i32 @bus_dmamap_load(i32 %164, i32 %168, i32 %172, i32 %173, i32 %174, i64* %177, i32 %178)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %157
  %183 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %184 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %182, %157
  %189 = load i32, i32* %4, align 4
  %190 = call i32 @device_printf(i32 %189, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %191 = load i32, i32* @ENOMEM, align 4
  store i32 %191, i32* %3, align 4
  br label %480

192:                                              ; preds = %182
  store i32 0, i32* %10, align 4
  br label %193

193:                                              ; preds = %221, %192
  %194 = load i32, i32* %10, align 4
  %195 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %196 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = icmp slt i32 %194, %198
  br i1 %199, label %200, label %224

200:                                              ; preds = %193
  %201 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %202 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 18
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %206 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 17
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %207, align 8
  %209 = load i32, i32* %10, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = call i32 @bus_dmamap_create(i32 %204, i32 0, i32* %212)
  store i32 %213, i32* %9, align 4
  %214 = load i32, i32* %9, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %200
  %217 = load i32, i32* %4, align 4
  %218 = call i32 @device_printf(i32 %217, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %219 = load i32, i32* %9, align 4
  store i32 %219, i32* %3, align 4
  br label %480

220:                                              ; preds = %200
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %10, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %10, align 4
  br label %193

224:                                              ; preds = %193
  %225 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %226 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @RL_RING_ALIGN, align 4
  %229 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %230 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %231 = load i32, i32* %7, align 4
  %232 = load i32, i32* %7, align 4
  %233 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %234 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 16
  %236 = call i32 @bus_dma_tag_create(i32 %227, i32 %228, i32 0, i32 %229, i32 %230, i32* null, i32* null, i32 %231, i32 1, i32 %232, i32 0, i32* null, i32* null, i32* %235)
  store i32 %236, i32* %9, align 4
  %237 = load i32, i32* %9, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %224
  %240 = load i32, i32* %4, align 4
  %241 = call i32 @device_printf(i32 %240, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %242 = load i32, i32* %9, align 4
  store i32 %242, i32* %3, align 4
  br label %480

243:                                              ; preds = %224
  %244 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %245 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 16
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %249 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 14
  %251 = bitcast i32* %250 to i8**
  %252 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %253 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %254 = or i32 %252, %253
  %255 = load i32, i32* @BUS_DMA_ZERO, align 4
  %256 = or i32 %254, %255
  %257 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %258 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 15
  %260 = call i32 @bus_dmamem_alloc(i32 %247, i8** %251, i32 %256, i32* %259)
  store i32 %260, i32* %9, align 4
  %261 = load i32, i32* %9, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %243
  %264 = load i32, i32* %4, align 4
  %265 = call i32 @device_printf(i32 %264, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %266 = load i32, i32* %9, align 4
  store i32 %266, i32* %3, align 4
  br label %480

267:                                              ; preds = %243
  %268 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %269 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 3
  store i64 0, i64* %270, align 8
  %271 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %272 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 16
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %276 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 15
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %280 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 14
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* %7, align 4
  %284 = load i32, i32* @re_dma_map_addr, align 4
  %285 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %286 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 3
  %288 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %289 = call i32 @bus_dmamap_load(i32 %274, i32 %278, i32 %282, i32 %283, i32 %284, i64* %287, i32 %288)
  store i32 %289, i32* %9, align 4
  %290 = load i32, i32* %9, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %298, label %292

292:                                              ; preds = %267
  %293 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %294 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 3
  %296 = load i64, i64* %295, align 8
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %298, label %302

298:                                              ; preds = %292, %267
  %299 = load i32, i32* %4, align 4
  %300 = call i32 @device_printf(i32 %299, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %301 = load i32, i32* @ENOMEM, align 4
  store i32 %301, i32* %3, align 4
  br label %480

302:                                              ; preds = %292
  %303 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %304 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @RL_FLAG_JUMBOV2, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %357

309:                                              ; preds = %302
  %310 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %311 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 12
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %315 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 13
  %317 = call i32 @bus_dmamap_create(i32 %313, i32 0, i32* %316)
  store i32 %317, i32* %9, align 4
  %318 = load i32, i32* %9, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %309
  %321 = load i32, i32* %4, align 4
  %322 = call i32 @device_printf(i32 %321, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  %323 = load i32, i32* %9, align 4
  store i32 %323, i32* %3, align 4
  br label %480

324:                                              ; preds = %309
  store i32 0, i32* %10, align 4
  br label %325

325:                                              ; preds = %353, %324
  %326 = load i32, i32* %10, align 4
  %327 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %328 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = icmp slt i32 %326, %330
  br i1 %331, label %332, label %356

332:                                              ; preds = %325
  %333 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %334 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %333, i32 0, i32 1
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 12
  %336 = load i32, i32* %335, align 8
  %337 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %338 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i32 0, i32 11
  %340 = load %struct.TYPE_6__*, %struct.TYPE_6__** %339, align 8
  %341 = load i32, i32* %10, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 0
  %345 = call i32 @bus_dmamap_create(i32 %336, i32 0, i32* %344)
  store i32 %345, i32* %9, align 4
  %346 = load i32, i32* %9, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %352

348:                                              ; preds = %332
  %349 = load i32, i32* %4, align 4
  %350 = call i32 @device_printf(i32 %349, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  %351 = load i32, i32* %9, align 4
  store i32 %351, i32* %3, align 4
  br label %480

352:                                              ; preds = %332
  br label %353

353:                                              ; preds = %352
  %354 = load i32, i32* %10, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %10, align 4
  br label %325

356:                                              ; preds = %325
  br label %357

357:                                              ; preds = %356, %302
  %358 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %359 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %359, i32 0, i32 9
  %361 = load i32, i32* %360, align 8
  %362 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %363 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %363, i32 0, i32 10
  %365 = call i32 @bus_dmamap_create(i32 %361, i32 0, i32* %364)
  store i32 %365, i32* %9, align 4
  %366 = load i32, i32* %9, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %357
  %369 = load i32, i32* %4, align 4
  %370 = call i32 @device_printf(i32 %369, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  %371 = load i32, i32* %9, align 4
  store i32 %371, i32* %3, align 4
  br label %480

372:                                              ; preds = %357
  store i32 0, i32* %10, align 4
  br label %373

373:                                              ; preds = %401, %372
  %374 = load i32, i32* %10, align 4
  %375 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %376 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = icmp slt i32 %374, %378
  br i1 %379, label %380, label %404

380:                                              ; preds = %373
  %381 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %382 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %382, i32 0, i32 9
  %384 = load i32, i32* %383, align 8
  %385 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %386 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %386, i32 0, i32 8
  %388 = load %struct.TYPE_7__*, %struct.TYPE_7__** %387, align 8
  %389 = load i32, i32* %10, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %388, i64 %390
  %392 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %391, i32 0, i32 0
  %393 = call i32 @bus_dmamap_create(i32 %384, i32 0, i32* %392)
  store i32 %393, i32* %9, align 4
  %394 = load i32, i32* %9, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %400

396:                                              ; preds = %380
  %397 = load i32, i32* %4, align 4
  %398 = call i32 @device_printf(i32 %397, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0))
  %399 = load i32, i32* %9, align 4
  store i32 %399, i32* %3, align 4
  br label %480

400:                                              ; preds = %380
  br label %401

401:                                              ; preds = %400
  %402 = load i32, i32* %10, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %10, align 4
  br label %373

404:                                              ; preds = %373
  %405 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %406 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %405, i32 0, i32 2
  %407 = load i32, i32* %406, align 8
  %408 = load i32, i32* @RL_DUMP_ALIGN, align 4
  %409 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %410 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %411 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %412 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %411, i32 0, i32 1
  %413 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %412, i32 0, i32 7
  %414 = call i32 @bus_dma_tag_create(i32 %407, i32 %408, i32 0, i32 %409, i32 %410, i32* null, i32* null, i32 4, i32 1, i32 4, i32 0, i32* null, i32* null, i32* %413)
  store i32 %414, i32* %9, align 4
  %415 = load i32, i32* %9, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %421

417:                                              ; preds = %404
  %418 = load i32, i32* %4, align 4
  %419 = call i32 @device_printf(i32 %418, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0))
  %420 = load i32, i32* %9, align 4
  store i32 %420, i32* %3, align 4
  br label %480

421:                                              ; preds = %404
  %422 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %423 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %422, i32 0, i32 1
  %424 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %423, i32 0, i32 7
  %425 = load i32, i32* %424, align 8
  %426 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %427 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %426, i32 0, i32 1
  %428 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %427, i32 0, i32 5
  %429 = bitcast i32* %428 to i8**
  %430 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %431 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %432 = or i32 %430, %431
  %433 = load i32, i32* @BUS_DMA_ZERO, align 4
  %434 = or i32 %432, %433
  %435 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %436 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %435, i32 0, i32 1
  %437 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %436, i32 0, i32 6
  %438 = call i32 @bus_dmamem_alloc(i32 %425, i8** %429, i32 %434, i32* %437)
  store i32 %438, i32* %9, align 4
  %439 = load i32, i32* %9, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %445

441:                                              ; preds = %421
  %442 = load i32, i32* %4, align 4
  %443 = call i32 @device_printf(i32 %442, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0))
  %444 = load i32, i32* %9, align 4
  store i32 %444, i32* %3, align 4
  br label %480

445:                                              ; preds = %421
  %446 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %447 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %446, i32 0, i32 1
  %448 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %447, i32 0, i32 4
  store i64 0, i64* %448, align 8
  %449 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %450 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %449, i32 0, i32 1
  %451 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %450, i32 0, i32 7
  %452 = load i32, i32* %451, align 8
  %453 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %454 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %453, i32 0, i32 1
  %455 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %454, i32 0, i32 6
  %456 = load i32, i32* %455, align 4
  %457 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %458 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %457, i32 0, i32 1
  %459 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %458, i32 0, i32 5
  %460 = load i32, i32* %459, align 8
  %461 = load i32, i32* @re_dma_map_addr, align 4
  %462 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %463 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %462, i32 0, i32 1
  %464 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %463, i32 0, i32 4
  %465 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %466 = call i32 @bus_dmamap_load(i32 %452, i32 %456, i32 %460, i32 4, i32 %461, i64* %464, i32 %465)
  store i32 %466, i32* %9, align 4
  %467 = load i32, i32* %9, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %475, label %469

469:                                              ; preds = %445
  %470 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %471 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %470, i32 0, i32 1
  %472 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %471, i32 0, i32 4
  %473 = load i64, i64* %472, align 8
  %474 = icmp eq i64 %473, 0
  br i1 %474, label %475, label %479

475:                                              ; preds = %469, %445
  %476 = load i32, i32* %4, align 4
  %477 = call i32 @device_printf(i32 %476, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0))
  %478 = load i32, i32* @ENOMEM, align 4
  store i32 %478, i32* %3, align 4
  br label %480

479:                                              ; preds = %469
  store i32 0, i32* %3, align 4
  br label %480

480:                                              ; preds = %479, %475, %441, %417, %396, %368, %348, %320, %298, %263, %239, %216, %188, %153, %129, %110, %91, %66, %46
  %481 = load i32, i32* %3, align 4
  ret i32 %481
}

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, i64*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
