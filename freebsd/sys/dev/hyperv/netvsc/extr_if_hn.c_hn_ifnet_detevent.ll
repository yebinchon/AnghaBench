; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_ifnet_detevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_ifnet_detevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.ifnet = type { i64, i32, i32* }
%struct.hn_softc = type { i32, i32, i64, %struct.TYPE_2__*, i32, i32, i32, i32, i32*, i32, i32, i32* }

@hn_xpnt_vf = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"%s VF input is not saved\00", align 1
@HN_FLAG_SYNTH_ATTACHED = common dso_local global i32 0, align 4
@HN_XVFFLAG_ENABLED = common dso_local global i32 0, align 4
@HN_NVS_DATAPATH_SYNTH = common dso_local global i32 0, align 4
@hn_vfmap_lock = common dso_local global i32 0, align 4
@hn_vfmap_size = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"ifindex %d, vfmapsize %d\00", align 1
@hn_vfmap = common dso_local global %struct.TYPE_2__** null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: ifindex %d was mapped to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ifnet*)* @hn_ifnet_detevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_ifnet_detevent(i8* %0, %struct.ifnet* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.hn_softc*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ifnet* %1, %struct.ifnet** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.hn_softc*
  store %struct.hn_softc* %7, %struct.hn_softc** %5, align 8
  %8 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %9 = call i32 @HN_LOCK(%struct.hn_softc* %8)
  %10 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %11 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %10, i32 0, i32 11
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %178

15:                                               ; preds = %2
  %16 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %17 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %18 = call i32 @hn_ismyvf(%struct.hn_softc* %16, %struct.ifnet* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %178

21:                                               ; preds = %15
  %22 = load i64, i64* @hn_xpnt_vf, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %119

24:                                               ; preds = %21
  %25 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %26 = call i32 @HN_UNLOCK(%struct.hn_softc* %25)
  %27 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %28 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %27, i32 0, i32 10
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %31 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %30, i32 0, i32 9
  %32 = call i32 @taskqueue_drain_timeout(i32 %29, i32* %31)
  %33 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %34 = call i32 @HN_LOCK(%struct.hn_softc* %33)
  %35 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %36 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %35, i32 0, i32 8
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %41 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @KASSERT(i32 %39, i8* %46)
  %48 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %49 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %48, i32 0, i32 8
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  %53 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %54 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %53, i32 0, i32 8
  store i32* null, i32** %54, align 8
  %55 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %56 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @HN_FLAG_SYNTH_ATTACHED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %24
  %62 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %63 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @HN_XVFFLAG_ENABLED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %70 = load i32, i32* @HN_NVS_DATAPATH_SYNTH, align 4
  %71 = call i32 @hn_nvs_set_datapath(%struct.hn_softc* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %61, %24
  %73 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %74 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %106

77:                                               ; preds = %72
  %78 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %79 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %82 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 4
  store i32 %80, i32* %84, align 4
  %85 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %86 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %89 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %88, i32 0, i32 3
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  store i32 %87, i32* %91, align 4
  %92 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %93 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %96 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %95, i32 0, i32 3
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  store i32 %94, i32* %98, align 4
  %99 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %100 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %103 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %102, i32 0, i32 3
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  store i32 %101, i32* %105, align 4
  br label %106

106:                                              ; preds = %77, %72
  %107 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %108 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @HN_FLAG_SYNTH_ATTACHED, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  %114 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %115 = call i32 @hn_vf_rss_restore(%struct.hn_softc* %114)
  %116 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %117 = call i32 @hn_resume_mgmt(%struct.hn_softc* %116)
  br label %118

118:                                              ; preds = %113, %106
  br label %119

119:                                              ; preds = %118, %21
  %120 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %121 = call i32 @hn_xpnt_vf_setdisable(%struct.hn_softc* %120, i32 1)
  %122 = call i32 @rm_wlock(i32* @hn_vfmap_lock)
  %123 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %124 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @hn_vfmap_size, align 8
  %127 = icmp ult i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %130 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @hn_vfmap_size, align 8
  %133 = inttoptr i64 %132 to i8*
  %134 = call i32 @KASSERT(i32 %128, i8* %133)
  %135 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @hn_vfmap, align 8
  %136 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %137 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %135, i64 %138
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = icmp ne %struct.TYPE_2__* %140, null
  br i1 %141, label %142, label %176

142:                                              ; preds = %119
  %143 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @hn_vfmap, align 8
  %144 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %145 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %143, i64 %146
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %150 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %149, i32 0, i32 3
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = icmp eq %struct.TYPE_2__* %148, %151
  %153 = zext i1 %152 to i32
  %154 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %155 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %158 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @hn_vfmap, align 8
  %161 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %162 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %160, i64 %163
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = inttoptr i64 %168 to i8*
  %170 = call i32 @KASSERT(i32 %153, i8* %169)
  %171 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @hn_vfmap, align 8
  %172 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %173 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %171, i64 %174
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %175, align 8
  br label %176

176:                                              ; preds = %142, %119
  %177 = call i32 @rm_wunlock(i32* @hn_vfmap_lock)
  br label %178

178:                                              ; preds = %176, %20, %14
  %179 = load %struct.hn_softc*, %struct.hn_softc** %5, align 8
  %180 = call i32 @HN_UNLOCK(%struct.hn_softc* %179)
  ret void
}

declare dso_local i32 @HN_LOCK(%struct.hn_softc*) #1

declare dso_local i32 @hn_ismyvf(%struct.hn_softc*, %struct.ifnet*) #1

declare dso_local i32 @HN_UNLOCK(%struct.hn_softc*) #1

declare dso_local i32 @taskqueue_drain_timeout(i32, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @hn_nvs_set_datapath(%struct.hn_softc*, i32) #1

declare dso_local i32 @hn_vf_rss_restore(%struct.hn_softc*) #1

declare dso_local i32 @hn_resume_mgmt(%struct.hn_softc*) #1

declare dso_local i32 @hn_xpnt_vf_setdisable(%struct.hn_softc*, i32) #1

declare dso_local i32 @rm_wlock(i32*) #1

declare dso_local i32 @rm_wunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
