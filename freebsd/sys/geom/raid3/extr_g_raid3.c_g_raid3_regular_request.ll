; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_regular_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_regular_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i64, i64, i32, i32, %struct.g_raid3_disk*, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.bio* }
%struct.g_raid3_disk = type { i32 }
%struct.TYPE_6__ = type { %struct.g_raid3_disk*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.g_raid3_softc* }
%struct.g_raid3_softc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Request finished.\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"bio_inbed (%u) is bigger than bio_children (%u).\00", align 1
@G_RAID3_DISK_FLAG_BROKEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Request failed (error=%d).\00", align 1
@g_raid3_disconnect_on_failure = common dso_local global i32 0, align 4
@G_RAID3_DEVICE_STATE_COMPLETE = common dso_local global i32 0, align 4
@G_RAID3_BUMP_GENID = common dso_local global i32 0, align 4
@G_RAID3_DISK_STATE_DISCONNECTED = common dso_local global i32 0, align 4
@G_RAID3_EVENT_DONTWAIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Request failed.\00", align 1
@G_RAID3_BIO_PFLAG_DEGRADED = common dso_local global i32 0, align 4
@G_RAID3_BIO_PFLAG_NOPARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_raid3_regular_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid3_regular_request(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_raid3_softc*, align 8
  %4 = alloca %struct.g_raid3_disk*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %2, align 8
  %7 = call i32 (...) @g_topology_assert_not()
  %8 = load %struct.bio*, %struct.bio** %2, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 10
  %10 = load %struct.bio*, %struct.bio** %9, align 8
  store %struct.bio* %10, %struct.bio** %5, align 8
  %11 = load %struct.bio*, %struct.bio** %5, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 9
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %16, align 8
  store %struct.g_raid3_softc* %17, %struct.g_raid3_softc** %3, align 8
  %18 = load %struct.bio*, %struct.bio** %2, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 8
  %24 = load %struct.bio*, %struct.bio** %2, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 128
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %30 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %28, %1
  %34 = load %struct.bio*, %struct.bio** %2, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %37, align 8
  store %struct.g_raid3_disk* %38, %struct.g_raid3_disk** %4, align 8
  %39 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %4, align 8
  %40 = icmp eq %struct.g_raid3_disk* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = call i32 (...) @g_topology_lock()
  %43 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %44 = load %struct.bio*, %struct.bio** %2, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = call i32 @g_raid3_kill_consumer(%struct.g_raid3_softc* %43, %struct.TYPE_6__* %46)
  %48 = call i32 (...) @g_topology_unlock()
  br label %49

49:                                               ; preds = %41, %33
  %50 = load %struct.bio*, %struct.bio** %2, align 8
  %51 = call i32 (i32, %struct.bio*, i8*, ...) @G_RAID3_LOGREQ(i32 3, %struct.bio* %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.bio*, %struct.bio** %5, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %53, align 8
  %56 = load %struct.bio*, %struct.bio** %5, align 8
  %57 = getelementptr inbounds %struct.bio, %struct.bio* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.bio*, %struct.bio** %5, align 8
  %60 = getelementptr inbounds %struct.bio, %struct.bio* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp sle i64 %58, %61
  %63 = zext i1 %62 to i32
  %64 = load %struct.bio*, %struct.bio** %5, align 8
  %65 = getelementptr inbounds %struct.bio, %struct.bio* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.bio*, %struct.bio** %5, align 8
  %68 = getelementptr inbounds %struct.bio, %struct.bio* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 @KASSERT(i32 %63, i8* %70)
  %72 = load %struct.bio*, %struct.bio** %5, align 8
  %73 = getelementptr inbounds %struct.bio, %struct.bio* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.bio*, %struct.bio** %5, align 8
  %76 = getelementptr inbounds %struct.bio, %struct.bio* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %49
  br label %215

80:                                               ; preds = %49
  %81 = load %struct.bio*, %struct.bio** %5, align 8
  %82 = getelementptr inbounds %struct.bio, %struct.bio* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  switch i64 %83, label %215 [
    i64 129, label %84
    i64 128, label %87
    i64 130, label %87
  ]

84:                                               ; preds = %80
  %85 = load %struct.bio*, %struct.bio** %5, align 8
  %86 = call i32 @g_raid3_gather(%struct.bio* %85)
  br label %215

87:                                               ; preds = %80, %80
  store i32 0, i32* %6, align 4
  %88 = load %struct.bio*, %struct.bio** %5, align 8
  %89 = getelementptr inbounds %struct.bio, %struct.bio* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.bio*, %struct.bio** %5, align 8
  %92 = getelementptr inbounds %struct.bio, %struct.bio* %91, i32 0, i32 7
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %176, %129, %102, %87
  %94 = load %struct.bio*, %struct.bio** %5, align 8
  %95 = call %struct.bio* @G_RAID3_HEAD_BIO(%struct.bio* %94)
  store %struct.bio* %95, %struct.bio** %2, align 8
  %96 = icmp ne %struct.bio* %95, null
  br i1 %96, label %97, label %180

97:                                               ; preds = %93
  %98 = load %struct.bio*, %struct.bio** %2, align 8
  %99 = getelementptr inbounds %struct.bio, %struct.bio* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %104 = load %struct.bio*, %struct.bio** %2, align 8
  %105 = call i32 @g_raid3_destroy_bio(%struct.g_raid3_softc* %103, %struct.bio* %104)
  br label %93

106:                                              ; preds = %97
  %107 = load i32, i32* %6, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load %struct.bio*, %struct.bio** %2, align 8
  %111 = getelementptr inbounds %struct.bio, %struct.bio* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %6, align 4
  br label %123

113:                                              ; preds = %106
  %114 = load %struct.bio*, %struct.bio** %5, align 8
  %115 = getelementptr inbounds %struct.bio, %struct.bio* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.bio*, %struct.bio** %5, align 8
  %121 = getelementptr inbounds %struct.bio, %struct.bio* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %118, %113
  br label %123

123:                                              ; preds = %122, %109
  %124 = load %struct.bio*, %struct.bio** %2, align 8
  %125 = getelementptr inbounds %struct.bio, %struct.bio* %124, i32 0, i32 5
  %126 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %125, align 8
  store %struct.g_raid3_disk* %126, %struct.g_raid3_disk** %4, align 8
  %127 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %4, align 8
  %128 = icmp eq %struct.g_raid3_disk* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %131 = load %struct.bio*, %struct.bio** %2, align 8
  %132 = call i32 @g_raid3_destroy_bio(%struct.g_raid3_softc* %130, %struct.bio* %131)
  br label %93

133:                                              ; preds = %123
  %134 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %4, align 8
  %135 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @G_RAID3_DISK_FLAG_BROKEN, align 4
  %138 = and i32 %136, %137
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %133
  %141 = load i32, i32* @G_RAID3_DISK_FLAG_BROKEN, align 4
  %142 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %4, align 8
  %143 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  %146 = load %struct.bio*, %struct.bio** %2, align 8
  %147 = load %struct.bio*, %struct.bio** %2, align 8
  %148 = getelementptr inbounds %struct.bio, %struct.bio* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = call i32 (i32, %struct.bio*, i8*, ...) @G_RAID3_LOGREQ(i32 0, %struct.bio* %146, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %149)
  br label %157

151:                                              ; preds = %133
  %152 = load %struct.bio*, %struct.bio** %2, align 8
  %153 = load %struct.bio*, %struct.bio** %2, align 8
  %154 = getelementptr inbounds %struct.bio, %struct.bio* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (i32, %struct.bio*, i8*, ...) @G_RAID3_LOGREQ(i32 1, %struct.bio* %152, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %151, %140
  %158 = load i32, i32* @g_raid3_disconnect_on_failure, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %176

160:                                              ; preds = %157
  %161 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %162 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @G_RAID3_DEVICE_STATE_COMPLETE, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %160
  %167 = load i32, i32* @G_RAID3_BUMP_GENID, align 4
  %168 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %169 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 4
  %172 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %4, align 8
  %173 = load i32, i32* @G_RAID3_DISK_STATE_DISCONNECTED, align 4
  %174 = load i32, i32* @G_RAID3_EVENT_DONTWAIT, align 4
  %175 = call i32 @g_raid3_event_send(%struct.g_raid3_disk* %172, i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %166, %160, %157
  %177 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %178 = load %struct.bio*, %struct.bio** %2, align 8
  %179 = call i32 @g_raid3_destroy_bio(%struct.g_raid3_softc* %177, %struct.bio* %178)
  br label %93

180:                                              ; preds = %93
  %181 = load %struct.bio*, %struct.bio** %5, align 8
  %182 = getelementptr inbounds %struct.bio, %struct.bio* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = load %struct.bio*, %struct.bio** %5, align 8
  %187 = call i32 (i32, %struct.bio*, i8*, ...) @G_RAID3_LOGREQ(i32 3, %struct.bio* %186, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %191

188:                                              ; preds = %180
  %189 = load %struct.bio*, %struct.bio** %5, align 8
  %190 = call i32 (i32, %struct.bio*, i8*, ...) @G_RAID3_LOGREQ(i32 0, %struct.bio* %189, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %191

191:                                              ; preds = %188, %185
  %192 = load i32, i32* @G_RAID3_BIO_PFLAG_DEGRADED, align 4
  %193 = xor i32 %192, -1
  %194 = load %struct.bio*, %struct.bio** %5, align 8
  %195 = getelementptr inbounds %struct.bio, %struct.bio* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, %193
  store i32 %197, i32* %195, align 4
  %198 = load i32, i32* @G_RAID3_BIO_PFLAG_NOPARITY, align 4
  %199 = xor i32 %198, -1
  %200 = load %struct.bio*, %struct.bio** %5, align 8
  %201 = getelementptr inbounds %struct.bio, %struct.bio* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = and i32 %202, %199
  store i32 %203, i32* %201, align 4
  %204 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %205 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %204, i32 0, i32 0
  %206 = load %struct.bio*, %struct.bio** %5, align 8
  %207 = call i32 @bioq_remove(i32* %205, %struct.bio* %206)
  %208 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %209 = call i32 @g_raid3_sync_release(%struct.g_raid3_softc* %208)
  %210 = load %struct.bio*, %struct.bio** %5, align 8
  %211 = load %struct.bio*, %struct.bio** %5, align 8
  %212 = getelementptr inbounds %struct.bio, %struct.bio* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @g_io_deliver(%struct.bio* %210, i32 %213)
  br label %215

215:                                              ; preds = %79, %80, %191, %84
  ret void
}

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @g_raid3_kill_consumer(%struct.g_raid3_softc*, %struct.TYPE_6__*) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @G_RAID3_LOGREQ(i32, %struct.bio*, i8*, ...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @g_raid3_gather(%struct.bio*) #1

declare dso_local %struct.bio* @G_RAID3_HEAD_BIO(%struct.bio*) #1

declare dso_local i32 @g_raid3_destroy_bio(%struct.g_raid3_softc*, %struct.bio*) #1

declare dso_local i32 @g_raid3_event_send(%struct.g_raid3_disk*, i32, i32) #1

declare dso_local i32 @bioq_remove(i32*, %struct.bio*) #1

declare dso_local i32 @g_raid3_sync_release(%struct.g_raid3_softc*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
