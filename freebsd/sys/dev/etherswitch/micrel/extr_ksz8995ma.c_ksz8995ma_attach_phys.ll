; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/micrel/extr_ksz8995ma.c_ksz8995ma_attach_phys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/micrel/extr_ksz8995ma.c_ksz8995ma_attach_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz8995ma_softc = type { i32, i32, i32, i32*, i32*, i32**, i32**, %struct.TYPE_7__**, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, %struct.ksz8995ma_softc* }
%struct.TYPE_6__ = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%sport\00", align 1
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"couldn't allocate ifnet structure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@M_KSZ8995MA = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ksz8995ma_ifmedia_upd = common dso_local global i32 0, align 4
@ksz8995ma_ifmedia_sts = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"%s attached to pseudo interface %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"attaching PHY %d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksz8995ma_softc*)* @ksz8995ma_attach_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz8995ma_attach_phys(%struct.ksz8995ma_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ksz8995ma_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ksz8995ma_softc* %0, %struct.ksz8995ma_softc** %3, align 8
  %10 = load i32, i32* @IFNAMSIZ, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %14 = load i32, i32* @IFNAMSIZ, align 4
  %15 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @device_get_nameunit(i32 %17)
  %19 = call i32 @snprintf(i8* %13, i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %193, %1
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %196

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %29 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %193

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  %35 = shl i32 1, %34
  %36 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %37 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %35, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %193

42:                                               ; preds = %33
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %45 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %43, i32* %49, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %52 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %50, i32* %56, align 4
  %57 = load i32, i32* @IFT_ETHER, align 4
  %58 = call %struct.TYPE_7__* @if_alloc(i32 %57)
  %59 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %60 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %59, i32 0, i32 7
  %61 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %61, i64 %63
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %64, align 8
  %65 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %66 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %65, i32 0, i32 7
  %67 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %67, i64 %69
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = icmp eq %struct.TYPE_7__* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %42
  %74 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %75 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i32, i8*, ...) @device_printf(i32 %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @ENOMEM, align 4
  store i32 %78, i32* %6, align 4
  br label %196

79:                                               ; preds = %42
  %80 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %81 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %82 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %81, i32 0, i32 7
  %83 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %83, i64 %85
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  store %struct.ksz8995ma_softc* %80, %struct.ksz8995ma_softc** %88, align 8
  %89 = load i32, i32* @IFF_UP, align 4
  %90 = load i32, i32* @IFF_BROADCAST, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @IFF_SIMPLEX, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %97 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %96, i32 0, i32 7
  %98 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %98, i64 %100
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %95
  store i32 %105, i32* %103, align 8
  %106 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %107 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %106, i32 0, i32 7
  %108 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %108, i64 %110
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @if_initname(%struct.TYPE_7__* %112, i8* %13, i32 %113)
  %115 = load i32, i32* @M_KSZ8995MA, align 4
  %116 = load i32, i32* @M_WAITOK, align 4
  %117 = load i32, i32* @M_ZERO, align 4
  %118 = or i32 %116, %117
  %119 = call i32* @malloc(i32 4, i32 %115, i32 %118)
  %120 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %121 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %120, i32 0, i32 5
  %122 = load i32**, i32*** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  store i32* %119, i32** %125, align 8
  %126 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %127 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %126, i32 0, i32 5
  %128 = load i32**, i32*** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %128, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %79
  %135 = load i32, i32* @ENOMEM, align 4
  store i32 %135, i32* %6, align 4
  br label %230

136:                                              ; preds = %79
  %137 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %138 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %141 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %140, i32 0, i32 5
  %142 = load i32**, i32*** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32*, i32** %142, i64 %144
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %148 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %147, i32 0, i32 7
  %149 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %149, i64 %151
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = load i32, i32* @ksz8995ma_ifmedia_upd, align 4
  %155 = load i32, i32* @ksz8995ma_ifmedia_sts, align 4
  %156 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* @MII_OFFSET_ANY, align 4
  %159 = call i32 @mii_attach(i32 %139, i32* %146, %struct.TYPE_7__* %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 0)
  store i32 %159, i32* %6, align 4
  %160 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %161 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %160, i32 0, i32 8
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %164 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %163, i32 0, i32 5
  %165 = load i32**, i32*** %164, align 8
  %166 = load i32, i32* %5, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32*, i32** %165, i64 %167
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %169, align 4
  %171 = call i8* @device_get_nameunit(i32 %170)
  %172 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %173 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %172, i32 0, i32 7
  %174 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %173, align 8
  %175 = load i32, i32* %5, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %174, i64 %176
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @DPRINTF(i32 %162, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %171, i32 %180)
  %182 = load i32, i32* %6, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %136
  %185 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %186 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %185, i32 0, i32 8
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %4, align 4
  %189 = call i32 (i32, i8*, ...) @device_printf(i32 %187, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %188)
  br label %230

190:                                              ; preds = %136
  %191 = load i32, i32* %5, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %5, align 4
  br label %193

193:                                              ; preds = %190, %41, %32
  %194 = load i32, i32* %4, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %4, align 4
  br label %20

196:                                              ; preds = %73, %20
  %197 = load i32, i32* %5, align 4
  %198 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %199 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %198, i32 0, i32 9
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  store i32 %197, i32* %200, align 4
  %201 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %202 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %203, -1
  br i1 %204, label %205, label %229

205:                                              ; preds = %196
  %206 = load i32, i32* %5, align 4
  %207 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %208 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %207, i32 0, i32 3
  %209 = load i32*, i32** %208, align 8
  %210 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %211 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %209, i64 %213
  store i32 %206, i32* %214, align 4
  %215 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %216 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %219 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %218, i32 0, i32 4
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %5, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  store i32 %217, i32* %223, align 4
  %224 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %225 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %224, i32 0, i32 9
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %205, %196
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %333

230:                                              ; preds = %184, %134
  store i32 0, i32* %4, align 4
  br label %231

231:                                              ; preds = %328, %230
  %232 = load i32, i32* %4, align 4
  %233 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %234 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = icmp slt i32 %232, %235
  br i1 %236, label %237, label %331

237:                                              ; preds = %231
  %238 = load i32, i32* %4, align 4
  %239 = shl i32 1, %238
  %240 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %241 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = and i32 %239, %242
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %237
  br label %328

246:                                              ; preds = %237
  %247 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %248 = load i32, i32* %4, align 4
  %249 = call i32 @ksz8995ma_portforphy(%struct.ksz8995ma_softc* %247, i32 %248)
  store i32 %249, i32* %5, align 4
  %250 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %251 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %250, i32 0, i32 5
  %252 = load i32**, i32*** %251, align 8
  %253 = load i32, i32* %5, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32*, i32** %252, i64 %254
  %256 = load i32*, i32** %255, align 8
  %257 = icmp ne i32* %256, null
  br i1 %257, label %258, label %271

258:                                              ; preds = %246
  %259 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %260 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %259, i32 0, i32 8
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %263 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %262, i32 0, i32 5
  %264 = load i32**, i32*** %263, align 8
  %265 = load i32, i32* %5, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32*, i32** %264, i64 %266
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @device_delete_child(i32 %261, i32 %269)
  br label %271

271:                                              ; preds = %258, %246
  %272 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %273 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %272, i32 0, i32 7
  %274 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %273, align 8
  %275 = load i32, i32* %5, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %274, i64 %276
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %277, align 8
  %279 = icmp ne %struct.TYPE_7__* %278, null
  br i1 %279, label %280, label %289

280:                                              ; preds = %271
  %281 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %282 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %281, i32 0, i32 7
  %283 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %282, align 8
  %284 = load i32, i32* %5, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %283, i64 %285
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %286, align 8
  %288 = call i32 @if_free(%struct.TYPE_7__* %287)
  br label %289

289:                                              ; preds = %280, %271
  %290 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %291 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %290, i32 0, i32 6
  %292 = load i32**, i32*** %291, align 8
  %293 = load i32, i32* %5, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32*, i32** %292, i64 %294
  %296 = load i32*, i32** %295, align 8
  %297 = icmp ne i32* %296, null
  br i1 %297, label %298, label %308

298:                                              ; preds = %289
  %299 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %300 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %299, i32 0, i32 6
  %301 = load i32**, i32*** %300, align 8
  %302 = load i32, i32* %5, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32*, i32** %301, i64 %303
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* @M_KSZ8995MA, align 4
  %307 = call i32 @free(i32* %305, i32 %306)
  br label %308

308:                                              ; preds = %298, %289
  %309 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %310 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %309, i32 0, i32 5
  %311 = load i32**, i32*** %310, align 8
  %312 = load i32, i32* %5, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32*, i32** %311, i64 %313
  %315 = load i32*, i32** %314, align 8
  %316 = icmp ne i32* %315, null
  br i1 %316, label %317, label %327

317:                                              ; preds = %308
  %318 = load %struct.ksz8995ma_softc*, %struct.ksz8995ma_softc** %3, align 8
  %319 = getelementptr inbounds %struct.ksz8995ma_softc, %struct.ksz8995ma_softc* %318, i32 0, i32 5
  %320 = load i32**, i32*** %319, align 8
  %321 = load i32, i32* %5, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32*, i32** %320, i64 %322
  %324 = load i32*, i32** %323, align 8
  %325 = load i32, i32* @M_KSZ8995MA, align 4
  %326 = call i32 @free(i32* %324, i32 %325)
  br label %327

327:                                              ; preds = %317, %308
  br label %328

328:                                              ; preds = %327, %245
  %329 = load i32, i32* %4, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %4, align 4
  br label %231

331:                                              ; preds = %231
  %332 = load i32, i32* %6, align 4
  store i32 %332, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %333

333:                                              ; preds = %331, %229
  %334 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %334)
  %335 = load i32, i32* %2, align 4
  ret i32 %335
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @device_get_nameunit(i32) #2

declare dso_local %struct.TYPE_7__* @if_alloc(i32) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i32 @if_initname(%struct.TYPE_7__*, i8*, i32) #2

declare dso_local i32* @malloc(i32, i32, i32) #2

declare dso_local i32 @mii_attach(i32, i32*, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @DPRINTF(i32, i8*, i8*, i32) #2

declare dso_local i32 @ksz8995ma_portforphy(%struct.ksz8995ma_softc*, i32) #2

declare dso_local i32 @device_delete_child(i32, i32) #2

declare dso_local i32 @if_free(%struct.TYPE_7__*) #2

declare dso_local i32 @free(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
