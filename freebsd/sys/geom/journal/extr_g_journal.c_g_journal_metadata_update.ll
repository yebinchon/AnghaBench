; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_metadata_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_metadata_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_journal_softc = type { i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, %struct.g_consumer* }
%struct.TYPE_3__ = type { i32 }
%struct.g_consumer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.g_journal_metadata = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bio = type { i32 (%struct.bio*)*, i32, i32*, i64, i64 }

@M_WAITOK = common dso_local global i32 0, align 4
@G_JOURNAL_MAGIC = common dso_local global i32 0, align 4
@G_JOURNAL_VERSION = common dso_local global i32 0, align 4
@GJF_DEVICE_CLEAN = common dso_local global i32 0, align 4
@GJ_FLAG_CLEAN = common dso_local global i32 0, align 4
@GJF_DEVICE_HARDCODED = common dso_local global i32 0, align 4
@BIO_WRITE = common dso_local global i32 0, align 4
@GJF_DEVICE_DESTROY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"gjmdu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_journal_softc*)* @g_journal_metadata_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_journal_metadata_update(%struct.g_journal_softc* %0) #0 {
  %2 = alloca %struct.g_journal_softc*, align 8
  %3 = alloca %struct.g_journal_metadata, align 8
  %4 = alloca %struct.g_consumer*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32*, align 8
  store %struct.g_journal_softc* %0, %struct.g_journal_softc** %2, align 8
  %7 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %8 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %7, i32 0, i32 8
  %9 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  store %struct.g_consumer* %9, %struct.g_consumer** %4, align 8
  %10 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %11 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @M_WAITOK, align 4
  %16 = call i32* @gj_malloc(i64 %14, i32 %15)
  store i32* %16, i32** %6, align 8
  %17 = getelementptr inbounds %struct.g_journal_metadata, %struct.g_journal_metadata* %3, i32 0, i32 10
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @G_JOURNAL_MAGIC, align 4
  %20 = call i32 @strlcpy(i32 %18, i32 %19, i32 4)
  %21 = load i32, i32* @G_JOURNAL_VERSION, align 4
  %22 = getelementptr inbounds %struct.g_journal_metadata, %struct.g_journal_metadata* %3, i32 0, i32 9
  store i32 %21, i32* %22, align 8
  %23 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %24 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.g_journal_metadata, %struct.g_journal_metadata* %3, i32 0, i32 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %28 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.g_journal_metadata, %struct.g_journal_metadata* %3, i32 0, i32 7
  store i32 %29, i32* %30, align 8
  %31 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %32 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.g_journal_metadata, %struct.g_journal_metadata* %3, i32 0, i32 6
  store i32 %33, i32* %34, align 4
  %35 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %36 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.g_journal_metadata, %struct.g_journal_metadata* %3, i32 0, i32 5
  store i32 %37, i32* %38, align 8
  %39 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %40 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.g_journal_metadata, %struct.g_journal_metadata* %3, i32 0, i32 4
  store i32 %42, i32* %43, align 4
  %44 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %45 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.g_journal_metadata, %struct.g_journal_metadata* %3, i32 0, i32 3
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.g_journal_metadata, %struct.g_journal_metadata* %3, i32 0, i32 2
  store i32 0, i32* %48, align 4
  %49 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %50 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @GJF_DEVICE_CLEAN, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %1
  %56 = load i32, i32* @GJ_FLAG_CLEAN, align 4
  %57 = getelementptr inbounds %struct.g_journal_metadata, %struct.g_journal_metadata* %3, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %55, %1
  %61 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %62 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @GJF_DEVICE_HARDCODED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.g_journal_metadata, %struct.g_journal_metadata* %3, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %71 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @strlcpy(i32 %69, i32 %72, i32 4)
  br label %78

74:                                               ; preds = %60
  %75 = getelementptr inbounds %struct.g_journal_metadata, %struct.g_journal_metadata* %3, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @bzero(i32 %76, i32 4)
  br label %78

78:                                               ; preds = %74, %67
  %79 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %80 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.g_journal_metadata, %struct.g_journal_metadata* %3, i32 0, i32 0
  store i64 %83, i64* %84, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @journal_metadata_encode(%struct.g_journal_metadata* %3, i32* %85)
  %87 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %88 = call i32 @g_journal_flush_cache(%struct.g_journal_softc* %87)
  %89 = call %struct.bio* (...) @g_alloc_bio()
  store %struct.bio* %89, %struct.bio** %5, align 8
  %90 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %91 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %96 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %94, %99
  %101 = load %struct.bio*, %struct.bio** %5, align 8
  %102 = getelementptr inbounds %struct.bio, %struct.bio* %101, i32 0, i32 4
  store i64 %100, i64* %102, align 8
  %103 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %104 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.bio*, %struct.bio** %5, align 8
  %109 = getelementptr inbounds %struct.bio, %struct.bio* %108, i32 0, i32 3
  store i64 %107, i64* %109, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = load %struct.bio*, %struct.bio** %5, align 8
  %112 = getelementptr inbounds %struct.bio, %struct.bio* %111, i32 0, i32 2
  store i32* %110, i32** %112, align 8
  %113 = load i32, i32* @BIO_WRITE, align 4
  %114 = load %struct.bio*, %struct.bio** %5, align 8
  %115 = getelementptr inbounds %struct.bio, %struct.bio* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  %116 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %117 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @GJF_DEVICE_DESTROY, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %78
  %123 = load %struct.bio*, %struct.bio** %5, align 8
  %124 = getelementptr inbounds %struct.bio, %struct.bio* %123, i32 0, i32 0
  store i32 (%struct.bio*)* @g_journal_metadata_done, i32 (%struct.bio*)** %124, align 8
  %125 = load %struct.bio*, %struct.bio** %5, align 8
  %126 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %127 = call i32 @g_io_request(%struct.bio* %125, %struct.g_consumer* %126)
  br label %138

128:                                              ; preds = %78
  %129 = load %struct.bio*, %struct.bio** %5, align 8
  %130 = getelementptr inbounds %struct.bio, %struct.bio* %129, i32 0, i32 0
  store i32 (%struct.bio*)* null, i32 (%struct.bio*)** %130, align 8
  %131 = load %struct.bio*, %struct.bio** %5, align 8
  %132 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %133 = call i32 @g_io_request(%struct.bio* %131, %struct.g_consumer* %132)
  %134 = load %struct.bio*, %struct.bio** %5, align 8
  %135 = call i32 @biowait(%struct.bio* %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %136 = load %struct.bio*, %struct.bio** %5, align 8
  %137 = call i32 @g_journal_metadata_done(%struct.bio* %136)
  br label %138

138:                                              ; preds = %128, %122
  %139 = load %struct.g_journal_softc*, %struct.g_journal_softc** %2, align 8
  %140 = call i32 @g_journal_flush_cache(%struct.g_journal_softc* %139)
  ret void
}

declare dso_local i32* @gj_malloc(i64, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @journal_metadata_encode(%struct.g_journal_metadata*, i32*) #1

declare dso_local i32 @g_journal_flush_cache(%struct.g_journal_softc*) #1

declare dso_local %struct.bio* @g_alloc_bio(...) #1

declare dso_local i32 @g_journal_metadata_done(%struct.bio*) #1

declare dso_local i32 @g_io_request(%struct.bio*, %struct.g_consumer*) #1

declare dso_local i32 @biowait(%struct.bio*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
