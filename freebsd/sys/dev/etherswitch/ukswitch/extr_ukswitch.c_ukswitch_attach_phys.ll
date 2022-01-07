; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ukswitch/extr_ukswitch.c_ukswitch_attach_phys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ukswitch/extr_ukswitch.c_ukswitch_attach_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ukswitch_softc = type { i32, i32*, i32*, i32, %struct.TYPE_5__, i32, %struct.TYPE_6__**, i32**, i64, i8** }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.ukswitch_softc* }

@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%sport\00", align 1
@MII_NPHY = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"couldn't allocate ifnet structure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_SIMPLEX = common dso_local global i32 0, align 4
@M_UKSWITCH = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ukswitch_ifmedia_upd = common dso_local global i32 0, align 4
@ukswitch_ifmedia_sts = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"%s attached to pseudo interface %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"attaching PHY %d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ukswitch_softc*)* @ukswitch_attach_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ukswitch_attach_phys(%struct.ukswitch_softc* %0) #0 {
  %2 = alloca %struct.ukswitch_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.ukswitch_softc* %0, %struct.ukswitch_softc** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @IFNAMSIZ, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %6, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %7, align 8
  %12 = load i32, i32* @IFNAMSIZ, align 4
  %13 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %2, align 8
  %14 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i8* @device_get_nameunit(i32 %15)
  %17 = call i32 @snprintf(i8* %11, i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %216, %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @MII_NPHY, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %219

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = shl i32 1, %23
  %25 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %2, align 8
  %26 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %24, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %216

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %2, align 8
  %34 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %32, i32* %38, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %2, align 8
  %41 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  %46 = load i32, i32* @IFT_ETHER, align 4
  %47 = call %struct.TYPE_6__* @if_alloc(i32 %46)
  %48 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %2, align 8
  %49 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %48, i32 0, i32 6
  %50 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %50, i64 %52
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %53, align 8
  %54 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %2, align 8
  %55 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %54, i32 0, i32 6
  %56 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %56, i64 %58
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = icmp eq %struct.TYPE_6__* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %31
  %63 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %2, align 8
  %64 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i32, i8*, ...) @device_printf(i32 %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @ENOMEM, align 4
  store i32 %67, i32* %5, align 4
  br label %219

68:                                               ; preds = %31
  %69 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %2, align 8
  %70 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %2, align 8
  %71 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %70, i32 0, i32 6
  %72 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %72, i64 %74
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  store %struct.ukswitch_softc* %69, %struct.ukswitch_softc** %77, align 8
  %78 = load i32, i32* @IFF_UP, align 4
  %79 = load i32, i32* @IFF_BROADCAST, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @IFF_SIMPLEX, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %2, align 8
  %86 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %85, i32 0, i32 6
  %87 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %87, i64 %89
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %84
  store i32 %94, i32* %92, align 8
  %95 = call i32 @strlen(i8* %11)
  %96 = add nsw i32 %95, 1
  %97 = load i32, i32* @M_UKSWITCH, align 4
  %98 = load i32, i32* @M_WAITOK, align 4
  %99 = call i8* @malloc(i32 %96, i32 %97, i32 %98)
  %100 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %2, align 8
  %101 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %100, i32 0, i32 9
  %102 = load i8**, i8*** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  store i8* %99, i8** %105, align 8
  %106 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %2, align 8
  %107 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %106, i32 0, i32 9
  %108 = load i8**, i8*** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @strlen(i8* %11)
  %114 = add nsw i32 %113, 1
  %115 = call i32 @bcopy(i8* %11, i8* %112, i32 %114)
  %116 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %2, align 8
  %117 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %116, i32 0, i32 6
  %118 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %118, i64 %120
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %2, align 8
  %124 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %123, i32 0, i32 9
  %125 = load i8**, i8*** %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @if_initname(%struct.TYPE_6__* %122, i8* %129, i32 %130)
  %132 = load i32, i32* @M_UKSWITCH, align 4
  %133 = load i32, i32* @M_WAITOK, align 4
  %134 = load i32, i32* @M_ZERO, align 4
  %135 = or i32 %133, %134
  %136 = call i8* @malloc(i32 4, i32 %132, i32 %135)
  %137 = bitcast i8* %136 to i32*
  %138 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %2, align 8
  %139 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %138, i32 0, i32 7
  %140 = load i32**, i32*** %139, align 8
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  store i32* %137, i32** %143, align 8
  %144 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %2, align 8
  %145 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %2, align 8
  %148 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %147, i32 0, i32 7
  %149 = load i32**, i32*** %148, align 8
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32*, i32** %149, i64 %151
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %2, align 8
  %155 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %154, i32 0, i32 6
  %156 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %155, align 8
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %156, i64 %158
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = load i32, i32* @ukswitch_ifmedia_upd, align 4
  %162 = load i32, i32* @ukswitch_ifmedia_sts, align 4
  %163 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %164 = load i32, i32* %3, align 4
  %165 = sext i32 %164 to i64
  %166 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %2, align 8
  %167 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %166, i32 0, i32 8
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %165, %168
  %170 = load i32, i32* @MII_OFFSET_ANY, align 4
  %171 = call i32 @mii_attach(i32 %146, i32* %153, %struct.TYPE_6__* %160, i32 %161, i32 %162, i32 %163, i64 %169, i32 %170, i32 0)
  store i32 %171, i32* %5, align 4
  %172 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %2, align 8
  %173 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %2, align 8
  %176 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %175, i32 0, i32 7
  %177 = load i32**, i32*** %176, align 8
  %178 = load i32, i32* %4, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32*, i32** %177, i64 %179
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %181, align 4
  %183 = call i8* @device_get_nameunit(i32 %182)
  %184 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %2, align 8
  %185 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %184, i32 0, i32 6
  %186 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %185, align 8
  %187 = load i32, i32* %4, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %186, i64 %188
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @DPRINTF(i32 %174, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %183, i32 %192)
  %194 = load i32, i32* %5, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %68
  %197 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %2, align 8
  %198 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* %3, align 4
  %201 = call i32 (i32, i8*, ...) @device_printf(i32 %199, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %200)
  br label %219

202:                                              ; preds = %68
  %203 = load i32, i32* %4, align 4
  %204 = add nsw i32 %203, 1
  %205 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %2, align 8
  %206 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %205, i32 0, i32 4
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  store i32 %204, i32* %207, align 4
  %208 = load i32, i32* %4, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %4, align 4
  %210 = load %struct.ukswitch_softc*, %struct.ukswitch_softc** %2, align 8
  %211 = getelementptr inbounds %struct.ukswitch_softc, %struct.ukswitch_softc* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = icmp sge i32 %209, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %202
  br label %219

215:                                              ; preds = %202
  br label %216

216:                                              ; preds = %215, %30
  %217 = load i32, i32* %3, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %3, align 4
  br label %18

219:                                              ; preds = %214, %196, %62, %18
  %220 = load i32, i32* %5, align 4
  %221 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %221)
  ret i32 %220
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @device_get_nameunit(i32) #2

declare dso_local %struct.TYPE_6__* @if_alloc(i32) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i8* @malloc(i32, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @bcopy(i8*, i8*, i32) #2

declare dso_local i32 @if_initname(%struct.TYPE_6__*, i8*, i32) #2

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
