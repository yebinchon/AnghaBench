; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/stripe/extr_g_stripe.c_g_stripe_add_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/stripe/extr_g_stripe.c_g_stripe_add_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_stripe_softc = type { i64, i64, i64, i32, %struct.g_consumer**, %struct.g_geom* }
%struct.g_consumer = type { i32, i64, i32, i32, i32, i32* }
%struct.g_geom = type { i32 }
%struct.g_provider = type { i32 }
%struct.g_stripe_metadata = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@G_CF_DIRECT_SEND = common dso_local global i32 0, align 4
@G_CF_DIRECT_RECEIVE = common dso_local global i32 0, align 4
@G_STRIPE_TYPE_AUTOMATIC = common dso_local global i64 0, align 8
@G_STRIPE_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Metadata on %s changed.\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Disk %s attached to %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_stripe_softc*, %struct.g_provider*, i64)* @g_stripe_add_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_stripe_add_disk(%struct.g_stripe_softc* %0, %struct.g_provider* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_stripe_softc*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.g_consumer*, align 8
  %9 = alloca %struct.g_consumer*, align 8
  %10 = alloca %struct.g_geom*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.g_stripe_metadata, align 8
  store %struct.g_stripe_softc* %0, %struct.g_stripe_softc** %5, align 8
  store %struct.g_provider* %1, %struct.g_provider** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = call i32 (...) @g_topology_assert()
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %5, align 8
  %16 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp uge i64 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %194

21:                                               ; preds = %3
  %22 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %5, align 8
  %23 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %22, i32 0, i32 4
  %24 = load %struct.g_consumer**, %struct.g_consumer*** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.g_consumer*, %struct.g_consumer** %24, i64 %25
  %27 = load %struct.g_consumer*, %struct.g_consumer** %26, align 8
  %28 = icmp ne %struct.g_consumer* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @EEXIST, align 4
  store i32 %30, i32* %4, align 4
  br label %194

31:                                               ; preds = %21
  %32 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %5, align 8
  %33 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %32, i32 0, i32 5
  %34 = load %struct.g_geom*, %struct.g_geom** %33, align 8
  store %struct.g_geom* %34, %struct.g_geom** %10, align 8
  %35 = load %struct.g_geom*, %struct.g_geom** %10, align 8
  %36 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %35, i32 0, i32 0
  %37 = call %struct.g_consumer* @LIST_FIRST(i32* %36)
  store %struct.g_consumer* %37, %struct.g_consumer** %9, align 8
  %38 = load %struct.g_geom*, %struct.g_geom** %10, align 8
  %39 = call %struct.g_consumer* @g_new_consumer(%struct.g_geom* %38)
  store %struct.g_consumer* %39, %struct.g_consumer** %8, align 8
  %40 = load i32, i32* @G_CF_DIRECT_SEND, align 4
  %41 = load i32, i32* @G_CF_DIRECT_RECEIVE, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %44 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %48 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %47, i32 0, i32 5
  store i32* null, i32** %48, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %51 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %53 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %54 = call i32 @g_attach(%struct.g_consumer* %52, %struct.g_provider* %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %31
  %58 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %59 = call i32 @g_destroy_consumer(%struct.g_consumer* %58)
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %4, align 4
  br label %194

61:                                               ; preds = %31
  %62 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %63 = icmp ne %struct.g_consumer* %62, null
  br i1 %63, label %64, label %100

64:                                               ; preds = %61
  %65 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %66 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %64
  %70 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %71 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %76 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %100

79:                                               ; preds = %74, %69, %64
  %80 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %81 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %82 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %85 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %88 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @g_access(%struct.g_consumer* %80, i32 %83, i32 %86, i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %79
  %94 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %95 = call i32 @g_detach(%struct.g_consumer* %94)
  %96 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %97 = call i32 @g_destroy_consumer(%struct.g_consumer* %96)
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %4, align 4
  br label %194

99:                                               ; preds = %79
  br label %100

100:                                              ; preds = %99, %74, %61
  %101 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %5, align 8
  %102 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @G_STRIPE_TYPE_AUTOMATIC, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %139

106:                                              ; preds = %100
  %107 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %108 = call i32 @g_stripe_read_metadata(%struct.g_consumer* %107, %struct.g_stripe_metadata* %12)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %155

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.g_stripe_metadata, %struct.g_stripe_metadata* %12, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @G_STRIPE_MAGIC, align 4
  %116 = call i64 @strcmp(i32 %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %133, label %118

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.g_stripe_metadata, %struct.g_stripe_metadata* %12, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %5, align 8
  %122 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @strcmp(i32 %120, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %118
  %127 = getelementptr inbounds %struct.g_stripe_metadata, %struct.g_stripe_metadata* %12, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %5, align 8
  %130 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %128, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %126, %118, %112
  %134 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %135 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i32, i8*, i32, ...) @G_STRIPE_DEBUG(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %136)
  br label %155

138:                                              ; preds = %126
  br label %139

139:                                              ; preds = %138, %100
  %140 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %141 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %5, align 8
  %142 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %141, i32 0, i32 4
  %143 = load %struct.g_consumer**, %struct.g_consumer*** %142, align 8
  %144 = load i64, i64* %7, align 8
  %145 = getelementptr inbounds %struct.g_consumer*, %struct.g_consumer** %143, i64 %144
  store %struct.g_consumer* %140, %struct.g_consumer** %145, align 8
  %146 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %147 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %5, align 8
  %150 = getelementptr inbounds %struct.g_stripe_softc, %struct.g_stripe_softc* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (i32, i8*, i32, ...) @G_STRIPE_DEBUG(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %148, i32 %151)
  %153 = load %struct.g_stripe_softc*, %struct.g_stripe_softc** %5, align 8
  %154 = call i32 @g_stripe_check_and_run(%struct.g_stripe_softc* %153)
  store i32 0, i32* %4, align 4
  br label %194

155:                                              ; preds = %133, %111
  %156 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %157 = icmp ne %struct.g_consumer* %156, null
  br i1 %157, label %158, label %188

158:                                              ; preds = %155
  %159 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %160 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %173, label %163

163:                                              ; preds = %158
  %164 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %165 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %163
  %169 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %170 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %188

173:                                              ; preds = %168, %163, %158
  %174 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %175 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %176 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = sub nsw i32 0, %177
  %179 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %180 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = sub nsw i32 0, %181
  %183 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %184 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = sub nsw i32 0, %185
  %187 = call i32 @g_access(%struct.g_consumer* %174, i32 %178, i32 %182, i32 %186)
  br label %188

188:                                              ; preds = %173, %168, %155
  %189 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %190 = call i32 @g_detach(%struct.g_consumer* %189)
  %191 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %192 = call i32 @g_destroy_consumer(%struct.g_consumer* %191)
  %193 = load i32, i32* %11, align 4
  store i32 %193, i32* %4, align 4
  br label %194

194:                                              ; preds = %188, %139, %93, %57, %29, %19
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local %struct.g_consumer* @LIST_FIRST(i32*) #1

declare dso_local %struct.g_consumer* @g_new_consumer(%struct.g_geom*) #1

declare dso_local i32 @g_attach(%struct.g_consumer*, %struct.g_provider*) #1

declare dso_local i32 @g_destroy_consumer(%struct.g_consumer*) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_detach(%struct.g_consumer*) #1

declare dso_local i32 @g_stripe_read_metadata(%struct.g_consumer*, %struct.g_stripe_metadata*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @G_STRIPE_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @g_stripe_check_and_run(%struct.g_stripe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
