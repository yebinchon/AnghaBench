; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_copy_read_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_copy_read_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i64, i32, i32, %struct.TYPE_6__*, %struct.bio*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.g_journal_softc* }
%struct.g_journal_softc = type { %struct.g_consumer*, i32 }
%struct.g_consumer = type { i32 }

@GJ_BIO_COPY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Invalid bio (%d != %d).\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Error while reading data from %s (error=%d).\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"READ DONE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bio*)* @g_journal_copy_read_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_journal_copy_read_done(%struct.bio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.g_journal_softc*, align 8
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca %struct.bio*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  %7 = load %struct.bio*, %struct.bio** %3, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @GJ_BIO_COPY, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load %struct.bio*, %struct.bio** %3, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @GJ_BIO_COPY, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @KASSERT(i32 %12, i8* %17)
  %19 = load %struct.bio*, %struct.bio** %3, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 6
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.g_journal_softc*, %struct.g_journal_softc** %24, align 8
  store %struct.g_journal_softc* %25, %struct.g_journal_softc** %4, align 8
  %26 = load %struct.bio*, %struct.bio** %3, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 5
  %28 = load %struct.bio*, %struct.bio** %27, align 8
  store %struct.bio* %28, %struct.bio** %6, align 8
  %29 = load %struct.bio*, %struct.bio** %3, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %1
  %34 = load %struct.bio*, %struct.bio** %3, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bio*, %struct.bio** %3, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @GJ_DEBUG(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %38, i64 %41)
  %43 = load %struct.bio*, %struct.bio** %3, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.bio*, %struct.bio** %3, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @gj_free(i32 %45, i32 %48)
  %50 = load %struct.bio*, %struct.bio** %6, align 8
  %51 = call i32 @g_destroy_bio(%struct.bio* %50)
  %52 = load %struct.bio*, %struct.bio** %3, align 8
  %53 = call i32 @g_destroy_bio(%struct.bio* %52)
  %54 = load %struct.g_journal_softc*, %struct.g_journal_softc** %4, align 8
  %55 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %55, align 8
  store i32 1, i32* %2, align 4
  br label %74

58:                                               ; preds = %1
  %59 = load %struct.bio*, %struct.bio** %3, align 8
  %60 = getelementptr inbounds %struct.bio, %struct.bio* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.bio*, %struct.bio** %6, align 8
  %63 = getelementptr inbounds %struct.bio, %struct.bio* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.g_journal_softc*, %struct.g_journal_softc** %4, align 8
  %65 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %64, i32 0, i32 0
  %66 = load %struct.g_consumer*, %struct.g_consumer** %65, align 8
  store %struct.g_consumer* %66, %struct.g_consumer** %5, align 8
  %67 = load %struct.bio*, %struct.bio** %6, align 8
  %68 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %69 = call i32 @g_io_request(%struct.bio* %67, %struct.g_consumer* %68)
  %70 = load %struct.bio*, %struct.bio** %3, align 8
  %71 = call i32 @GJ_LOGREQ(i32 4, %struct.bio* %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.bio*, %struct.bio** %3, align 8
  %73 = call i32 @g_destroy_bio(%struct.bio* %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %58, %33
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @GJ_DEBUG(i32, i8*, i32, i64) #1

declare dso_local i32 @gj_free(i32, i32) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @g_io_request(%struct.bio*, %struct.g_consumer*) #1

declare dso_local i32 @GJ_LOGREQ(i32, %struct.bio*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
