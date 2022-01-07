; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch.c_mtkswitch_attach_phys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/mtkswitch/extr_mtkswitch.c_mtkswitch_attach_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtkswitch_softc = type { i32, i32, %struct.TYPE_4__**, i32**, i32*, i32** }
%struct.TYPE_4__ = type { i32, i32, %struct.mtkswitch_softc* }

@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%sport\00", align 1
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"couldn't allocate ifnet structure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@mtkswitch_ifmedia_upd = common dso_local global i32 0, align 4
@mtkswitch_ifmedia_sts = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"attaching PHY %d failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%s attached to pseudo interface %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtkswitch_softc*)* @mtkswitch_attach_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtkswitch_attach_phys(%struct.mtkswitch_softc* %0) #0 {
  %2 = alloca %struct.mtkswitch_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.mtkswitch_softc* %0, %struct.mtkswitch_softc** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @IFNAMSIZ, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load i32, i32* @IFNAMSIZ, align 4
  %12 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %13 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = call i8* @device_get_nameunit(i32* %14)
  %16 = call i32 @snprintf(i8* %10, i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %191, %1
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %20 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %194

23:                                               ; preds = %17
  %24 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %25 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %3, align 4
  %28 = shl i32 1, %27
  %29 = and i32 %26, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %23
  %32 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %33 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %34, i64 %36
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %37, align 8
  %38 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %39 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %38, i32 0, i32 5
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  store i32* null, i32** %43, align 8
  %44 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %45 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %44, i32 0, i32 3
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  store i32* null, i32** %49, align 8
  br label %191

50:                                               ; preds = %23
  %51 = load i32, i32* @IFT_ETHER, align 4
  %52 = call %struct.TYPE_4__* @if_alloc(i32 %51)
  %53 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %54 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %55, i64 %57
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %58, align 8
  %59 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %60 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %61, i64 %63
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = icmp eq %struct.TYPE_4__* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %50
  %68 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %69 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 (i32*, i8*, ...) @device_printf(i32* %70, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @ENOMEM, align 4
  store i32 %72, i32* %4, align 4
  br label %194

73:                                               ; preds = %50
  %74 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %75 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %76 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %77, i64 %79
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  store %struct.mtkswitch_softc* %74, %struct.mtkswitch_softc** %82, align 8
  %83 = load i32, i32* @IFF_UP, align 4
  %84 = load i32, i32* @IFF_BROADCAST, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @IFF_SIMPLEX, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %91 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %90, i32 0, i32 2
  %92 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %91, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %92, i64 %94
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %89
  store i32 %99, i32* %97, align 8
  %100 = call i64 @strlen(i8* %10)
  %101 = add nsw i64 %100, 1
  %102 = load i32, i32* @M_DEVBUF, align 4
  %103 = load i32, i32* @M_WAITOK, align 4
  %104 = call i32* @malloc(i64 %101, i32 %102, i32 %103)
  %105 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %106 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %105, i32 0, i32 5
  %107 = load i32**, i32*** %106, align 8
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32*, i32** %107, i64 %109
  store i32* %104, i32** %110, align 8
  %111 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %112 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %111, i32 0, i32 5
  %113 = load i32**, i32*** %112, align 8
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = call i64 @strlen(i8* %10)
  %119 = add nsw i64 %118, 1
  %120 = call i32 @bcopy(i8* %10, i32* %117, i64 %119)
  %121 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %122 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %121, i32 0, i32 2
  %123 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %122, align 8
  %124 = load i32, i32* %3, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %123, i64 %125
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %129 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %128, i32 0, i32 5
  %130 = load i32**, i32*** %129, align 8
  %131 = load i32, i32* %3, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32*, i32** %130, i64 %132
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %3, align 4
  %136 = call i32 @mtkswitch_portforphy(i32 %135)
  %137 = call i32 @if_initname(%struct.TYPE_4__* %127, i32* %134, i32 %136)
  %138 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %139 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %138, i32 0, i32 4
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %142 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %141, i32 0, i32 3
  %143 = load i32**, i32*** %142, align 8
  %144 = load i32, i32* %3, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32*, i32** %143, i64 %145
  %147 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %148 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %147, i32 0, i32 2
  %149 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %148, align 8
  %150 = load i32, i32* %3, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %149, i64 %151
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = load i32, i32* @mtkswitch_ifmedia_upd, align 4
  %155 = load i32, i32* @mtkswitch_ifmedia_sts, align 4
  %156 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %157 = load i32, i32* %3, align 4
  %158 = load i32, i32* @MII_OFFSET_ANY, align 4
  %159 = call i32 @mii_attach(i32* %140, i32** %146, %struct.TYPE_4__* %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 0)
  store i32 %159, i32* %4, align 4
  %160 = load i32, i32* %4, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %73
  %163 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %164 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %163, i32 0, i32 4
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %3, align 4
  %167 = call i32 (i32*, i8*, ...) @device_printf(i32* %165, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %166)
  br label %190

168:                                              ; preds = %73
  %169 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %170 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %169, i32 0, i32 4
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %173 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %172, i32 0, i32 3
  %174 = load i32**, i32*** %173, align 8
  %175 = load i32, i32* %3, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32*, i32** %174, i64 %176
  %178 = load i32*, i32** %177, align 8
  %179 = call i8* @device_get_nameunit(i32* %178)
  %180 = load %struct.mtkswitch_softc*, %struct.mtkswitch_softc** %2, align 8
  %181 = getelementptr inbounds %struct.mtkswitch_softc, %struct.mtkswitch_softc* %180, i32 0, i32 2
  %182 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %181, align 8
  %183 = load i32, i32* %3, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %182, i64 %184
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @DPRINTF(i32* %171, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %179, i32 %188)
  br label %190

190:                                              ; preds = %168, %162
  br label %191

191:                                              ; preds = %190, %31
  %192 = load i32, i32* %3, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %3, align 4
  br label %17

194:                                              ; preds = %67, %17
  %195 = load i32, i32* %4, align 4
  %196 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %196)
  ret i32 %195
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @device_get_nameunit(i32*) #2

declare dso_local %struct.TYPE_4__* @if_alloc(i32) #2

declare dso_local i32 @device_printf(i32*, i8*, ...) #2

declare dso_local i32* @malloc(i64, i32, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @bcopy(i8*, i32*, i64) #2

declare dso_local i32 @if_initname(%struct.TYPE_4__*, i32*, i32) #2

declare dso_local i32 @mtkswitch_portforphy(i32) #2

declare dso_local i32 @mii_attach(i32*, i32**, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @DPRINTF(i32*, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
