; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/gate/extr_g_gate.c_g_gate_modify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/gate/extr_g_gate.c_g_gate_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_gate_softc = type { i64, %struct.g_consumer*, %struct.g_provider*, i32 }
%struct.g_consumer = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.g_provider = type { i32, i64, i32, i32 }
%struct.g_gate_ctl_modify = type { i32, i32, i8*, i32, i32 }

@GG_MODIFY_MEDIASIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid media size.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GG_MODIFY_INFO = common dso_local global i32 0, align 4
@GG_MODIFY_READPROV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Provider %s doesn't exist.\00", align 1
@G_CF_DIRECT_SEND = common dso_local global i32 0, align 4
@G_CF_DIRECT_RECEIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Unable to attach to %s.\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Unable to access %s.\00", align 1
@GG_MODIFY_READOFFSET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"No read provider.\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Invalid read offset.\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Invalid read offset or media size.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_gate_softc*, %struct.g_gate_ctl_modify*)* @g_gate_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_gate_modify(%struct.g_gate_softc* %0, %struct.g_gate_ctl_modify* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_gate_softc*, align 8
  %5 = alloca %struct.g_gate_ctl_modify*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca %struct.g_consumer*, align 8
  %8 = alloca i32, align 4
  store %struct.g_gate_softc* %0, %struct.g_gate_softc** %4, align 8
  store %struct.g_gate_ctl_modify* %1, %struct.g_gate_ctl_modify** %5, align 8
  %9 = load %struct.g_gate_ctl_modify*, %struct.g_gate_ctl_modify** %5, align 8
  %10 = getelementptr inbounds %struct.g_gate_ctl_modify, %struct.g_gate_ctl_modify* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @GG_MODIFY_MEDIASIZE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %2
  %16 = load %struct.g_gate_ctl_modify*, %struct.g_gate_ctl_modify** %5, align 8
  %17 = getelementptr inbounds %struct.g_gate_ctl_modify, %struct.g_gate_ctl_modify* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = call i32 (i32, i8*, ...) @G_GATE_DEBUG(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %3, align 4
  br label %223

23:                                               ; preds = %15
  %24 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %25 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %24, i32 0, i32 2
  %26 = load %struct.g_provider*, %struct.g_provider** %25, align 8
  store %struct.g_provider* %26, %struct.g_provider** %6, align 8
  %27 = load %struct.g_gate_ctl_modify*, %struct.g_gate_ctl_modify** %5, align 8
  %28 = getelementptr inbounds %struct.g_gate_ctl_modify, %struct.g_gate_ctl_modify* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %31 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = srem i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = call i32 (i32, i8*, ...) @G_GATE_DEBUG(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %3, align 4
  br label %223

38:                                               ; preds = %23
  %39 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %40 = load %struct.g_gate_ctl_modify*, %struct.g_gate_ctl_modify** %5, align 8
  %41 = getelementptr inbounds %struct.g_gate_ctl_modify, %struct.g_gate_ctl_modify* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @g_resize_provider(%struct.g_provider* %39, i32 %42)
  store i32 0, i32* %3, align 4
  br label %223

44:                                               ; preds = %2
  %45 = load %struct.g_gate_ctl_modify*, %struct.g_gate_ctl_modify** %5, align 8
  %46 = getelementptr inbounds %struct.g_gate_ctl_modify, %struct.g_gate_ctl_modify* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @GG_MODIFY_INFO, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %44
  %52 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %53 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.g_gate_ctl_modify*, %struct.g_gate_ctl_modify** %5, align 8
  %56 = getelementptr inbounds %struct.g_gate_ctl_modify, %struct.g_gate_ctl_modify* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @strlcpy(i32 %54, i32 %57, i32 4)
  br label %59

59:                                               ; preds = %51, %44
  store %struct.g_consumer* null, %struct.g_consumer** %7, align 8
  %60 = load %struct.g_gate_ctl_modify*, %struct.g_gate_ctl_modify** %5, align 8
  %61 = getelementptr inbounds %struct.g_gate_ctl_modify, %struct.g_gate_ctl_modify* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @GG_MODIFY_READPROV, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %153

66:                                               ; preds = %59
  %67 = call i32 (...) @g_topology_lock()
  %68 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %69 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %68, i32 0, i32 1
  %70 = load %struct.g_consumer*, %struct.g_consumer** %69, align 8
  %71 = icmp ne %struct.g_consumer* %70, null
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %74 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %73, i32 0, i32 1
  %75 = load %struct.g_consumer*, %struct.g_consumer** %74, align 8
  store %struct.g_consumer* %75, %struct.g_consumer** %7, align 8
  %76 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %77 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %76, i32 0, i32 1
  store %struct.g_consumer* null, %struct.g_consumer** %77, align 8
  %78 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %79 = call i32 @g_access(%struct.g_consumer* %78, i32 -1, i32 0, i32 0)
  %80 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %81 = call i32 @g_detach(%struct.g_consumer* %80)
  %82 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %83 = call i32 @g_destroy_consumer(%struct.g_consumer* %82)
  br label %84

84:                                               ; preds = %72, %66
  %85 = load %struct.g_gate_ctl_modify*, %struct.g_gate_ctl_modify** %5, align 8
  %86 = getelementptr inbounds %struct.g_gate_ctl_modify, %struct.g_gate_ctl_modify* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %152

92:                                               ; preds = %84
  %93 = load %struct.g_gate_ctl_modify*, %struct.g_gate_ctl_modify** %5, align 8
  %94 = getelementptr inbounds %struct.g_gate_ctl_modify, %struct.g_gate_ctl_modify* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = call %struct.g_provider* @g_provider_by_name(i8* %95)
  store %struct.g_provider* %96, %struct.g_provider** %6, align 8
  %97 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %98 = icmp eq %struct.g_provider* %97, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %92
  %100 = call i32 (...) @g_topology_unlock()
  %101 = load %struct.g_gate_ctl_modify*, %struct.g_gate_ctl_modify** %5, align 8
  %102 = getelementptr inbounds %struct.g_gate_ctl_modify, %struct.g_gate_ctl_modify* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 (i32, i8*, ...) @G_GATE_DEBUG(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %103)
  %105 = load i32, i32* @EINVAL, align 4
  store i32 %105, i32* %3, align 4
  br label %223

106:                                              ; preds = %92
  %107 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %108 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %107, i32 0, i32 2
  %109 = load %struct.g_provider*, %struct.g_provider** %108, align 8
  %110 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call %struct.g_consumer* @g_new_consumer(i32 %111)
  store %struct.g_consumer* %112, %struct.g_consumer** %7, align 8
  %113 = load i32, i32* @G_CF_DIRECT_SEND, align 4
  %114 = load i32, i32* @G_CF_DIRECT_RECEIVE, align 4
  %115 = or i32 %113, %114
  %116 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %117 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %121 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %122 = call i32 @g_attach(%struct.g_consumer* %120, %struct.g_provider* %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %106
  %126 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %127 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i32, i8*, ...) @G_GATE_DEBUG(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  br label %143

130:                                              ; preds = %106
  %131 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %132 = call i32 @g_access(%struct.g_consumer* %131, i32 1, i32 0, i32 0)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %137 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 (i32, i8*, ...) @G_GATE_DEBUG(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %138)
  %140 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %141 = call i32 @g_detach(%struct.g_consumer* %140)
  br label %142

142:                                              ; preds = %135, %130
  br label %143

143:                                              ; preds = %142, %125
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %148 = call i32 @g_destroy_consumer(%struct.g_consumer* %147)
  %149 = call i32 (...) @g_topology_unlock()
  %150 = load i32, i32* %8, align 4
  store i32 %150, i32* %3, align 4
  br label %223

151:                                              ; preds = %143
  br label %152

152:                                              ; preds = %151, %84
  br label %157

153:                                              ; preds = %59
  %154 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %155 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %154, i32 0, i32 1
  %156 = load %struct.g_consumer*, %struct.g_consumer** %155, align 8
  store %struct.g_consumer* %156, %struct.g_consumer** %7, align 8
  br label %157

157:                                              ; preds = %153, %152
  %158 = load %struct.g_gate_ctl_modify*, %struct.g_gate_ctl_modify** %5, align 8
  %159 = getelementptr inbounds %struct.g_gate_ctl_modify, %struct.g_gate_ctl_modify* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @GG_MODIFY_READOFFSET, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %210

164:                                              ; preds = %157
  %165 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %166 = icmp eq %struct.g_consumer* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = call i32 (i32, i8*, ...) @G_GATE_DEBUG(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %169 = load i32, i32* @EINVAL, align 4
  store i32 %169, i32* %3, align 4
  br label %223

170:                                              ; preds = %164
  %171 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %172 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %171, i32 0, i32 2
  %173 = load %struct.g_provider*, %struct.g_provider** %172, align 8
  store %struct.g_provider* %173, %struct.g_provider** %6, align 8
  %174 = load %struct.g_gate_ctl_modify*, %struct.g_gate_ctl_modify** %5, align 8
  %175 = getelementptr inbounds %struct.g_gate_ctl_modify, %struct.g_gate_ctl_modify* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %178 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = srem i32 %176, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %170
  %183 = call i32 (i32, i8*, ...) @G_GATE_DEBUG(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %184 = load i32, i32* @EINVAL, align 4
  store i32 %184, i32* %3, align 4
  br label %223

185:                                              ; preds = %170
  %186 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %187 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.g_gate_ctl_modify*, %struct.g_gate_ctl_modify** %5, align 8
  %190 = getelementptr inbounds %struct.g_gate_ctl_modify, %struct.g_gate_ctl_modify* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = add nsw i64 %188, %192
  %194 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %195 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %194, i32 0, i32 1
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp sgt i64 %193, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %185
  %201 = call i32 (i32, i8*, ...) @G_GATE_DEBUG(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %202 = load i32, i32* @EINVAL, align 4
  store i32 %202, i32* %3, align 4
  br label %223

203:                                              ; preds = %185
  %204 = load %struct.g_gate_ctl_modify*, %struct.g_gate_ctl_modify** %5, align 8
  %205 = getelementptr inbounds %struct.g_gate_ctl_modify, %struct.g_gate_ctl_modify* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = sext i32 %206 to i64
  %208 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %209 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %208, i32 0, i32 0
  store i64 %207, i64* %209, align 8
  br label %210

210:                                              ; preds = %203, %157
  %211 = load %struct.g_gate_ctl_modify*, %struct.g_gate_ctl_modify** %5, align 8
  %212 = getelementptr inbounds %struct.g_gate_ctl_modify, %struct.g_gate_ctl_modify* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @GG_MODIFY_READPROV, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %210
  %218 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %219 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %220 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %219, i32 0, i32 1
  store %struct.g_consumer* %218, %struct.g_consumer** %220, align 8
  %221 = call i32 (...) @g_topology_unlock()
  br label %222

222:                                              ; preds = %217, %210
  store i32 0, i32* %3, align 4
  br label %223

223:                                              ; preds = %222, %200, %182, %167, %146, %99, %38, %35, %20
  %224 = load i32, i32* %3, align 4
  ret i32 %224
}

declare dso_local i32 @G_GATE_DEBUG(i32, i8*, ...) #1

declare dso_local i32 @g_resize_provider(%struct.g_provider*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_detach(%struct.g_consumer*) #1

declare dso_local i32 @g_destroy_consumer(%struct.g_consumer*) #1

declare dso_local %struct.g_provider* @g_provider_by_name(i8*) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local %struct.g_consumer* @g_new_consumer(i32) #1

declare dso_local i32 @g_attach(%struct.g_consumer*, %struct.g_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
