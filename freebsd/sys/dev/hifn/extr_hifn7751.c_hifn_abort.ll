; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_abort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.hifn_softc = type { i32, i32, i32, %struct.hifn_command**, %struct.hifn_dma* }
%struct.hifn_command = type { i32, i64, i64, i64, i64, %struct.cryptop* }
%struct.cryptop = type { i64, i64 }
%struct.hifn_dma = type { i32**, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"hifn_abort: null command slot %u\00", align 1
@HIFN_D_VALID = common dso_local global i32 0, align 4
@HIFN_BASE_CMD_MAC = common dso_local global i32 0, align 4
@hifnstats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i8* null, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i64 0, align 8
@HIFN_D_RES_RSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hifn_softc*)* @hifn_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hifn_abort(%struct.hifn_softc* %0) #0 {
  %2 = alloca %struct.hifn_softc*, align 8
  %3 = alloca %struct.hifn_dma*, align 8
  %4 = alloca %struct.hifn_command*, align 8
  %5 = alloca %struct.cryptop*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.hifn_softc* %0, %struct.hifn_softc** %2, align 8
  %9 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %10 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %9, i32 0, i32 4
  %11 = load %struct.hifn_dma*, %struct.hifn_dma** %10, align 8
  store %struct.hifn_dma* %11, %struct.hifn_dma** %3, align 8
  %12 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %13 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %16 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %201, %1
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %204

21:                                               ; preds = %18
  %22 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %23 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %22, i32 0, i32 3
  %24 = load %struct.hifn_command**, %struct.hifn_command*** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.hifn_command*, %struct.hifn_command** %24, i64 %26
  %28 = load %struct.hifn_command*, %struct.hifn_command** %27, align 8
  store %struct.hifn_command* %28, %struct.hifn_command** %4, align 8
  %29 = load %struct.hifn_command*, %struct.hifn_command** %4, align 8
  %30 = icmp ne %struct.hifn_command* %29, null
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @KASSERT(i32 %31, i8* %34)
  %36 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %37 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %36, i32 0, i32 3
  %38 = load %struct.hifn_command**, %struct.hifn_command*** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.hifn_command*, %struct.hifn_command** %38, i64 %40
  store %struct.hifn_command* null, %struct.hifn_command** %41, align 8
  %42 = load %struct.hifn_command*, %struct.hifn_command** %4, align 8
  %43 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %42, i32 0, i32 5
  %44 = load %struct.cryptop*, %struct.cryptop** %43, align 8
  store %struct.cryptop* %44, %struct.cryptop** %5, align 8
  %45 = load %struct.hifn_dma*, %struct.hifn_dma** %3, align 8
  %46 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @HIFN_D_VALID, align 4
  %54 = call i32 @htole32(i32 %53)
  %55 = and i32 %52, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %21
  %58 = load %struct.hifn_command*, %struct.hifn_command** %4, align 8
  %59 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @HIFN_BASE_CMD_MAC, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %57
  %65 = load %struct.hifn_dma*, %struct.hifn_dma** %3, align 8
  %66 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %65, i32 0, i32 0
  %67 = load i32**, i32*** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %8, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 12
  store i32* %73, i32** %8, align 8
  br label %75

74:                                               ; preds = %57
  store i32* null, i32** %8, align 8
  br label %75

75:                                               ; preds = %74, %64
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hifnstats, i32 0, i32 0), align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hifnstats, i32 0, i32 0), align 4
  %78 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %79 = load %struct.hifn_command*, %struct.hifn_command** %4, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @hifn_callback(%struct.hifn_softc* %78, %struct.hifn_command* %79, i32* %80)
  br label %195

82:                                               ; preds = %21
  %83 = load %struct.hifn_command*, %struct.hifn_command** %4, align 8
  %84 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.hifn_command*, %struct.hifn_command** %4, align 8
  %87 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %85, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %82
  %91 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %92 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.hifn_command*, %struct.hifn_command** %4, align 8
  %95 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %98 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @bus_dmamap_sync(i32 %93, i64 %96, i32 %99)
  br label %118

101:                                              ; preds = %82
  %102 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %103 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.hifn_command*, %struct.hifn_command** %4, align 8
  %106 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %109 = call i32 @bus_dmamap_sync(i32 %104, i64 %107, i32 %108)
  %110 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %111 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.hifn_command*, %struct.hifn_command** %4, align 8
  %114 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %117 = call i32 @bus_dmamap_sync(i32 %112, i64 %115, i32 %116)
  br label %118

118:                                              ; preds = %101, %90
  %119 = load %struct.hifn_command*, %struct.hifn_command** %4, align 8
  %120 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.hifn_command*, %struct.hifn_command** %4, align 8
  %123 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %121, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %118
  %127 = load %struct.hifn_command*, %struct.hifn_command** %4, align 8
  %128 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @m_freem(i64 %129)
  %131 = load %struct.hifn_command*, %struct.hifn_command** %4, align 8
  %132 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %135 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %126, %118
  %137 = load %struct.hifn_command*, %struct.hifn_command** %4, align 8
  %138 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.hifn_command*, %struct.hifn_command** %4, align 8
  %141 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %139, %142
  br i1 %143, label %144, label %163

144:                                              ; preds = %136
  %145 = load i8*, i8** @ENOMEM, align 8
  %146 = ptrtoint i8* %145 to i64
  %147 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %148 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  %149 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %150 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.hifn_command*, %struct.hifn_command** %4, align 8
  %153 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @bus_dmamap_unload(i32 %151, i64 %154)
  %156 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %157 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.hifn_command*, %struct.hifn_command** %4, align 8
  %160 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @bus_dmamap_destroy(i32 %158, i64 %161)
  br label %168

163:                                              ; preds = %136
  %164 = load i8*, i8** @ENOMEM, align 8
  %165 = ptrtoint i8* %164 to i64
  %166 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %167 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %166, i32 0, i32 0
  store i64 %165, i64* %167, align 8
  br label %168

168:                                              ; preds = %163, %144
  %169 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %170 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.hifn_command*, %struct.hifn_command** %4, align 8
  %173 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @bus_dmamap_unload(i32 %171, i64 %174)
  %176 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %177 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.hifn_command*, %struct.hifn_command** %4, align 8
  %180 = getelementptr inbounds %struct.hifn_command, %struct.hifn_command* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @bus_dmamap_destroy(i32 %178, i64 %181)
  %183 = load %struct.hifn_command*, %struct.hifn_command** %4, align 8
  %184 = load i32, i32* @M_DEVBUF, align 4
  %185 = call i32 @free(%struct.hifn_command* %183, i32 %184)
  %186 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %187 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @EAGAIN, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %168
  %192 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %193 = call i32 @crypto_done(%struct.cryptop* %192)
  br label %194

194:                                              ; preds = %191, %168
  br label %195

195:                                              ; preds = %194, %75
  %196 = load i32, i32* %6, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %6, align 4
  %198 = load i32, i32* @HIFN_D_RES_RSIZE, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  store i32 0, i32* %6, align 4
  br label %201

201:                                              ; preds = %200, %195
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 %202, -1
  store i32 %203, i32* %7, align 4
  br label %18

204:                                              ; preds = %18
  %205 = load i32, i32* %6, align 4
  %206 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %207 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  %208 = load i32, i32* %7, align 4
  %209 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %210 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %209, i32 0, i32 1
  store i32 %208, i32* %210, align 4
  %211 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %212 = call i32 @hifn_reset_board(%struct.hifn_softc* %211, i32 1)
  %213 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %214 = call i32 @hifn_init_dma(%struct.hifn_softc* %213)
  %215 = load %struct.hifn_softc*, %struct.hifn_softc** %2, align 8
  %216 = call i32 @hifn_init_pci_registers(%struct.hifn_softc* %215)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @hifn_callback(%struct.hifn_softc*, %struct.hifn_command*, i32*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i64, i32) #1

declare dso_local i32 @m_freem(i64) #1

declare dso_local i32 @bus_dmamap_unload(i32, i64) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i64) #1

declare dso_local i32 @free(%struct.hifn_command*, i32) #1

declare dso_local i32 @crypto_done(%struct.cryptop*) #1

declare dso_local i32 @hifn_reset_board(%struct.hifn_softc*, i32) #1

declare dso_local i32 @hifn_init_dma(%struct.hifn_softc*) #1

declare dso_local i32 @hifn_init_pci_registers(%struct.hifn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
