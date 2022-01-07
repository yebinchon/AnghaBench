; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_cpufreq_dt.c_cpufreq_dt_oppv2_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cpufreq/extr_cpufreq_dt.c_cpufreq_dt_oppv2_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_dt_softc = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"operating-points-v2\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Cannot get xref to oppv2 table\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"opp-shared\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Only opp-shared is supported\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"opp-hz\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"clock-latency\00", align 1
@CPUFREQ_VAL_UNKNOWN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"turbo-mode\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"opp-suspend\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"opp-microvolt\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Wrong count of opp-microvolt property\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [23 x i8] c"%ju.%03ju Mhz (%u uV)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_dt_softc*, i64)* @cpufreq_dt_oppv2_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufreq_dt_oppv2_parse(%struct.cpufreq_dt_softc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_dt_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [2 x i64], align 16
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cpufreq_dt_softc* %0, %struct.cpufreq_dt_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @OF_getencprop(i64 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64* %8, i32 8)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %19 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i32, i8*, ...) @device_printf(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %3, align 4
  br label %285

23:                                               ; preds = %2
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @OF_node_from_xref(i64 %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %3, align 4
  br label %285

31:                                               ; preds = %23
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @OF_hasprop(i64 %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %37 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32, i8*, ...) @device_printf(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %3, align 4
  br label %285

41:                                               ; preds = %31
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @OF_child(i64 %42)
  store i64 %43, i64* %6, align 8
  br label %44

44:                                               ; preds = %52, %41
  %45 = load i64, i64* %6, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %49 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %47
  %53 = load i64, i64* %6, align 8
  %54 = call i64 @OF_peer(i64 %53)
  store i64 %54, i64* %6, align 8
  br label %44

55:                                               ; preds = %44
  %56 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %57 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = mul i64 40, %59
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* @M_DEVBUF, align 4
  %63 = load i32, i32* @M_WAITOK, align 4
  %64 = call %struct.TYPE_3__* @malloc(i32 %61, i32 %62, i32 %63)
  %65 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %66 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %65, i32 0, i32 1
  store %struct.TYPE_3__* %64, %struct.TYPE_3__** %66, align 8
  store i32 0, i32* %13, align 4
  %67 = load i64, i64* %7, align 8
  %68 = call i64 @OF_child(i64 %67)
  store i64 %68, i64* %7, align 8
  br label %69

69:                                               ; preds = %279, %55
  %70 = load i64, i64* %7, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %284

72:                                               ; preds = %69
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %75 = call i32 @OF_getencprop(i64 %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64* %74, i32 16)
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %279

78:                                               ; preds = %72
  %79 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %80 = load i64, i64* %79, align 16
  %81 = trunc i64 %80 to i32
  %82 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %83 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %82, i32 0, i32 1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i32 %81, i32* %88, align 8
  %89 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %90 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %89, i32 0, i32 1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = shl i32 %96, 32
  store i32 %97, i32* %95, align 8
  %98 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %101 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %100, i32 0, i32 1
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = or i64 %108, %99
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %106, align 8
  %111 = load i64, i64* %7, align 8
  %112 = call i32 @OF_getencprop(i64 %111, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i64* %11, i32 8)
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %123

114:                                              ; preds = %78
  %115 = load i32, i32* @CPUFREQ_VAL_UNKNOWN, align 4
  %116 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %117 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %116, i32 0, i32 1
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  store i32 %115, i32* %122, align 4
  br label %133

123:                                              ; preds = %78
  %124 = load i64, i64* %11, align 8
  %125 = trunc i64 %124 to i32
  %126 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %127 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %126, i32 0, i32 1
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  store i32 %125, i32* %132, align 4
  br label %133

133:                                              ; preds = %123, %114
  %134 = load i64, i64* %7, align 8
  %135 = call i64 @OF_hasprop(i64 %134, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %133
  %138 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %139 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %138, i32 0, i32 1
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 2
  store i32 1, i32* %144, align 8
  br label %145

145:                                              ; preds = %137, %133
  %146 = load i64, i64* %7, align 8
  %147 = call i64 @OF_hasprop(i64 %146, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %145
  %150 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %151 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %150, i32 0, i32 1
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 3
  store i32 1, i32* %156, align 4
  br label %157

157:                                              ; preds = %149, %145
  %158 = load i64, i64* %7, align 8
  %159 = bitcast i64** %10 to i8**
  %160 = call i32 @OF_getencprop_alloc_multi(i64 %158, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 8, i8** %159)
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %12, align 4
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %194

163:                                              ; preds = %157
  %164 = load i64*, i64** %10, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %168 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %167, i32 0, i32 1
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %168, align 8
  %170 = load i32, i32* %13, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 4
  store i64 %166, i64* %173, align 8
  %174 = load i64*, i64** %10, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %178 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %177, i32 0, i32 1
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %178, align 8
  %180 = load i32, i32* %13, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 6
  store i64 %176, i64* %183, align 8
  %184 = load i64*, i64** %10, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 0
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %188 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %187, i32 0, i32 1
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %188, align 8
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 5
  store i64 %186, i64* %193, align 8
  br label %242

194:                                              ; preds = %157
  %195 = load i32, i32* %12, align 4
  %196 = icmp eq i32 %195, 3
  br i1 %196, label %197, label %228

197:                                              ; preds = %194
  %198 = load i64*, i64** %10, align 8
  %199 = getelementptr inbounds i64, i64* %198, i64 0
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %202 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %201, i32 0, i32 1
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %202, align 8
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 4
  store i64 %200, i64* %207, align 8
  %208 = load i64*, i64** %10, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 1
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %212 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %211, i32 0, i32 1
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %212, align 8
  %214 = load i32, i32* %13, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 6
  store i64 %210, i64* %217, align 8
  %218 = load i64*, i64** %10, align 8
  %219 = getelementptr inbounds i64, i64* %218, i64 2
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %222 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %221, i32 0, i32 1
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %222, align 8
  %224 = load i32, i32* %13, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 5
  store i64 %220, i64* %227, align 8
  br label %241

228:                                              ; preds = %194
  %229 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %230 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = call i32 (i32, i8*, ...) @device_printf(i32 %231, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %233 = load i64*, i64** %10, align 8
  %234 = call i32 @OF_prop_free(i64* %233)
  %235 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %236 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %235, i32 0, i32 1
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %236, align 8
  %238 = load i32, i32* @M_DEVBUF, align 4
  %239 = call i32 @free(%struct.TYPE_3__* %237, i32 %238)
  %240 = load i32, i32* @ENXIO, align 4
  store i32 %240, i32* %3, align 4
  br label %285

241:                                              ; preds = %197
  br label %242

242:                                              ; preds = %241, %163
  %243 = load i64*, i64** %10, align 8
  %244 = call i32 @OF_prop_free(i64* %243)
  %245 = load i64, i64* @bootverbose, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %278

247:                                              ; preds = %242
  %248 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %249 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %252 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %251, i32 0, i32 1
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %252, align 8
  %254 = load i32, i32* %13, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = sdiv i32 %258, 1000000
  %260 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %261 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %260, i32 0, i32 1
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %261, align 8
  %263 = load i32, i32* %13, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = srem i32 %267, 1000000
  %269 = load %struct.cpufreq_dt_softc*, %struct.cpufreq_dt_softc** %4, align 8
  %270 = getelementptr inbounds %struct.cpufreq_dt_softc, %struct.cpufreq_dt_softc* %269, i32 0, i32 1
  %271 = load %struct.TYPE_3__*, %struct.TYPE_3__** %270, align 8
  %272 = load i32, i32* %13, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 4
  %276 = load i64, i64* %275, align 8
  %277 = call i32 (i32, i8*, ...) @device_printf(i32 %250, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %259, i32 %268, i64 %276)
  br label %278

278:                                              ; preds = %247, %242
  br label %279

279:                                              ; preds = %278, %77
  %280 = load i64, i64* %7, align 8
  %281 = call i64 @OF_peer(i64 %280)
  store i64 %281, i64* %7, align 8
  %282 = load i32, i32* %13, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %13, align 4
  br label %69

284:                                              ; preds = %69
  store i32 0, i32* %3, align 4
  br label %285

285:                                              ; preds = %284, %228, %35, %29, %17
  %286 = load i32, i32* %3, align 4
  ret i32 %286
}

declare dso_local i32 @OF_getencprop(i64, i8*, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @OF_node_from_xref(i64) #1

declare dso_local i64 @OF_hasprop(i64, i8*) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local %struct.TYPE_3__* @malloc(i32, i32, i32) #1

declare dso_local i32 @OF_getencprop_alloc_multi(i64, i8*, i32, i8**) #1

declare dso_local i32 @OF_prop_free(i64*) #1

declare dso_local i32 @free(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
