; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/shsec/extr_g_shsec.c_g_shsec_add_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/shsec/extr_g_shsec.c_g_shsec_add_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_shsec_softc = type { i64, i64, i32, %struct.g_consumer**, %struct.g_geom* }
%struct.g_consumer = type { i64, i32, i32, i32, %struct.g_shsec_softc* }
%struct.g_geom = type { i32 }
%struct.g_provider = type { i32 }
%struct.g_shsec_metadata = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@G_SHSEC_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Metadata on %s changed.\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Disk %s attached to %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_shsec_softc*, %struct.g_provider*, i64)* @g_shsec_add_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_shsec_add_disk(%struct.g_shsec_softc* %0, %struct.g_provider* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_shsec_softc*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.g_consumer*, align 8
  %9 = alloca %struct.g_consumer*, align 8
  %10 = alloca %struct.g_geom*, align 8
  %11 = alloca %struct.g_shsec_metadata, align 8
  %12 = alloca i32, align 4
  store %struct.g_shsec_softc* %0, %struct.g_shsec_softc** %5, align 8
  store %struct.g_provider* %1, %struct.g_provider** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %5, align 8
  %15 = getelementptr inbounds %struct.g_shsec_softc, %struct.g_shsec_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %180

20:                                               ; preds = %3
  %21 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %5, align 8
  %22 = getelementptr inbounds %struct.g_shsec_softc, %struct.g_shsec_softc* %21, i32 0, i32 3
  %23 = load %struct.g_consumer**, %struct.g_consumer*** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.g_consumer*, %struct.g_consumer** %23, i64 %24
  %26 = load %struct.g_consumer*, %struct.g_consumer** %25, align 8
  %27 = icmp ne %struct.g_consumer* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @EEXIST, align 4
  store i32 %29, i32* %4, align 4
  br label %180

30:                                               ; preds = %20
  %31 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %5, align 8
  %32 = getelementptr inbounds %struct.g_shsec_softc, %struct.g_shsec_softc* %31, i32 0, i32 4
  %33 = load %struct.g_geom*, %struct.g_geom** %32, align 8
  store %struct.g_geom* %33, %struct.g_geom** %10, align 8
  %34 = load %struct.g_geom*, %struct.g_geom** %10, align 8
  %35 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %34, i32 0, i32 0
  %36 = call %struct.g_consumer* @LIST_FIRST(i32* %35)
  store %struct.g_consumer* %36, %struct.g_consumer** %9, align 8
  %37 = load %struct.g_geom*, %struct.g_geom** %10, align 8
  %38 = call %struct.g_consumer* @g_new_consumer(%struct.g_geom* %37)
  store %struct.g_consumer* %38, %struct.g_consumer** %8, align 8
  %39 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %40 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %41 = call i32 @g_attach(%struct.g_consumer* %39, %struct.g_provider* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %30
  %45 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %46 = call i32 @g_destroy_consumer(%struct.g_consumer* %45)
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %4, align 4
  br label %180

48:                                               ; preds = %30
  %49 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %50 = icmp ne %struct.g_consumer* %49, null
  br i1 %50, label %51, label %87

51:                                               ; preds = %48
  %52 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %53 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %58 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %63 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %61, %56, %51
  %67 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %68 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %69 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %72 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %75 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @g_access(%struct.g_consumer* %67, i32 %70, i32 %73, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %66
  %81 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %82 = call i32 @g_detach(%struct.g_consumer* %81)
  %83 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %84 = call i32 @g_destroy_consumer(%struct.g_consumer* %83)
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %4, align 4
  br label %180

86:                                               ; preds = %66
  br label %87

87:                                               ; preds = %86, %61, %48
  %88 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %89 = call i32 @g_shsec_read_metadata(%struct.g_consumer* %88, %struct.g_shsec_metadata* %11)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %141

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.g_shsec_metadata, %struct.g_shsec_metadata* %11, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @G_SHSEC_MAGIC, align 4
  %97 = call i64 @strcmp(i32 %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %114, label %99

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.g_shsec_metadata, %struct.g_shsec_metadata* %11, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %5, align 8
  %103 = getelementptr inbounds %struct.g_shsec_softc, %struct.g_shsec_softc* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @strcmp(i32 %101, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %99
  %108 = getelementptr inbounds %struct.g_shsec_metadata, %struct.g_shsec_metadata* %11, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %5, align 8
  %111 = getelementptr inbounds %struct.g_shsec_softc, %struct.g_shsec_softc* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %109, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %107, %99, %93
  %115 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %116 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32, i8*, i32, ...) @G_SHSEC_DEBUG(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %117)
  br label %141

119:                                              ; preds = %107
  %120 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %5, align 8
  %121 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %122 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %121, i32 0, i32 4
  store %struct.g_shsec_softc* %120, %struct.g_shsec_softc** %122, align 8
  %123 = load i64, i64* %7, align 8
  %124 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %125 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  %126 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %127 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %5, align 8
  %128 = getelementptr inbounds %struct.g_shsec_softc, %struct.g_shsec_softc* %127, i32 0, i32 3
  %129 = load %struct.g_consumer**, %struct.g_consumer*** %128, align 8
  %130 = load i64, i64* %7, align 8
  %131 = getelementptr inbounds %struct.g_consumer*, %struct.g_consumer** %129, i64 %130
  store %struct.g_consumer* %126, %struct.g_consumer** %131, align 8
  %132 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %133 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %5, align 8
  %136 = getelementptr inbounds %struct.g_shsec_softc, %struct.g_shsec_softc* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i32, i8*, i32, ...) @G_SHSEC_DEBUG(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %134, i32 %137)
  %139 = load %struct.g_shsec_softc*, %struct.g_shsec_softc** %5, align 8
  %140 = call i32 @g_shsec_check_and_run(%struct.g_shsec_softc* %139)
  store i32 0, i32* %4, align 4
  br label %180

141:                                              ; preds = %114, %92
  %142 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %143 = icmp ne %struct.g_consumer* %142, null
  br i1 %143, label %144, label %174

144:                                              ; preds = %141
  %145 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %146 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %159, label %149

149:                                              ; preds = %144
  %150 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %151 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %149
  %155 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %156 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %174

159:                                              ; preds = %154, %149, %144
  %160 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %161 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %162 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = sub nsw i32 0, %163
  %165 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %166 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = sub nsw i32 0, %167
  %169 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %170 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = sub nsw i32 0, %171
  %173 = call i32 @g_access(%struct.g_consumer* %160, i32 %164, i32 %168, i32 %172)
  br label %174

174:                                              ; preds = %159, %154, %141
  %175 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %176 = call i32 @g_detach(%struct.g_consumer* %175)
  %177 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %178 = call i32 @g_destroy_consumer(%struct.g_consumer* %177)
  %179 = load i32, i32* %12, align 4
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %174, %119, %80, %44, %28, %18
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local %struct.g_consumer* @LIST_FIRST(i32*) #1

declare dso_local %struct.g_consumer* @g_new_consumer(%struct.g_geom*) #1

declare dso_local i32 @g_attach(%struct.g_consumer*, %struct.g_provider*) #1

declare dso_local i32 @g_destroy_consumer(%struct.g_consumer*) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_detach(%struct.g_consumer*) #1

declare dso_local i32 @g_shsec_read_metadata(%struct.g_consumer*, %struct.g_shsec_metadata*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @G_SHSEC_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @g_shsec_check_and_run(%struct.g_shsec_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
