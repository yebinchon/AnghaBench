; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_privacy.c_g_eli_crypto_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_privacy.c_g_eli_crypto_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_eli_softc = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bio = type { i32, i32, %struct.bio*, i32*, i64 }
%struct.g_consumer = type { i32 }

@G_ELI_FLAG_SUSPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"device suspended, move onto queue\00", align 1
@g_eli_read_done = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Sending request.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_eli_crypto_read(%struct.g_eli_softc* %0, %struct.bio* %1, i32 %2) #0 {
  %4 = alloca %struct.g_eli_softc*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.g_consumer*, align 8
  %8 = alloca %struct.bio*, align 8
  store %struct.g_eli_softc* %0, %struct.g_eli_softc** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %3
  %12 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %13 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %12, i32 0, i32 2
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %16 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @G_ELI_FLAG_SUSPEND, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %11
  %22 = call i32 @G_ELI_DEBUG(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %24 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %23, i32 0, i32 4
  %25 = load %struct.bio*, %struct.bio** %5, align 8
  %26 = call i32 @bioq_insert_tail(i32* %24, %struct.bio* %25)
  %27 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %28 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %27, i32 0, i32 2
  %29 = call i32 @mtx_unlock(i32* %28)
  %30 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %31 = call i32 @wakeup(%struct.g_eli_softc* %30)
  br label %65

32:                                               ; preds = %11
  %33 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %34 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %33, i32 0, i32 3
  %35 = call i32 @atomic_add_int(i32* %34, i32 1)
  %36 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %37 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %36, i32 0, i32 2
  %38 = call i32 @mtx_unlock(i32* %37)
  br label %39

39:                                               ; preds = %32, %3
  %40 = load %struct.bio*, %struct.bio** %5, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load %struct.bio*, %struct.bio** %5, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 3
  store i32* null, i32** %43, align 8
  %44 = load %struct.bio*, %struct.bio** %5, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 2
  %46 = load %struct.bio*, %struct.bio** %45, align 8
  store %struct.bio* %46, %struct.bio** %8, align 8
  %47 = load i32, i32* @g_eli_read_done, align 4
  %48 = load %struct.bio*, %struct.bio** %8, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.g_eli_softc*, %struct.g_eli_softc** %4, align 8
  %51 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call %struct.g_consumer* @LIST_FIRST(i32* %53)
  store %struct.g_consumer* %54, %struct.g_consumer** %7, align 8
  %55 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %56 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.bio*, %struct.bio** %8, align 8
  %59 = getelementptr inbounds %struct.bio, %struct.bio* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.bio*, %struct.bio** %8, align 8
  %61 = call i32 @G_ELI_LOGREQ(i32 2, %struct.bio* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.bio*, %struct.bio** %8, align 8
  %63 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %64 = call i32 @g_io_request(%struct.bio* %62, %struct.g_consumer* %63)
  br label %65

65:                                               ; preds = %39, %21
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @G_ELI_DEBUG(i32, i8*) #1

declare dso_local i32 @bioq_insert_tail(i32*, %struct.bio*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @wakeup(%struct.g_eli_softc*) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local %struct.g_consumer* @LIST_FIRST(i32*) #1

declare dso_local i32 @G_ELI_LOGREQ(i32, %struct.bio*, i8*) #1

declare dso_local i32 @g_io_request(%struct.bio*, %struct.g_consumer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
