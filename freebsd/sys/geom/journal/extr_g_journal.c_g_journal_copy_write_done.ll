; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_copy_write_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_copy_write_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.g_journal_softc* }
%struct.g_journal_softc = type { i64, i64, i32 }

@GJ_BIO_COPY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Invalid bio (%d != %d).\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"[copy] Error while writing data (error=%d)\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DONE\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Data has been copied.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_journal_copy_write_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_journal_copy_write_done(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_journal_softc*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = getelementptr inbounds %struct.bio, %struct.bio* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @GJ_BIO_COPY, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load %struct.bio*, %struct.bio** %2, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @GJ_BIO_COPY, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @KASSERT(i32 %9, i8* %14)
  %16 = load %struct.bio*, %struct.bio** %2, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.g_journal_softc*, %struct.g_journal_softc** %21, align 8
  store %struct.g_journal_softc* %22, %struct.g_journal_softc** %3, align 8
  %23 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %24 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.bio*, %struct.bio** %2, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load %struct.bio*, %struct.bio** %2, align 8
  %33 = load %struct.bio*, %struct.bio** %2, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 (i32, %struct.bio*, i8*, ...) @GJ_LOGREQ(i32 0, %struct.bio* %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  br label %37

37:                                               ; preds = %31, %1
  %38 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %39 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.bio*, %struct.bio** %2, align 8
  %42 = call i32 @GJQ_REMOVE(i32 %40, %struct.bio* %41)
  %43 = load %struct.bio*, %struct.bio** %2, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.bio*, %struct.bio** %2, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @gj_free(i32 %45, i32 %48)
  %50 = load %struct.bio*, %struct.bio** %2, align 8
  %51 = call i32 (i32, %struct.bio*, i8*, ...) @GJ_LOGREQ(i32 4, %struct.bio* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.bio*, %struct.bio** %2, align 8
  %53 = call i32 @g_destroy_bio(%struct.bio* %52)
  %54 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %55 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %37
  %59 = call i32 @GJ_DEBUG(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %60 = load %struct.g_journal_softc*, %struct.g_journal_softc** %3, align 8
  %61 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %37
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @GJ_LOGREQ(i32, %struct.bio*, i8*, ...) #1

declare dso_local i32 @GJQ_REMOVE(i32, %struct.bio*) #1

declare dso_local i32 @gj_free(i32, i32) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @GJ_DEBUG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
