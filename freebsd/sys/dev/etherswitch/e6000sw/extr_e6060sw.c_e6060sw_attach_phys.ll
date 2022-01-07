; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6060sw.c_e6060sw_attach_phys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6060sw.c_e6060sw_attach_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e6060sw_softc = type { i32, i32, i32*, i32*, i32, %struct.TYPE_5__, i32, %struct.TYPE_6__**, i32**, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.e6060sw_softc* }

@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%sport\00", align 1
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"couldn't allocate ifnet structure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@M_E6060SW = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@e6060sw_ifmedia_upd = common dso_local global i32 0, align 4
@e6060sw_ifmedia_sts = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"%s attached to pseudo interface %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"attaching PHY %d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e6060sw_softc*)* @e6060sw_attach_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e6060sw_attach_phys(%struct.e6060sw_softc* %0) #0 {
  %2 = alloca %struct.e6060sw_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.e6060sw_softc* %0, %struct.e6060sw_softc** %2, align 8
  %8 = load i32, i32* @IFNAMSIZ, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %6, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %7, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = load i32, i32* @IFNAMSIZ, align 4
  %13 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %2, align 8
  %14 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = call i8* @device_get_nameunit(i32 %15)
  %17 = call i32 @snprintf(i8* %11, i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %178, %1
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %2, align 8
  %21 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %181

24:                                               ; preds = %18
  %25 = load i32, i32* %3, align 4
  %26 = shl i32 1, %25
  %27 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %2, align 8
  %28 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %26, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %178

33:                                               ; preds = %24
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %2, align 8
  %36 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %2, align 8
  %43 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %41, i32* %47, align 4
  %48 = load i32, i32* @IFT_ETHER, align 4
  %49 = call %struct.TYPE_6__* @if_alloc(i32 %48)
  %50 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %2, align 8
  %51 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %50, i32 0, i32 7
  %52 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %52, i64 %54
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %55, align 8
  %56 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %2, align 8
  %57 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %56, i32 0, i32 7
  %58 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %58, i64 %60
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = icmp eq %struct.TYPE_6__* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %33
  %65 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %2, align 8
  %66 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i32, i8*, ...) @device_printf(i32 %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @ENOMEM, align 4
  store i32 %69, i32* %5, align 4
  br label %181

70:                                               ; preds = %33
  %71 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %2, align 8
  %72 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %2, align 8
  %73 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %72, i32 0, i32 7
  %74 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %74, i64 %76
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  store %struct.e6060sw_softc* %71, %struct.e6060sw_softc** %79, align 8
  %80 = load i32, i32* @IFF_UP, align 4
  %81 = load i32, i32* @IFF_BROADCAST, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @IFF_SIMPLEX, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %2, align 8
  %88 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %87, i32 0, i32 7
  %89 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %89, i64 %91
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %86
  store i32 %96, i32* %94, align 8
  %97 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %2, align 8
  %98 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %97, i32 0, i32 7
  %99 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %99, i64 %101
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @if_initname(%struct.TYPE_6__* %103, i8* %11, i32 %104)
  %106 = load i32, i32* @M_E6060SW, align 4
  %107 = load i32, i32* @M_WAITOK, align 4
  %108 = load i32, i32* @M_ZERO, align 4
  %109 = or i32 %107, %108
  %110 = call i32* @malloc(i32 4, i32 %106, i32 %109)
  %111 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %2, align 8
  %112 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %111, i32 0, i32 8
  %113 = load i32**, i32*** %112, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  store i32* %110, i32** %116, align 8
  %117 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %2, align 8
  %118 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %2, align 8
  %121 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %120, i32 0, i32 8
  %122 = load i32**, i32*** %121, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %2, align 8
  %128 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %127, i32 0, i32 7
  %129 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %128, align 8
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %129, i64 %131
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = load i32, i32* @e6060sw_ifmedia_upd, align 4
  %135 = load i32, i32* @e6060sw_ifmedia_sts, align 4
  %136 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %137 = load i32, i32* %3, align 4
  %138 = sext i32 %137 to i64
  %139 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %2, align 8
  %140 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %139, i32 0, i32 9
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %138, %141
  %143 = load i32, i32* @MII_OFFSET_ANY, align 4
  %144 = call i32 @mii_attach(i32 %119, i32* %126, %struct.TYPE_6__* %133, i32 %134, i32 %135, i32 %136, i64 %142, i32 %143, i32 0)
  store i32 %144, i32* %5, align 4
  %145 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %2, align 8
  %146 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %2, align 8
  %149 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %148, i32 0, i32 8
  %150 = load i32**, i32*** %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32*, i32** %150, i64 %152
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @device_get_nameunit(i32 %155)
  %157 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %2, align 8
  %158 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %157, i32 0, i32 7
  %159 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %158, align 8
  %160 = load i32, i32* %4, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %159, i64 %161
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @DPRINTF(i32 %147, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %156, i32 %165)
  %167 = load i32, i32* %5, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %70
  %170 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %2, align 8
  %171 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %3, align 4
  %174 = call i32 (i32, i8*, ...) @device_printf(i32 %172, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %173)
  br label %181

175:                                              ; preds = %70
  %176 = load i32, i32* %4, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %4, align 4
  br label %178

178:                                              ; preds = %175, %32
  %179 = load i32, i32* %3, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %3, align 4
  br label %18

181:                                              ; preds = %169, %64, %18
  %182 = load i32, i32* %4, align 4
  %183 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %2, align 8
  %184 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %183, i32 0, i32 5
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  store i32 %182, i32* %185, align 4
  %186 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %2, align 8
  %187 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, -1
  br i1 %189, label %190, label %214

190:                                              ; preds = %181
  %191 = load i32, i32* %4, align 4
  %192 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %2, align 8
  %193 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %2, align 8
  %196 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %194, i64 %198
  store i32 %191, i32* %199, align 4
  %200 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %2, align 8
  %201 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %2, align 8
  %204 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %203, i32 0, i32 3
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %4, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 %202, i32* %208, align 4
  %209 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %2, align 8
  %210 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %209, i32 0, i32 5
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %211, align 4
  br label %214

214:                                              ; preds = %190, %181
  %215 = load i32, i32* %5, align 4
  %216 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %216)
  ret i32 %215
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @device_get_nameunit(i32) #2

declare dso_local %struct.TYPE_6__* @if_alloc(i32) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i32 @if_initname(%struct.TYPE_6__*, i8*, i32) #2

declare dso_local i32* @malloc(i32, i32, i32) #2

declare dso_local i32 @mii_attach(i32, i32*, %struct.TYPE_6__*, i32, i32, i32, i64, i32, i32) #2

declare dso_local i32 @DPRINTF(i32, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
