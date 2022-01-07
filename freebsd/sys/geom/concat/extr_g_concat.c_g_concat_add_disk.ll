; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/concat/extr_g_concat.c_g_concat_add_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/concat/extr_g_concat.c_g_concat_add_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_concat_softc = type { i64, i64, i64, i32, %struct.g_geom*, %struct.g_concat_disk* }
%struct.g_geom = type { i32 }
%struct.g_concat_disk = type { i64, i64, i64, %struct.g_concat_softc*, %struct.g_consumer* }
%struct.g_consumer = type { i32, i32, i32, i32, %struct.g_concat_disk* }
%struct.g_provider = type { i32 }
%struct.g_concat_metadata = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@G_CF_DIRECT_SEND = common dso_local global i32 0, align 4
@G_CF_DIRECT_RECEIVE = common dso_local global i32 0, align 4
@G_CONCAT_TYPE_AUTOMATIC = common dso_local global i64 0, align 8
@G_CONCAT_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Metadata on %s changed.\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Disk %s attached to %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_concat_softc*, %struct.g_provider*, i64)* @g_concat_add_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_concat_add_disk(%struct.g_concat_softc* %0, %struct.g_provider* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_concat_softc*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.g_concat_disk*, align 8
  %9 = alloca %struct.g_consumer*, align 8
  %10 = alloca %struct.g_consumer*, align 8
  %11 = alloca %struct.g_geom*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.g_concat_metadata, align 8
  store %struct.g_concat_softc* %0, %struct.g_concat_softc** %5, align 8
  store %struct.g_provider* %1, %struct.g_provider** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = call i32 (...) @g_topology_assert()
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.g_concat_softc*, %struct.g_concat_softc** %5, align 8
  %17 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %201

22:                                               ; preds = %3
  %23 = load %struct.g_concat_softc*, %struct.g_concat_softc** %5, align 8
  %24 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %23, i32 0, i32 5
  %25 = load %struct.g_concat_disk*, %struct.g_concat_disk** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %25, i64 %26
  store %struct.g_concat_disk* %27, %struct.g_concat_disk** %8, align 8
  %28 = load %struct.g_concat_disk*, %struct.g_concat_disk** %8, align 8
  %29 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %28, i32 0, i32 4
  %30 = load %struct.g_consumer*, %struct.g_consumer** %29, align 8
  %31 = icmp ne %struct.g_consumer* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* @EEXIST, align 4
  store i32 %33, i32* %4, align 4
  br label %201

34:                                               ; preds = %22
  %35 = load %struct.g_concat_softc*, %struct.g_concat_softc** %5, align 8
  %36 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %35, i32 0, i32 4
  %37 = load %struct.g_geom*, %struct.g_geom** %36, align 8
  store %struct.g_geom* %37, %struct.g_geom** %11, align 8
  %38 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  %39 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %38, i32 0, i32 0
  %40 = call %struct.g_consumer* @LIST_FIRST(i32* %39)
  store %struct.g_consumer* %40, %struct.g_consumer** %10, align 8
  %41 = load %struct.g_geom*, %struct.g_geom** %11, align 8
  %42 = call %struct.g_consumer* @g_new_consumer(%struct.g_geom* %41)
  store %struct.g_consumer* %42, %struct.g_consumer** %9, align 8
  %43 = load i32, i32* @G_CF_DIRECT_SEND, align 4
  %44 = load i32, i32* @G_CF_DIRECT_RECEIVE, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %47 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %51 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %52 = call i32 @g_attach(%struct.g_consumer* %50, %struct.g_provider* %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %34
  %56 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %57 = call i32 @g_destroy_consumer(%struct.g_consumer* %56)
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %4, align 4
  br label %201

59:                                               ; preds = %34
  %60 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %61 = icmp ne %struct.g_consumer* %60, null
  br i1 %61, label %62, label %98

62:                                               ; preds = %59
  %63 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %64 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %62
  %68 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %69 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %74 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %72, %67, %62
  %78 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %79 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %80 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %83 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %86 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @g_access(%struct.g_consumer* %78, i32 %81, i32 %84, i32 %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %77
  %92 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %93 = call i32 @g_detach(%struct.g_consumer* %92)
  %94 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %95 = call i32 @g_destroy_consumer(%struct.g_consumer* %94)
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %4, align 4
  br label %201

97:                                               ; preds = %77
  br label %98

98:                                               ; preds = %97, %72, %59
  %99 = load %struct.g_concat_softc*, %struct.g_concat_softc** %5, align 8
  %100 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @G_CONCAT_TYPE_AUTOMATIC, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %137

104:                                              ; preds = %98
  %105 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %106 = call i32 @g_concat_read_metadata(%struct.g_consumer* %105, %struct.g_concat_metadata* %13)
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %162

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.g_concat_metadata, %struct.g_concat_metadata* %13, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @G_CONCAT_MAGIC, align 4
  %114 = call i64 @strcmp(i32 %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %131, label %116

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.g_concat_metadata, %struct.g_concat_metadata* %13, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.g_concat_softc*, %struct.g_concat_softc** %5, align 8
  %120 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @strcmp(i32 %118, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %131, label %124

124:                                              ; preds = %116
  %125 = getelementptr inbounds %struct.g_concat_metadata, %struct.g_concat_metadata* %13, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.g_concat_softc*, %struct.g_concat_softc** %5, align 8
  %128 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %126, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %124, %116, %110
  %132 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %133 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i32, i8*, i32, ...) @G_CONCAT_DEBUG(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %134)
  br label %162

136:                                              ; preds = %124
  br label %137

137:                                              ; preds = %136, %98
  %138 = load %struct.g_concat_disk*, %struct.g_concat_disk** %8, align 8
  %139 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %140 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %139, i32 0, i32 4
  store %struct.g_concat_disk* %138, %struct.g_concat_disk** %140, align 8
  %141 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %142 = load %struct.g_concat_disk*, %struct.g_concat_disk** %8, align 8
  %143 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %142, i32 0, i32 4
  store %struct.g_consumer* %141, %struct.g_consumer** %143, align 8
  %144 = load %struct.g_concat_softc*, %struct.g_concat_softc** %5, align 8
  %145 = load %struct.g_concat_disk*, %struct.g_concat_disk** %8, align 8
  %146 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %145, i32 0, i32 3
  store %struct.g_concat_softc* %144, %struct.g_concat_softc** %146, align 8
  %147 = load %struct.g_concat_disk*, %struct.g_concat_disk** %8, align 8
  %148 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %147, i32 0, i32 2
  store i64 0, i64* %148, align 8
  %149 = load %struct.g_concat_disk*, %struct.g_concat_disk** %8, align 8
  %150 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %149, i32 0, i32 1
  store i64 0, i64* %150, align 8
  %151 = load %struct.g_concat_disk*, %struct.g_concat_disk** %8, align 8
  %152 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %151, i32 0, i32 0
  store i64 0, i64* %152, align 8
  %153 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %154 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.g_concat_softc*, %struct.g_concat_softc** %5, align 8
  %157 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = call i32 (i32, i8*, i32, ...) @G_CONCAT_DEBUG(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %155, i32 %158)
  %160 = load %struct.g_concat_softc*, %struct.g_concat_softc** %5, align 8
  %161 = call i32 @g_concat_check_and_run(%struct.g_concat_softc* %160)
  store i32 0, i32* %4, align 4
  br label %201

162:                                              ; preds = %131, %109
  %163 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %164 = icmp ne %struct.g_consumer* %163, null
  br i1 %164, label %165, label %195

165:                                              ; preds = %162
  %166 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %167 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %180, label %170

170:                                              ; preds = %165
  %171 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %172 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %170
  %176 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %177 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %195

180:                                              ; preds = %175, %170, %165
  %181 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %182 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %183 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = sub nsw i32 0, %184
  %186 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %187 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = sub nsw i32 0, %188
  %190 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %191 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = sub nsw i32 0, %192
  %194 = call i32 @g_access(%struct.g_consumer* %181, i32 %185, i32 %189, i32 %193)
  br label %195

195:                                              ; preds = %180, %175, %162
  %196 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %197 = call i32 @g_detach(%struct.g_consumer* %196)
  %198 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %199 = call i32 @g_destroy_consumer(%struct.g_consumer* %198)
  %200 = load i32, i32* %12, align 4
  store i32 %200, i32* %4, align 4
  br label %201

201:                                              ; preds = %195, %137, %91, %55, %32, %20
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local %struct.g_consumer* @LIST_FIRST(i32*) #1

declare dso_local %struct.g_consumer* @g_new_consumer(%struct.g_geom*) #1

declare dso_local i32 @g_attach(%struct.g_consumer*, %struct.g_provider*) #1

declare dso_local i32 @g_destroy_consumer(%struct.g_consumer*) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_detach(%struct.g_consumer*) #1

declare dso_local i32 @g_concat_read_metadata(%struct.g_consumer*, %struct.g_concat_metadata*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @G_CONCAT_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @g_concat_check_and_run(%struct.g_concat_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
