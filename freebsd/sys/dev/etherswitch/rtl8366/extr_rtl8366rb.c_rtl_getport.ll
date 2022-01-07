; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_rtl_getport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_rtl_getport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, %struct.ifmediareq }
%struct.ifmediareq = type { i32, i32, i32*, i64, i32, i32 }
%struct.rtl8366rb_softc = type { i32, i32*, i32*, i32*, i64 }
%struct.ifmedia = type { i32 }
%struct.mii_data = type { %struct.ifmedia }

@ENXIO = common dso_local global i32 0, align 4
@ETHERSWITCH_VID_MASK = common dso_local global i32 0, align 4
@SIOCGIFMEDIA = common dso_local global i32 0, align 4
@ETHERSWITCH_PORT_CPU = common dso_local global i32 0, align 4
@RTL8366_PLSR_BASE = common dso_local global i64 0, align 8
@RTL8366_NUM_PHYS = common dso_local global i32 0, align 4
@RTL_WAITOK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @rtl_getport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_getport(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.rtl8366rb_softc*, align 8
  %7 = alloca %struct.ifmedia*, align 8
  %8 = alloca %struct.mii_data*, align 8
  %9 = alloca %struct.ifmediareq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i8* @device_get_softc(i32 %13)
  %15 = bitcast i8* %14 to %struct.rtl8366rb_softc*
  store %struct.rtl8366rb_softc* %15, %struct.rtl8366rb_softc** %6, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  store %struct.ifmediareq* %17, %struct.ifmediareq** %9, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %6, align 8
  %27 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  %30 = icmp sge i32 %25, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %22, %2
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %3, align 4
  br label %179

33:                                               ; preds = %22
  %34 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %6, align 8
  %35 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %6, align 8
  %43 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %38
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  %56 = call i32 @RTL8366_PVCR_REG(i32 %55)
  %57 = call i32 @rtl_readreg(i32 %51, i32 %56)
  %58 = call i32 @RTL8366_PVCR_GET(i32 %50, i32 %57)
  store i32 %58, i32* %12, align 4
  br label %70

59:                                               ; preds = %38, %33
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @RTL8366_PVCR_REG(i32 %66)
  %68 = call i32 @rtl_readreg(i32 %63, i32 %67)
  %69 = call i32 @RTL8366_PVCR_GET(i32 %62, i32 %68)
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %59, %46
  %71 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %6, align 8
  %72 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ETHERSWITCH_VID_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %6, align 8
  %86 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %122

89:                                               ; preds = %70
  %90 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %6, align 8
  %91 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @device_get_softc(i32 %98)
  %100 = bitcast i8* %99 to %struct.mii_data*
  store %struct.mii_data* %100, %struct.mii_data** %8, align 8
  %101 = load %struct.mii_data*, %struct.mii_data** %8, align 8
  %102 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %101, i32 0, i32 0
  store %struct.ifmedia* %102, %struct.ifmedia** %7, align 8
  %103 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %6, align 8
  %104 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %105, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 3
  %114 = load %struct.ifmedia*, %struct.ifmedia** %7, align 8
  %115 = load i32, i32* @SIOCGIFMEDIA, align 4
  %116 = call i32 @ifmedia_ioctl(i32 %111, i32* %113, %struct.ifmedia* %114, i32 %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %89
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %3, align 4
  br label %179

121:                                              ; preds = %89
  br label %178

122:                                              ; preds = %70
  %123 = load i32, i32* @ETHERSWITCH_PORT_CPU, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  %128 = load i32, i32* %4, align 4
  %129 = load i64, i64* @RTL8366_PLSR_BASE, align 8
  %130 = load i32, i32* @RTL8366_NUM_PHYS, align 4
  %131 = sdiv i32 %130, 2
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %129, %132
  %134 = load i32, i32* @RTL_WAITOK, align 4
  %135 = call i32 @smi_read(i32 %128, i64 %133, i32* %10, i32 %134)
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @RTL8366_NUM_PHYS, align 4
  %138 = srem i32 %137, 2
  %139 = mul nsw i32 8, %138
  %140 = ashr i32 %136, %139
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.ifmediareq*, %struct.ifmediareq** %9, align 8
  %143 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %142, i32 0, i32 0
  %144 = load %struct.ifmediareq*, %struct.ifmediareq** %9, align 8
  %145 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %144, i32 0, i32 4
  %146 = call i32 @rtl8366rb_update_ifmedia(i32 %141, i32* %143, i32* %145)
  %147 = load %struct.ifmediareq*, %struct.ifmediareq** %9, align 8
  %148 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.ifmediareq*, %struct.ifmediareq** %9, align 8
  %151 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %150, i32 0, i32 5
  store i32 %149, i32* %151, align 4
  %152 = load %struct.ifmediareq*, %struct.ifmediareq** %9, align 8
  %153 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %152, i32 0, i32 3
  store i64 0, i64* %153, align 8
  %154 = load i32, i32* @IFM_ACTIVE, align 4
  %155 = load i32, i32* @IFM_AVALID, align 4
  %156 = or i32 %154, %155
  %157 = load %struct.ifmediareq*, %struct.ifmediareq** %9, align 8
  %158 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load %struct.ifmediareq*, %struct.ifmediareq** %9, align 8
  %160 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %122
  %164 = load %struct.ifmediareq*, %struct.ifmediareq** %9, align 8
  %165 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %164, i32 0, i32 1
  store i32 1, i32* %165, align 4
  %166 = load i32, i32* @IFM_ETHER, align 4
  %167 = load i32, i32* @IFM_1000_T, align 4
  %168 = load i32, i32* @IFM_FDX, align 4
  %169 = call i32 @IFM_MAKEWORD(i32 %166, i32 %167, i32 %168, i32 0)
  %170 = load %struct.ifmediareq*, %struct.ifmediareq** %9, align 8
  %171 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  store i32 %169, i32* %173, align 4
  br label %177

174:                                              ; preds = %122
  %175 = load %struct.ifmediareq*, %struct.ifmediareq** %9, align 8
  %176 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %175, i32 0, i32 1
  store i32 0, i32* %176, align 4
  br label %177

177:                                              ; preds = %174, %163
  br label %178

178:                                              ; preds = %177, %121
  store i32 0, i32* %3, align 4
  br label %179

179:                                              ; preds = %178, %119, %31
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @RTL8366_PVCR_GET(i32, i32) #1

declare dso_local i32 @rtl_readreg(i32, i32) #1

declare dso_local i32 @RTL8366_PVCR_REG(i32) #1

declare dso_local i32 @ifmedia_ioctl(i32, i32*, %struct.ifmedia*, i32) #1

declare dso_local i32 @smi_read(i32, i64, i32*, i32) #1

declare dso_local i32 @rtl8366rb_update_ifmedia(i32, i32*, i32*) #1

declare dso_local i32 @IFM_MAKEWORD(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
