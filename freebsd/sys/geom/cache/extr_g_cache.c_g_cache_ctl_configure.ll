; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/cache/extr_g_cache.c_g_cache_ctl_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/cache/extr_g_cache.c_g_cache_ctl_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_cache_metadata = type { i32, i64, i64, i32, i32, i32 }
%struct.g_cache_softc = type { i64, %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.g_consumer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"No '%s' argument\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Missing device.\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"No 'arg0' argument\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Device %s is invalid.\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Invalid '%s' argument\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"blocksize\00", align 1
@G_CACHE_TYPE_AUTOMATIC = common dso_local global i64 0, align 8
@G_CACHE_MAGIC = common dso_local global i8* null, align 8
@G_CACHE_VERSION = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"Metadata on %s updated.\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Cannot update metadata on %s (error=%d).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*)* @g_cache_ctl_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_cache_ctl_configure(%struct.gctl_req* %0, %struct.g_class* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca %struct.g_cache_metadata, align 8
  %6 = alloca %struct.g_cache_softc*, align 8
  %7 = alloca %struct.g_consumer*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_class* %1, %struct.g_class** %4, align 8
  %13 = call i32 (...) @g_topology_assert()
  %14 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %15 = call i8* @gctl_get_paraml(%struct.gctl_req* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %12, align 8
  %17 = load i32*, i32** %12, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %21 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %172

22:                                               ; preds = %2
  %23 = load i32*, i32** %12, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %28 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %172

29:                                               ; preds = %22
  %30 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %31 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %36 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %172

37:                                               ; preds = %29
  %38 = load %struct.g_class*, %struct.g_class** %4, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = call %struct.g_cache_softc* @g_cache_find_device(%struct.g_class* %38, i8* %39)
  store %struct.g_cache_softc* %40, %struct.g_cache_softc** %6, align 8
  %41 = load %struct.g_cache_softc*, %struct.g_cache_softc** %6, align 8
  %42 = icmp eq %struct.g_cache_softc* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 (i32, i8*, i8*, ...) @G_CACHE_DEBUG(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %44)
  %46 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %47)
  br label %172

49:                                               ; preds = %37
  %50 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %51 = call i8* @gctl_get_paraml(%struct.gctl_req* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 8)
  %52 = bitcast i8* %51 to i64*
  store i64* %52, i64** %9, align 8
  %53 = load i64*, i64** %9, align 8
  %54 = icmp eq i64* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %57 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %172

58:                                               ; preds = %49
  %59 = load i64*, i64** %9, align 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load i64*, i64** %9, align 8
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %64, 100
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %68 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %172

69:                                               ; preds = %62, %58
  %70 = load i64*, i64** %9, align 8
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i64*, i64** %9, align 8
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.g_cache_softc*, %struct.g_cache_softc** %6, align 8
  %77 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %76, i32 0, i32 3
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %73, %69
  %79 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %80 = call i8* @gctl_get_paraml(%struct.gctl_req* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 8)
  %81 = bitcast i8* %80 to i64*
  store i64* %81, i64** %8, align 8
  %82 = load i64*, i64** %8, align 8
  %83 = icmp eq i64* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %86 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %172

87:                                               ; preds = %78
  %88 = load i64*, i64** %8, align 8
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %93 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %172

94:                                               ; preds = %87
  %95 = load %struct.g_cache_softc*, %struct.g_cache_softc** %6, align 8
  %96 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @G_CACHE_TYPE_AUTOMATIC, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %172

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %5, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = call i32 @strlcpy(i32 %103, i8* %104, i32 4)
  %106 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %5, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load i8*, i8** @G_CACHE_MAGIC, align 8
  %109 = call i32 @strlcpy(i32 %107, i8* %108, i32 4)
  %110 = load i32, i32* @G_CACHE_VERSION, align 4
  %111 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %5, i32 0, i32 3
  store i32 %110, i32* %111, align 8
  %112 = load i64*, i64** %9, align 8
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %101
  %116 = load i64*, i64** %9, align 8
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %5, i32 0, i32 2
  store i64 %117, i64* %118, align 8
  br label %124

119:                                              ; preds = %101
  %120 = load %struct.g_cache_softc*, %struct.g_cache_softc** %6, align 8
  %121 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %5, i32 0, i32 2
  store i64 %122, i64* %123, align 8
  br label %124

124:                                              ; preds = %119, %115
  %125 = load i64*, i64** %8, align 8
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load i64*, i64** %8, align 8
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %5, i32 0, i32 1
  store i64 %130, i64* %131, align 8
  br label %137

132:                                              ; preds = %124
  %133 = load %struct.g_cache_softc*, %struct.g_cache_softc** %6, align 8
  %134 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %5, i32 0, i32 1
  store i64 %135, i64* %136, align 8
  br label %137

137:                                              ; preds = %132, %128
  %138 = load %struct.g_cache_softc*, %struct.g_cache_softc** %6, align 8
  %139 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %138, i32 0, i32 1
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = call %struct.g_consumer* @LIST_FIRST(i32* %141)
  store %struct.g_consumer* %142, %struct.g_consumer** %7, align 8
  %143 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %144 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %143, i32 0, i32 0
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %5, i32 0, i32 0
  store i32 %147, i32* %148, align 8
  %149 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %150 = call i32 @g_cache_write_metadata(%struct.g_consumer* %149, %struct.g_cache_metadata* %5)
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %137
  %154 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %155 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %154, i32 0, i32 0
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to i8*
  %161 = call i32 (i32, i8*, i8*, ...) @G_CACHE_DEBUG(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %160)
  br label %172

162:                                              ; preds = %137
  %163 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %164 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %163, i32 0, i32 0
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = inttoptr i64 %168 to i8*
  %170 = load i32, i32* %11, align 4
  %171 = call i32 (i32, i8*, i8*, ...) @G_CACHE_DEBUG(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8* %169, i32 %170)
  br label %172

172:                                              ; preds = %19, %26, %34, %43, %55, %66, %84, %91, %100, %162, %153
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i8* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #1

declare dso_local %struct.g_cache_softc* @g_cache_find_device(%struct.g_class*, i8*) #1

declare dso_local i32 @G_CACHE_DEBUG(i32, i8*, i8*, ...) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local %struct.g_consumer* @LIST_FIRST(i32*) #1

declare dso_local i32 @g_cache_write_metadata(%struct.g_consumer*, %struct.g_cache_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
