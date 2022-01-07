; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ip17x/extr_ip17x.c_ip17x_attach_phys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ip17x/extr_ip17x.c_ip17x_attach_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip17x_softc = type { i32, i32*, i32*, i32, %struct.TYPE_5__, i32, %struct.TYPE_6__**, i32** }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.ip17x_softc* }

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
@M_IP17X = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ip17x_ifmedia_upd = common dso_local global i32 0, align 4
@ip17x_ifmedia_sts = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"%s attached to pseudo interface %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"attaching PHY %d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip17x_softc*)* @ip17x_attach_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip17x_attach_phys(%struct.ip17x_softc* %0) #0 {
  %2 = alloca %struct.ip17x_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.ip17x_softc* %0, %struct.ip17x_softc** %2, align 8
  %8 = load i32, i32* @IFNAMSIZ, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %6, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %7, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %12 = load i32, i32* @IFNAMSIZ, align 4
  %13 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %14 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i8* @device_get_nameunit(i32 %15)
  %17 = call i32 @snprintf(i8* %11, i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %182, %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MII_NPHY, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %185

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = shl i32 1, %23
  %25 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %26 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %24, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %182

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %34 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %32, i32* %38, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %41 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  %46 = load i32, i32* @IFT_ETHER, align 4
  %47 = call %struct.TYPE_6__* @if_alloc(i32 %46)
  %48 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %49 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %48, i32 0, i32 6
  %50 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %50, i64 %52
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %53, align 8
  %54 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %55 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %54, i32 0, i32 6
  %56 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %56, i64 %58
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = icmp eq %struct.TYPE_6__* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %31
  %63 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %64 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i32, i8*, ...) @device_printf(i32 %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @ENOMEM, align 4
  store i32 %67, i32* %3, align 4
  br label %185

68:                                               ; preds = %31
  %69 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %70 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %71 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %70, i32 0, i32 6
  %72 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %72, i64 %74
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  store %struct.ip17x_softc* %69, %struct.ip17x_softc** %77, align 8
  %78 = load i32, i32* @IFF_UP, align 4
  %79 = load i32, i32* @IFF_BROADCAST, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @IFF_SIMPLEX, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %86 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %85, i32 0, i32 6
  %87 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %87, i64 %89
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %84
  store i32 %94, i32* %92, align 8
  %95 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %96 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %95, i32 0, i32 6
  %97 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %97, i64 %99
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @if_initname(%struct.TYPE_6__* %101, i8* %11, i32 %102)
  %104 = load i32, i32* @M_IP17X, align 4
  %105 = load i32, i32* @M_WAITOK, align 4
  %106 = load i32, i32* @M_ZERO, align 4
  %107 = or i32 %105, %106
  %108 = call i32* @malloc(i32 4, i32 %104, i32 %107)
  %109 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %110 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %109, i32 0, i32 7
  %111 = load i32**, i32*** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  store i32* %108, i32** %114, align 8
  %115 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %116 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %119 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %118, i32 0, i32 7
  %120 = load i32**, i32*** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %120, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %126 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %125, i32 0, i32 6
  %127 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %127, i64 %129
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load i32, i32* @ip17x_ifmedia_upd, align 4
  %133 = load i32, i32* @ip17x_ifmedia_sts, align 4
  %134 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @MII_OFFSET_ANY, align 4
  %137 = call i32 @mii_attach(i32 %117, i32* %124, %struct.TYPE_6__* %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136, i32 0)
  store i32 %137, i32* %3, align 4
  %138 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %139 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %142 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %141, i32 0, i32 7
  %143 = load i32**, i32*** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32*, i32** %143, i64 %145
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %147, align 4
  %149 = call i8* @device_get_nameunit(i32 %148)
  %150 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %151 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %150, i32 0, i32 6
  %152 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %152, i64 %154
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @DPRINTF(i32 %140, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %149, i32 %158)
  %160 = load i32, i32* %3, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %68
  %163 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %164 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %4, align 4
  %167 = call i32 (i32, i8*, ...) @device_printf(i32 %165, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %166)
  br label %185

168:                                              ; preds = %68
  %169 = load i32, i32* %5, align 4
  %170 = add nsw i32 %169, 1
  %171 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %172 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  store i32 %170, i32* %173, align 4
  %174 = load i32, i32* %5, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %5, align 4
  %176 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %177 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = icmp sge i32 %175, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %168
  br label %185

181:                                              ; preds = %168
  br label %182

182:                                              ; preds = %181, %30
  %183 = load i32, i32* %4, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %4, align 4
  br label %18

185:                                              ; preds = %180, %162, %62, %18
  %186 = load i32, i32* %3, align 4
  %187 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %187)
  ret i32 %186
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @device_get_nameunit(i32) #2

declare dso_local %struct.TYPE_6__* @if_alloc(i32) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i32 @if_initname(%struct.TYPE_6__*, i8*, i32) #2

declare dso_local i32* @malloc(i32, i32, i32) #2

declare dso_local i32 @mii_attach(i32, i32*, %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32) #2

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
