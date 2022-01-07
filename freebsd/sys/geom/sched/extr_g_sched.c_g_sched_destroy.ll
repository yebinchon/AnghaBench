; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_sched_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_sched_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { %struct.g_sched_softc*, i32, i32 }
%struct.g_sched_softc = type { i32, i32, %struct.g_gsched*, i32, i32*, i32 }
%struct.g_gsched = type { i32 (i32)* }
%struct.g_provider = type { i64, i64, i64, i32 }

@ENXIO = common dso_local global i32 0, align 4
@G_SCHED_PROXYING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"but we force removal\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"cannot remove\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Device %s is still open (r%dw%de%d), %s.\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Device %s removed.\00", align 1
@g_sched_blackhole = common dso_local global i32 0, align 4
@g_sched_start = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"Pending requests while  destroying geom, some memory leaked.\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"Unrecoverable error while destroying a proxy geom, leaking some  memory.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_geom*, i64)* @g_sched_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_sched_destroy(%struct.g_geom* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_geom*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca %struct.g_provider*, align 8
  %8 = alloca %struct.g_sched_softc*, align 8
  %9 = alloca %struct.g_gsched*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.g_geom* %0, %struct.g_geom** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.g_provider* null, %struct.g_provider** %7, align 8
  %12 = call i32 (...) @g_topology_assert()
  %13 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %14 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %13, i32 0, i32 0
  %15 = load %struct.g_sched_softc*, %struct.g_sched_softc** %14, align 8
  store %struct.g_sched_softc* %15, %struct.g_sched_softc** %8, align 8
  %16 = load %struct.g_sched_softc*, %struct.g_sched_softc** %8, align 8
  %17 = icmp eq %struct.g_sched_softc* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %3, align 4
  br label %194

20:                                               ; preds = %2
  %21 = load %struct.g_sched_softc*, %struct.g_sched_softc** %8, align 8
  %22 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @G_SCHED_PROXYING, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %82, label %27

27:                                               ; preds = %20
  %28 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %29 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %28, i32 0, i32 2
  %30 = call %struct.g_provider* @LIST_FIRST(i32* %29)
  store %struct.g_provider* %30, %struct.g_provider** %6, align 8
  %31 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %32 = icmp ne %struct.g_provider* %31, null
  br i1 %32, label %33, label %76

33:                                               ; preds = %27
  %34 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %35 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %33
  %39 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %40 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %45 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %43, %38, %33
  %49 = load i64, i64* %5, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)
  store i8* %52, i8** %11, align 8
  %53 = load i64, i64* %5, align 8
  %54 = icmp ne i64 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %58 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %61 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %64 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %67 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 (i32, i8*, ...) @G_SCHED_DEBUG(i32 %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %59, i64 %62, i64 %65, i64 %68, i8* %69)
  %71 = load i64, i64* %5, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %48
  %74 = load i32, i32* @EBUSY, align 4
  store i32 %74, i32* %3, align 4
  br label %194

75:                                               ; preds = %48
  br label %81

76:                                               ; preds = %43, %27
  %77 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %78 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i32, i8*, ...) @G_SCHED_DEBUG(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %76, %75
  br label %85

82:                                               ; preds = %20
  %83 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %84 = call %struct.g_provider* @g_detach_proxy(%struct.g_geom* %83)
  store %struct.g_provider* %84, %struct.g_provider** %7, align 8
  br label %85

85:                                               ; preds = %82, %81
  %86 = load %struct.g_sched_softc*, %struct.g_sched_softc** %8, align 8
  %87 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %86, i32 0, i32 2
  %88 = load %struct.g_gsched*, %struct.g_gsched** %87, align 8
  store %struct.g_gsched* %88, %struct.g_gsched** %9, align 8
  %89 = load %struct.g_gsched*, %struct.g_gsched** %9, align 8
  %90 = icmp ne %struct.g_gsched* %89, null
  br i1 %90, label %91, label %155

91:                                               ; preds = %85
  %92 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %93 = call i32 @g_sched_lock(%struct.g_geom* %92)
  %94 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %95 = call i32 @g_sched_forced_dispatch(%struct.g_geom* %94)
  %96 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %97 = call i32 @g_sched_wait_pending(%struct.g_geom* %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %127

100:                                              ; preds = %91
  %101 = load %struct.g_sched_softc*, %struct.g_sched_softc** %8, align 8
  %102 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @G_SCHED_PROXYING, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %100
  %108 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %109 = icmp ne %struct.g_provider* %108, null
  br i1 %109, label %110, label %120

110:                                              ; preds = %107
  %111 = load i64, i64* %5, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = load i32, i32* @g_sched_blackhole, align 4
  br label %117

115:                                              ; preds = %110
  %116 = load i32, i32* @g_sched_start, align 4
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i32 [ %114, %113 ], [ %116, %115 ]
  %119 = call i32 @g_sched_flush_pending(i32 %118)
  br label %120

120:                                              ; preds = %117, %107, %100
  %121 = load i64, i64* %5, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = call i32 (i32, i8*, ...) @G_SCHED_DEBUG(i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %120
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %3, align 4
  br label %194

127:                                              ; preds = %91
  %128 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %129 = call i32 @g_sched_unlock(%struct.g_geom* %128)
  %130 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %131 = load %struct.g_sched_softc*, %struct.g_sched_softc** %8, align 8
  %132 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %131, i32 0, i32 4
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.g_sched_softc*, %struct.g_sched_softc** %8, align 8
  %135 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.g_gsched*, %struct.g_gsched** %9, align 8
  %138 = load %struct.g_sched_softc*, %struct.g_sched_softc** %8, align 8
  %139 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @g_sched_hash_fini(%struct.g_geom* %130, i32* %133, i32 %136, %struct.g_gsched* %137, i32 %140)
  %142 = load %struct.g_sched_softc*, %struct.g_sched_softc** %8, align 8
  %143 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %142, i32 0, i32 4
  store i32* null, i32** %143, align 8
  %144 = load %struct.g_gsched*, %struct.g_gsched** %9, align 8
  %145 = getelementptr inbounds %struct.g_gsched, %struct.g_gsched* %144, i32 0, i32 0
  %146 = load i32 (i32)*, i32 (i32)** %145, align 8
  %147 = load %struct.g_sched_softc*, %struct.g_sched_softc** %8, align 8
  %148 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = call i32 %146(i32 %149)
  %151 = load %struct.g_gsched*, %struct.g_gsched** %9, align 8
  %152 = call i32 @g_gsched_unref(%struct.g_gsched* %151)
  %153 = load %struct.g_sched_softc*, %struct.g_sched_softc** %8, align 8
  %154 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %153, i32 0, i32 2
  store %struct.g_gsched* null, %struct.g_gsched** %154, align 8
  br label %156

155:                                              ; preds = %85
  store i32 0, i32* %10, align 4
  br label %156

156:                                              ; preds = %155, %127
  %157 = load %struct.g_sched_softc*, %struct.g_sched_softc** %8, align 8
  %158 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @G_SCHED_PROXYING, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %180

163:                                              ; preds = %156
  %164 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %165 = icmp ne %struct.g_provider* %164, null
  br i1 %165, label %166, label %180

166:                                              ; preds = %163
  %167 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %168 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %169 = call i32 @g_destroy_proxy(%struct.g_geom* %167, %struct.g_provider* %168)
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %166
  %173 = load i64, i64* %5, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = call i32 (i32, i8*, ...) @G_SCHED_DEBUG(i32 0, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0))
  br label %177

177:                                              ; preds = %175, %172
  %178 = load i32, i32* %10, align 4
  store i32 %178, i32* %3, align 4
  br label %194

179:                                              ; preds = %166
  br label %180

180:                                              ; preds = %179, %163, %156
  %181 = load %struct.g_sched_softc*, %struct.g_sched_softc** %8, align 8
  %182 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %181, i32 0, i32 1
  %183 = call i32 @mtx_destroy(i32* %182)
  %184 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %185 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %184, i32 0, i32 0
  %186 = load %struct.g_sched_softc*, %struct.g_sched_softc** %185, align 8
  %187 = call i32 @g_free(%struct.g_sched_softc* %186)
  %188 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %189 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %188, i32 0, i32 0
  store %struct.g_sched_softc* null, %struct.g_sched_softc** %189, align 8
  %190 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %191 = load i32, i32* @ENXIO, align 4
  %192 = call i32 @g_wither_geom(%struct.g_geom* %190, i32 %191)
  %193 = load i32, i32* %10, align 4
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %180, %177, %125, %73, %18
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local %struct.g_provider* @LIST_FIRST(i32*) #1

declare dso_local i32 @G_SCHED_DEBUG(i32, i8*, ...) #1

declare dso_local %struct.g_provider* @g_detach_proxy(%struct.g_geom*) #1

declare dso_local i32 @g_sched_lock(%struct.g_geom*) #1

declare dso_local i32 @g_sched_forced_dispatch(%struct.g_geom*) #1

declare dso_local i32 @g_sched_wait_pending(%struct.g_geom*) #1

declare dso_local i32 @g_sched_flush_pending(i32) #1

declare dso_local i32 @g_sched_unlock(%struct.g_geom*) #1

declare dso_local i32 @g_sched_hash_fini(%struct.g_geom*, i32*, i32, %struct.g_gsched*, i32) #1

declare dso_local i32 @g_gsched_unref(%struct.g_gsched*) #1

declare dso_local i32 @g_destroy_proxy(%struct.g_geom*, %struct.g_provider*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @g_free(%struct.g_sched_softc*) #1

declare dso_local i32 @g_wither_geom(%struct.g_geom*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
