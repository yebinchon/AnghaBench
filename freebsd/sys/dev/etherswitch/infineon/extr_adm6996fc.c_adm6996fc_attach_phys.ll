; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/infineon/extr_adm6996fc.c_adm6996fc_attach_phys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/infineon/extr_adm6996fc.c_adm6996fc_attach_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm6996fc_softc = type { i32, i32, i32*, i32*, i32, i32**, i32**, %struct.TYPE_7__**, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, %struct.adm6996fc_softc* }
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
@M_ADM6996FC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@adm6996fc_ifmedia_upd = common dso_local global i32 0, align 4
@adm6996fc_ifmedia_sts = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"%s attached to pseudo interface %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"attaching PHY %d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adm6996fc_softc*)* @adm6996fc_attach_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm6996fc_attach_phys(%struct.adm6996fc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adm6996fc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.adm6996fc_softc* %0, %struct.adm6996fc_softc** %3, align 8
  %10 = load i32, i32* @IFNAMSIZ, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %14 = load i32, i32* @IFNAMSIZ, align 4
  %15 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %16 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @device_get_nameunit(i32 %17)
  %19 = call i32 @snprintf(i8* %13, i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %186, %1
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %23 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %189

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = shl i32 1, %27
  %29 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %30 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %28, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %186

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %38 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %36, i32* %42, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %45 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %43, i32* %49, align 4
  %50 = load i32, i32* @IFT_ETHER, align 4
  %51 = call %struct.TYPE_7__* @if_alloc(i32 %50)
  %52 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %53 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %52, i32 0, i32 7
  %54 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %54, i64 %56
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %57, align 8
  %58 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %59 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %58, i32 0, i32 7
  %60 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %60, i64 %62
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = icmp eq %struct.TYPE_7__* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %35
  %67 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %68 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32, i8*, ...) @device_printf(i32 %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @ENOMEM, align 4
  store i32 %71, i32* %6, align 4
  br label %189

72:                                               ; preds = %35
  %73 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %74 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %75 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %74, i32 0, i32 7
  %76 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %76, i64 %78
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  store %struct.adm6996fc_softc* %73, %struct.adm6996fc_softc** %81, align 8
  %82 = load i32, i32* @IFF_UP, align 4
  %83 = load i32, i32* @IFF_BROADCAST, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @IFF_SIMPLEX, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %90 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %89, i32 0, i32 7
  %91 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %91, i64 %93
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %88
  store i32 %98, i32* %96, align 8
  %99 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %100 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %99, i32 0, i32 7
  %101 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %101, i64 %103
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @if_initname(%struct.TYPE_7__* %105, i8* %13, i32 %106)
  %108 = load i32, i32* @M_ADM6996FC, align 4
  %109 = load i32, i32* @M_WAITOK, align 4
  %110 = load i32, i32* @M_ZERO, align 4
  %111 = or i32 %109, %110
  %112 = call i32* @malloc(i32 4, i32 %108, i32 %111)
  %113 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %114 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %113, i32 0, i32 5
  %115 = load i32**, i32*** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  store i32* %112, i32** %118, align 8
  %119 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %120 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %119, i32 0, i32 5
  %121 = load i32**, i32*** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %72
  %128 = load i32, i32* @ENOMEM, align 4
  store i32 %128, i32* %6, align 4
  br label %223

129:                                              ; preds = %72
  %130 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %131 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %130, i32 0, i32 8
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %134 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %133, i32 0, i32 5
  %135 = load i32**, i32*** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32*, i32** %135, i64 %137
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %141 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %140, i32 0, i32 7
  %142 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %142, i64 %144
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = load i32, i32* @adm6996fc_ifmedia_upd, align 4
  %148 = load i32, i32* @adm6996fc_ifmedia_sts, align 4
  %149 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @MII_OFFSET_ANY, align 4
  %152 = call i32 @mii_attach(i32 %132, i32* %139, %struct.TYPE_7__* %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 0)
  store i32 %152, i32* %6, align 4
  %153 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %154 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %153, i32 0, i32 8
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %157 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %156, i32 0, i32 5
  %158 = load i32**, i32*** %157, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32*, i32** %158, i64 %160
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %162, align 4
  %164 = call i8* @device_get_nameunit(i32 %163)
  %165 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %166 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %165, i32 0, i32 7
  %167 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %166, align 8
  %168 = load i32, i32* %5, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %167, i64 %169
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @DPRINTF(i32 %155, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %164, i32 %173)
  %175 = load i32, i32* %6, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %129
  %178 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %179 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %178, i32 0, i32 8
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %4, align 4
  %182 = call i32 (i32, i8*, ...) @device_printf(i32 %180, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %181)
  br label %223

183:                                              ; preds = %129
  %184 = load i32, i32* %5, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %5, align 4
  br label %186

186:                                              ; preds = %183, %34
  %187 = load i32, i32* %4, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %4, align 4
  br label %20

189:                                              ; preds = %66, %20
  %190 = load i32, i32* %5, align 4
  %191 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %192 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %191, i32 0, i32 9
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  store i32 %190, i32* %193, align 4
  %194 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %195 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, -1
  br i1 %197, label %198, label %222

198:                                              ; preds = %189
  %199 = load i32, i32* %5, align 4
  %200 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %201 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %200, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %204 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %202, i64 %206
  store i32 %199, i32* %207, align 4
  %208 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %209 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %212 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %211, i32 0, i32 3
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %5, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 %210, i32* %216, align 4
  %217 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %218 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %217, i32 0, i32 9
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %219, align 4
  br label %222

222:                                              ; preds = %198, %189
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %326

223:                                              ; preds = %177, %127
  store i32 0, i32* %4, align 4
  br label %224

224:                                              ; preds = %321, %223
  %225 = load i32, i32* %4, align 4
  %226 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %227 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp slt i32 %225, %228
  br i1 %229, label %230, label %324

230:                                              ; preds = %224
  %231 = load i32, i32* %4, align 4
  %232 = shl i32 1, %231
  %233 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %234 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = and i32 %232, %235
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %230
  br label %321

239:                                              ; preds = %230
  %240 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %241 = load i32, i32* %4, align 4
  %242 = call i32 @adm6996fc_portforphy(%struct.adm6996fc_softc* %240, i32 %241)
  store i32 %242, i32* %5, align 4
  %243 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %244 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %243, i32 0, i32 5
  %245 = load i32**, i32*** %244, align 8
  %246 = load i32, i32* %5, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32*, i32** %245, i64 %247
  %249 = load i32*, i32** %248, align 8
  %250 = icmp ne i32* %249, null
  br i1 %250, label %251, label %264

251:                                              ; preds = %239
  %252 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %253 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %252, i32 0, i32 8
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %256 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %255, i32 0, i32 5
  %257 = load i32**, i32*** %256, align 8
  %258 = load i32, i32* %5, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32*, i32** %257, i64 %259
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @device_delete_child(i32 %254, i32 %262)
  br label %264

264:                                              ; preds = %251, %239
  %265 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %266 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %265, i32 0, i32 7
  %267 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %266, align 8
  %268 = load i32, i32* %5, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %267, i64 %269
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %270, align 8
  %272 = icmp ne %struct.TYPE_7__* %271, null
  br i1 %272, label %273, label %282

273:                                              ; preds = %264
  %274 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %275 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %274, i32 0, i32 7
  %276 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %275, align 8
  %277 = load i32, i32* %5, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %276, i64 %278
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** %279, align 8
  %281 = call i32 @if_free(%struct.TYPE_7__* %280)
  br label %282

282:                                              ; preds = %273, %264
  %283 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %284 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %283, i32 0, i32 6
  %285 = load i32**, i32*** %284, align 8
  %286 = load i32, i32* %5, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32*, i32** %285, i64 %287
  %289 = load i32*, i32** %288, align 8
  %290 = icmp ne i32* %289, null
  br i1 %290, label %291, label %301

291:                                              ; preds = %282
  %292 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %293 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %292, i32 0, i32 6
  %294 = load i32**, i32*** %293, align 8
  %295 = load i32, i32* %5, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32*, i32** %294, i64 %296
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* @M_ADM6996FC, align 4
  %300 = call i32 @free(i32* %298, i32 %299)
  br label %301

301:                                              ; preds = %291, %282
  %302 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %303 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %302, i32 0, i32 5
  %304 = load i32**, i32*** %303, align 8
  %305 = load i32, i32* %5, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32*, i32** %304, i64 %306
  %308 = load i32*, i32** %307, align 8
  %309 = icmp ne i32* %308, null
  br i1 %309, label %310, label %320

310:                                              ; preds = %301
  %311 = load %struct.adm6996fc_softc*, %struct.adm6996fc_softc** %3, align 8
  %312 = getelementptr inbounds %struct.adm6996fc_softc, %struct.adm6996fc_softc* %311, i32 0, i32 5
  %313 = load i32**, i32*** %312, align 8
  %314 = load i32, i32* %5, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32*, i32** %313, i64 %315
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* @M_ADM6996FC, align 4
  %319 = call i32 @free(i32* %317, i32 %318)
  br label %320

320:                                              ; preds = %310, %301
  br label %321

321:                                              ; preds = %320, %238
  %322 = load i32, i32* %4, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %4, align 4
  br label %224

324:                                              ; preds = %224
  %325 = load i32, i32* %6, align 4
  store i32 %325, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %326

326:                                              ; preds = %324, %222
  %327 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %327)
  %328 = load i32, i32* %2, align 4
  ret i32 %328
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

declare dso_local i32 @adm6996fc_portforphy(%struct.adm6996fc_softc*, i32) #2

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
