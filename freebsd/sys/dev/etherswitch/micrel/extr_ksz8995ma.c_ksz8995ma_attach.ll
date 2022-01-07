; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/micrel/extr_ksz8995ma.c_ksz8995ma_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/micrel/extr_ksz8995ma.c_ksz8995ma_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz8995ma_softc = type { i32, i32, i32, i32, i32*, i32*, i32*, i32*, i64, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"ksz8995ma\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@KSZ8995MA_MAX_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"cpuport\00", align 1
@ETHERSWITCH_VLAN_PORT = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i32 0, align 4
@M_KSZ8995MA = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KSZ8995MA_GC3 = common dso_local global i32 0, align 4
@KSZ8995MA_VLAN_ENABLE = common dso_local global i32 0, align 4
@KSZ8995MA_CID1 = common dso_local global i32 0, align 4
@KSZ8995MA_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ksz8995ma_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz8995ma_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ksz8995ma_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.ksz8995ma_softc* @device_get_softc(i32 %7)
  store %struct.ksz8995ma_softc* %8, %struct.ksz8995ma_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %11 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %10, i32 0, i32 12
  store i32 %9, i32* %11, align 4
  %12 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %13 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %12, i32 0, i32 11
  %14 = load i32, i32* @MTX_DEF, align 4
  %15 = call i32 @mtx_init(i32* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 %14)
  %16 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %17 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %16, i32 0, i32 10
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_get_desc(i32 %20)
  %22 = call i32 @strlcpy(i32 %19, i32 %21, i32 4)
  %23 = load i32, i32* @KSZ8995MA_MAX_PORT, align 4
  %24 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %25 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @KSZ8995MA_MAX_PORT, align 4
  %27 = add nsw i32 %26, 1
  %28 = shl i32 1, %27
  %29 = sub nsw i32 %28, 1
  %30 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %33 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %32, i32 0, i32 2
  store i32 -1, i32* %33, align 8
  %34 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %35 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %34, i32 0, i32 3
  store i32 100, i32* %35, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @device_get_name(i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @device_get_unit(i32 %38)
  %40 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %41 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %40, i32 0, i32 2
  %42 = call i32 @resource_int_value(i32 %37, i32 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %41)
  %43 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %44 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %43, i32 0, i32 10
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 16, i32* %45, align 4
  %46 = load i32, i32* @ETHERSWITCH_VLAN_PORT, align 4
  %47 = load i32, i32* @ETHERSWITCH_VLAN_DOT1Q, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %50 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %49, i32 0, i32 10
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %53 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = mul i64 8, %55
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* @M_KSZ8995MA, align 4
  %59 = load i32, i32* @M_WAITOK, align 4
  %60 = load i32, i32* @M_ZERO, align 4
  %61 = or i32 %59, %60
  %62 = call i8* @malloc(i32 %57, i32 %58, i32 %61)
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %65 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %64, i32 0, i32 4
  store i32* %63, i32** %65, align 8
  %66 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %67 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = mul i64 8, %69
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* @M_KSZ8995MA, align 4
  %73 = load i32, i32* @M_WAITOK, align 4
  %74 = load i32, i32* @M_ZERO, align 4
  %75 = or i32 %73, %74
  %76 = call i8* @malloc(i32 %71, i32 %72, i32 %75)
  %77 = bitcast i8* %76 to i32*
  %78 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %79 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %78, i32 0, i32 5
  store i32* %77, i32** %79, align 8
  %80 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %81 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = mul i64 8, %83
  %85 = trunc i64 %84 to i32
  %86 = load i32, i32* @M_KSZ8995MA, align 4
  %87 = load i32, i32* @M_WAITOK, align 4
  %88 = load i32, i32* @M_ZERO, align 4
  %89 = or i32 %87, %88
  %90 = call i8* @malloc(i32 %85, i32 %86, i32 %89)
  %91 = bitcast i8* %90 to i32*
  %92 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %93 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %92, i32 0, i32 6
  store i32* %91, i32** %93, align 8
  %94 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %95 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = mul i64 4, %97
  %99 = trunc i64 %98 to i32
  %100 = load i32, i32* @M_KSZ8995MA, align 4
  %101 = load i32, i32* @M_WAITOK, align 4
  %102 = load i32, i32* @M_ZERO, align 4
  %103 = or i32 %101, %102
  %104 = call i8* @malloc(i32 %99, i32 %100, i32 %103)
  %105 = bitcast i8* %104 to i32*
  %106 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %107 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %106, i32 0, i32 7
  store i32* %105, i32** %107, align 8
  %108 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %109 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %127, label %112

112:                                              ; preds = %1
  %113 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %114 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %113, i32 0, i32 5
  %115 = load i32*, i32** %114, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %127, label %117

117:                                              ; preds = %112
  %118 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %119 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %118, i32 0, i32 6
  %120 = load i32*, i32** %119, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %127, label %122

122:                                              ; preds = %117
  %123 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %124 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %123, i32 0, i32 7
  %125 = load i32*, i32** %124, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %122, %117, %112, %1
  %128 = load i32, i32* @ENOMEM, align 4
  store i32 %128, i32* %5, align 4
  br label %169

129:                                              ; preds = %122
  %130 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %131 = call i32 @ksz8995ma_attach_phys(%struct.ksz8995ma_softc* %130)
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %169

135:                                              ; preds = %129
  %136 = load i32, i32* %3, align 4
  %137 = call i32 @bus_generic_probe(i32 %136)
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @bus_enumerate_hinted_children(i32 %138)
  %140 = load i32, i32* %3, align 4
  %141 = call i32 @bus_generic_attach(i32 %140)
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  br label %169

145:                                              ; preds = %135
  %146 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %147 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %146, i32 0, i32 9
  %148 = call i32 @callout_init(i32* %147, i32 0)
  %149 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %150 = call i32 @ksz8995ma_tick(%struct.ksz8995ma_softc* %149)
  %151 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %152 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %151, i32 0, i32 8
  store i64 0, i64* %152, align 8
  %153 = load i32, i32* %3, align 4
  %154 = load i32, i32* @KSZ8995MA_GC3, align 4
  %155 = call i32 @ksz8995ma_readreg(i32 %153, i32 %154)
  store i32 %155, i32* %6, align 4
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* @KSZ8995MA_GC3, align 4
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @KSZ8995MA_VLAN_ENABLE, align 4
  %160 = xor i32 %159, -1
  %161 = and i32 %158, %160
  %162 = call i32 @ksz8995ma_writereg(i32 %156, i32 %157, i32 %161)
  %163 = load i32, i32* %3, align 4
  %164 = call i32 @ksz8995ma_portvlanreset(i32 %163)
  %165 = load i32, i32* %3, align 4
  %166 = load i32, i32* @KSZ8995MA_CID1, align 4
  %167 = load i32, i32* @KSZ8995MA_START, align 4
  %168 = call i32 @ksz8995ma_writereg(i32 %165, i32 %166, i32 %167)
  store i32 0, i32* %2, align 4
  br label %215

169:                                              ; preds = %144, %134, %127
  %170 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %171 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %170, i32 0, i32 7
  %172 = load i32*, i32** %171, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %176 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %175, i32 0, i32 7
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* @M_KSZ8995MA, align 4
  %179 = call i32 @free(i32* %177, i32 %178)
  br label %180

180:                                              ; preds = %174, %169
  %181 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %182 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %181, i32 0, i32 6
  %183 = load i32*, i32** %182, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %187 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %186, i32 0, i32 6
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* @M_KSZ8995MA, align 4
  %190 = call i32 @free(i32* %188, i32 %189)
  br label %191

191:                                              ; preds = %185, %180
  %192 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %193 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %192, i32 0, i32 5
  %194 = load i32*, i32** %193, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %196, label %202

196:                                              ; preds = %191
  %197 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %198 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %197, i32 0, i32 5
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* @M_KSZ8995MA, align 4
  %201 = call i32 @free(i32* %199, i32 %200)
  br label %202

202:                                              ; preds = %196, %191
  %203 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %204 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %203, i32 0, i32 4
  %205 = load i32*, i32** %204, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %213

207:                                              ; preds = %202
  %208 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %4, align 8
  %209 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %208, i32 0, i32 4
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* @M_KSZ8995MA, align 4
  %212 = call i32 @free(i32* %210, i32 %211)
  br label %213

213:                                              ; preds = %207, %202
  %214 = load i32, i32* %5, align 4
  store i32 %214, i32* %2, align 4
  br label %215

215:                                              ; preds = %213, %145
  %216 = load i32, i32* %2, align 4
  ret i32 %216
}

declare dso_local %struct.ksz8995ma_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @device_get_desc(i32) #1

declare dso_local i32 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @ksz8995ma_attach_phys(%struct.ksz8995ma_softc*) #1

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i32 @bus_enumerate_hinted_children(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @ksz8995ma_tick(%struct.ksz8995ma_softc*) #1

declare dso_local i32 @ksz8995ma_readreg(i32, i32) #1

declare dso_local i32 @ksz8995ma_writereg(i32, i32, i32) #1

declare dso_local i32 @ksz8995ma_portvlanreset(i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
