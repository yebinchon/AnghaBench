; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/cache/extr_g_cache.c_g_cache_ctl_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/cache/extr_g_cache.c_g_cache_ctl_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_cache_metadata = type { i8*, i8*, i32, i32, i64, i32 }
%struct.g_provider = type { i32 }
%struct.g_geom = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"No '%s' argument\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid number of arguments.\00", align 1
@G_CACHE_MAGIC = common dso_local global i8* null, align 8
@G_CACHE_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"No 'arg0' argument\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Invalid '%s' argument\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"blocksize\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"arg1\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"No 'arg1' argument\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Provider %s is invalid.\00", align 1
@G_CACHE_TYPE_MANUAL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"Can't create %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*)* @g_cache_ctl_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_cache_ctl_create(%struct.gctl_req* %0, %struct.g_class* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca %struct.g_cache_metadata, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca %struct.g_geom*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_class* %1, %struct.g_class** %4, align 8
  %12 = call i32 (...) @g_topology_assert()
  %13 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %14 = call i8* @gctl_get_paraml(%struct.gctl_req* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %11, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %20 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %129

21:                                               ; preds = %2
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 2
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %27 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %129

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %5, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** @G_CACHE_MAGIC, align 8
  %32 = call i32 @strlcpy(i8* %30, i8* %31, i32 8)
  %33 = load i32, i32* @G_CACHE_VERSION, align 4
  %34 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %5, i32 0, i32 5
  store i32 %33, i32* %34, align 8
  %35 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %36 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %36, i8** %10, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %41 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %129

42:                                               ; preds = %28
  %43 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %5, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @strlcpy(i8* %44, i8* %45, i32 8)
  %47 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %48 = call i8* @gctl_get_paraml(%struct.gctl_req* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %49 = bitcast i8* %48 to i64*
  store i64* %49, i64** %9, align 8
  %50 = load i64*, i64** %9, align 8
  %51 = icmp eq i64* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %54 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %129

55:                                               ; preds = %42
  %56 = load i64*, i64** %9, align 8
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = icmp slt i32 %58, 100
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %62 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %129

63:                                               ; preds = %55
  %64 = load i64*, i64** %9, align 8
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %5, i32 0, i32 2
  store i32 %66, i32* %67, align 8
  %68 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %69 = call i8* @gctl_get_paraml(%struct.gctl_req* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 8)
  %70 = bitcast i8* %69 to i64*
  store i64* %70, i64** %8, align 8
  %71 = load i64*, i64** %8, align 8
  %72 = icmp eq i64* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %75 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %129

76:                                               ; preds = %63
  %77 = load i64*, i64** %8, align 8
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %82 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %129

83:                                               ; preds = %76
  %84 = load i64*, i64** %8, align 8
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %5, i32 0, i32 3
  store i32 %86, i32* %87, align 4
  %88 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %5, i32 0, i32 4
  store i64 0, i64* %88, align 8
  %89 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %90 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store i8* %90, i8** %10, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %83
  %94 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %95 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %129

96:                                               ; preds = %83
  %97 = load i8*, i8** %10, align 8
  %98 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %99 = call i64 @strncmp(i8* %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %103 = load i8*, i8** %10, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8* %105, i8** %10, align 8
  br label %106

106:                                              ; preds = %101, %96
  %107 = load i8*, i8** %10, align 8
  %108 = call %struct.g_provider* @g_provider_by_name(i8* %107)
  store %struct.g_provider* %108, %struct.g_provider** %6, align 8
  %109 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %110 = icmp eq %struct.g_provider* %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load i8*, i8** %10, align 8
  %113 = call i32 @G_CACHE_DEBUG(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i8* %112)
  %114 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %114, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i8* %115)
  br label %129

117:                                              ; preds = %106
  %118 = load %struct.g_class*, %struct.g_class** %4, align 8
  %119 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %120 = load i32, i32* @G_CACHE_TYPE_MANUAL, align 4
  %121 = call %struct.g_geom* @g_cache_create(%struct.g_class* %118, %struct.g_provider* %119, %struct.g_cache_metadata* %5, i32 %120)
  store %struct.g_geom* %121, %struct.g_geom** %7, align 8
  %122 = load %struct.g_geom*, %struct.g_geom** %7, align 8
  %123 = icmp eq %struct.g_geom* %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %117
  %125 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %126 = getelementptr inbounds %struct.g_cache_metadata, %struct.g_cache_metadata* %5, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %125, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %127)
  br label %129

129:                                              ; preds = %18, %25, %39, %52, %60, %73, %80, %93, %111, %124, %117
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i8* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.g_provider* @g_provider_by_name(i8*) #1

declare dso_local i32 @G_CACHE_DEBUG(i32, i8*, i8*) #1

declare dso_local %struct.g_geom* @g_cache_create(%struct.g_class*, %struct.g_provider*, %struct.g_cache_metadata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
