; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_dumpconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/journal/extr_g_journal.c_g_journal_dumpconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.g_geom = type { %struct.g_journal_softc* }
%struct.g_journal_softc = type { i64, i64, i64, %struct.g_consumer*, %struct.g_consumer* }
%struct.g_consumer = type { i32 }
%struct.g_provider = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s<Role>\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Journal\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"</Role>\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"<Jstart>%jd</Jstart>\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"<Jend>%jd</Jend>\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"%s<ID>%u</ID>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*, i8*, %struct.g_geom*, %struct.g_consumer*, %struct.g_provider*)* @g_journal_dumpconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_journal_dumpconf(%struct.sbuf* %0, i8* %1, %struct.g_geom* %2, %struct.g_consumer* %3, %struct.g_provider* %4) #0 {
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.g_geom*, align 8
  %9 = alloca %struct.g_consumer*, align 8
  %10 = alloca %struct.g_provider*, align 8
  %11 = alloca %struct.g_journal_softc*, align 8
  %12 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.g_geom* %2, %struct.g_geom** %8, align 8
  store %struct.g_consumer* %3, %struct.g_consumer** %9, align 8
  store %struct.g_provider* %4, %struct.g_provider** %10, align 8
  %13 = call i32 (...) @g_topology_assert()
  %14 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  %15 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %14, i32 0, i32 0
  %16 = load %struct.g_journal_softc*, %struct.g_journal_softc** %15, align 8
  store %struct.g_journal_softc* %16, %struct.g_journal_softc** %11, align 8
  %17 = load %struct.g_journal_softc*, %struct.g_journal_softc** %11, align 8
  %18 = icmp eq %struct.g_journal_softc* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %89

20:                                               ; preds = %5
  %21 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %22 = icmp ne %struct.g_provider* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %89

24:                                               ; preds = %20
  %25 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %26 = icmp ne %struct.g_consumer* %25, null
  br i1 %26, label %27, label %80

27:                                               ; preds = %24
  store i32 1, i32* %12, align 4
  %28 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %32 = load %struct.g_journal_softc*, %struct.g_journal_softc** %11, align 8
  %33 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %32, i32 0, i32 4
  %34 = load %struct.g_consumer*, %struct.g_consumer** %33, align 8
  %35 = icmp eq %struct.g_consumer* %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %38 = call i32 @sbuf_cat(%struct.sbuf* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %36, %27
  %40 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %41 = load %struct.g_journal_softc*, %struct.g_journal_softc** %11, align 8
  %42 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %41, i32 0, i32 3
  %43 = load %struct.g_consumer*, %struct.g_consumer** %42, align 8
  %44 = icmp eq %struct.g_consumer* %40, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %50 = call i32 @sbuf_cat(%struct.sbuf* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %53 = call i32 @sbuf_cat(%struct.sbuf* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %39
  %55 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %56 = call i32 @sbuf_cat(%struct.sbuf* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %57 = load %struct.g_consumer*, %struct.g_consumer** %9, align 8
  %58 = load %struct.g_journal_softc*, %struct.g_journal_softc** %11, align 8
  %59 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %58, i32 0, i32 3
  %60 = load %struct.g_consumer*, %struct.g_consumer** %59, align 8
  %61 = icmp eq %struct.g_consumer* %57, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %54
  %63 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %64 = load %struct.g_journal_softc*, %struct.g_journal_softc** %11, align 8
  %65 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %69)
  %71 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %72 = load %struct.g_journal_softc*, %struct.g_journal_softc** %11, align 8
  %73 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %62, %54
  br label %88

80:                                               ; preds = %24
  %81 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load %struct.g_journal_softc*, %struct.g_journal_softc** %11, align 8
  %84 = getelementptr inbounds %struct.g_journal_softc, %struct.g_journal_softc* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 (%struct.sbuf*, i8*, i8*, ...) @sbuf_printf(%struct.sbuf* %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %82, i32 %86)
  br label %88

88:                                               ; preds = %80, %79
  br label %89

89:                                               ; preds = %19, %88, %23
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i8*, ...) #1

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
