; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch.c_arswitch_attach_phys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch.c_arswitch_attach_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arswitch_softc = type { i32, %struct.TYPE_5__**, i32, %struct.TYPE_6__**, i32*, i32* }
%struct.TYPE_5__ = type { i32, i32, %struct.arswitch_softc* }
%struct.TYPE_6__ = type { i32, i32, %struct.arswitch_softc* }

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
@arswitch_ifmedia_upd = common dso_local global i32 0, align 4
@arswitch_ifmedia_sts = common dso_local global i32 0, align 4
@BMSR_DEFCAPMASK = common dso_local global i32 0, align 4
@MII_OFFSET_ANY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"attaching PHY %d failed\0A\00", align 1
@AR8327 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"%s%dled%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arswitch_softc*)* @arswitch_attach_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arswitch_attach_phys(%struct.arswitch_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arswitch_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.arswitch_softc* %0, %struct.arswitch_softc** %3, align 8
  store i32 0, i32* %5, align 4
  %12 = load i32, i32* @IFNAMSIZ, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* @IFNAMSIZ, align 4
  %17 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %18 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i8* @device_get_nameunit(i32 %19)
  %21 = call i32 @snprintf(i8* %15, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %209, %1
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %25 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %212

28:                                               ; preds = %22
  %29 = load i32, i32* @IFT_ETHER, align 4
  %30 = call %struct.TYPE_6__* @if_alloc(i32 %29)
  %31 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %32 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %31, i32 0, i32 3
  %33 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %33, i64 %35
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %36, align 8
  %37 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %38 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %39, i64 %41
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = icmp eq %struct.TYPE_6__* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %28
  %46 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %47 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32, i8*, ...) @device_printf(i32 %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @ENOMEM, align 4
  store i32 %50, i32* %5, align 4
  br label %212

51:                                               ; preds = %28
  %52 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %53 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %54 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %53, i32 0, i32 3
  %55 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %55, i64 %57
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  store %struct.arswitch_softc* %52, %struct.arswitch_softc** %60, align 8
  %61 = load i32, i32* @IFF_UP, align 4
  %62 = load i32, i32* @IFF_BROADCAST, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @IFF_SIMPLEX, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %69 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %68, i32 0, i32 3
  %70 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %70, i64 %72
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %67
  store i32 %77, i32* %75, align 8
  %78 = call i64 @strlen(i8* %15)
  %79 = add nsw i64 %78, 1
  %80 = load i32, i32* @M_DEVBUF, align 4
  %81 = load i32, i32* @M_WAITOK, align 4
  %82 = call i32 @malloc(i64 %79, i32 %80, i32 %81)
  %83 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %84 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %83, i32 0, i32 5
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %82, i32* %88, align 4
  %89 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %90 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %89, i32 0, i32 5
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @strlen(i8* %15)
  %97 = add nsw i64 %96, 1
  %98 = call i32 @bcopy(i8* %15, i32 %95, i64 %97)
  %99 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %100 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %99, i32 0, i32 3
  %101 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %101, i64 %103
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %107 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %106, i32 0, i32 5
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @arswitch_portforphy(i32 %113)
  %115 = call i32 @if_initname(%struct.TYPE_6__* %105, i32 %112, i32 %114)
  %116 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %117 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %120 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %126 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %125, i32 0, i32 3
  %127 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %127, i64 %129
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load i32, i32* @arswitch_ifmedia_upd, align 4
  %133 = load i32, i32* @arswitch_ifmedia_sts, align 4
  %134 = load i32, i32* @BMSR_DEFCAPMASK, align 4
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @MII_OFFSET_ANY, align 4
  %137 = call i32 @mii_attach(i32 %118, i32* %124, %struct.TYPE_6__* %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136, i32 0)
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %51
  %141 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %142 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %4, align 4
  %145 = call i32 (i32, i8*, ...) @device_printf(i32 %143, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* %5, align 4
  store i32 %146, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %213

147:                                              ; preds = %51
  %148 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %149 = load i32, i32* @AR8327, align 4
  %150 = call i64 @AR8X16_IS_SWITCH(%struct.arswitch_softc* %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %208

152:                                              ; preds = %147
  %153 = load i32, i32* @IFNAMSIZ, align 4
  %154 = add nsw i32 %153, 4
  %155 = zext i32 %154 to i64
  %156 = call i8* @llvm.stacksave()
  store i8* %156, i8** %10, align 8
  %157 = alloca i8, i64 %155, align 16
  store i64 %155, i64* %11, align 8
  store i32 0, i32* %9, align 4
  br label %158

158:                                              ; preds = %203, %152
  %159 = load i32, i32* %9, align 4
  %160 = icmp slt i32 %159, 3
  br i1 %160, label %161, label %206

161:                                              ; preds = %158
  %162 = load i32, i32* %4, align 4
  %163 = call i32 @arswitch_portforphy(i32 %162)
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 1
  %166 = call i32 @sprintf(i8* %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %15, i32 %163, i32 %165)
  %167 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %168 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %169 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %168, i32 0, i32 1
  %170 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %169, align 8
  %171 = load i32, i32* %4, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %170, i64 %172
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %173, align 8
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 2
  store %struct.arswitch_softc* %167, %struct.arswitch_softc** %178, align 8
  %179 = load i32, i32* %4, align 4
  %180 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %181 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %180, i32 0, i32 1
  %182 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %181, align 8
  %183 = load i32, i32* %4, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %182, i64 %184
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  store i32 %179, i32* %190, align 8
  %191 = load i32, i32* %9, align 4
  %192 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %193 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %192, i32 0, i32 1
  %194 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %193, align 8
  %195 = load i32, i32* %4, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %194, i64 %196
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %197, align 8
  %199 = load i32, i32* %9, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 1
  store i32 %191, i32* %202, align 4
  br label %203

203:                                              ; preds = %161
  %204 = load i32, i32* %9, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %9, align 4
  br label %158

206:                                              ; preds = %158
  %207 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %207)
  br label %208

208:                                              ; preds = %206, %147
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %4, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %4, align 4
  br label %22

212:                                              ; preds = %45, %22
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %213

213:                                              ; preds = %212, %140
  %214 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %214)
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @device_get_nameunit(i32) #2

declare dso_local %struct.TYPE_6__* @if_alloc(i32) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i32 @malloc(i64, i32, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @bcopy(i8*, i32, i64) #2

declare dso_local i32 @if_initname(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @arswitch_portforphy(i32) #2

declare dso_local i32 @mii_attach(i32, i32*, %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i64 @AR8X16_IS_SWITCH(%struct.arswitch_softc*, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
