; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli.c_g_eli_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli.c_g_eli_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.TYPE_6__*, i32, i32, %struct.bio* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.g_eli_softc* }
%struct.g_eli_softc = type { i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.g_consumer = type { %struct.TYPE_6__* }

@.str = private unnamed_addr constant [54 x i8] c"Provider's error should be set (error=%d)(device=%s).\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Request received.\00", align 1
@G_ELI_FLAG_NODELETE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@G_ELI_NEW_BIO = common dso_local global i32 0, align 4
@G_ELI_FLAG_AUTH = common dso_local global i32 0, align 4
@g_eli_getattr_done = common dso_local global i32 0, align 4
@g_std_done = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Sending request.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_eli_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_eli_start(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_eli_softc*, align 8
  %4 = alloca %struct.g_consumer*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %6 = load %struct.bio*, %struct.bio** %2, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.g_eli_softc*, %struct.g_eli_softc** %11, align 8
  store %struct.g_eli_softc* %12, %struct.g_eli_softc** %3, align 8
  %13 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %14 = icmp ne %struct.g_eli_softc* %13, null
  %15 = zext i1 %14 to i32
  %16 = load %struct.bio*, %struct.bio** %2, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bio*, %struct.bio** %2, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @KASSERT(i32 %15, i8* %27)
  %29 = load %struct.bio*, %struct.bio** %2, align 8
  %30 = call i32 @G_ELI_LOGREQ(i32 2, %struct.bio* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.bio*, %struct.bio** %2, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %44 [
    i32 130, label %34
    i32 129, label %34
    i32 131, label %34
    i32 132, label %34
    i32 128, label %34
    i32 133, label %35
  ]

34:                                               ; preds = %1, %1, %1, %1, %1
  br label %48

35:                                               ; preds = %1
  %36 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %37 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @G_ELI_FLAG_NODELETE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %48

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %1, %43
  %45 = load %struct.bio*, %struct.bio** %2, align 8
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = call i32 @g_io_deliver(%struct.bio* %45, i32 %46)
  br label %121

48:                                               ; preds = %42, %34
  %49 = load %struct.bio*, %struct.bio** %2, align 8
  %50 = call %struct.bio* @g_clone_bio(%struct.bio* %49)
  store %struct.bio* %50, %struct.bio** %5, align 8
  %51 = load %struct.bio*, %struct.bio** %5, align 8
  %52 = icmp eq %struct.bio* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.bio*, %struct.bio** %2, align 8
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = call i32 @g_io_deliver(%struct.bio* %54, i32 %55)
  br label %121

57:                                               ; preds = %48
  %58 = load %struct.bio*, %struct.bio** %5, align 8
  %59 = load %struct.bio*, %struct.bio** %2, align 8
  %60 = getelementptr inbounds %struct.bio, %struct.bio* %59, i32 0, i32 4
  store %struct.bio* %58, %struct.bio** %60, align 8
  %61 = load i32, i32* @G_ELI_NEW_BIO, align 4
  %62 = load %struct.bio*, %struct.bio** %2, align 8
  %63 = getelementptr inbounds %struct.bio, %struct.bio* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.bio*, %struct.bio** %2, align 8
  %65 = getelementptr inbounds %struct.bio, %struct.bio* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %121 [
    i32 130, label %67
    i32 129, label %79
    i32 131, label %92
    i32 132, label %92
    i32 133, label %92
    i32 128, label %92
  ]

67:                                               ; preds = %57
  %68 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %69 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @G_ELI_FLAG_AUTH, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %67
  %75 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %76 = load %struct.bio*, %struct.bio** %2, align 8
  %77 = call i32 @g_eli_crypto_read(%struct.g_eli_softc* %75, %struct.bio* %76, i32 0)
  br label %121

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %57, %78
  %80 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %81 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %80, i32 0, i32 2
  %82 = call i32 @mtx_lock(i32* %81)
  %83 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %84 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %83, i32 0, i32 3
  %85 = load %struct.bio*, %struct.bio** %2, align 8
  %86 = call i32 @bioq_insert_tail(i32* %84, %struct.bio* %85)
  %87 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %88 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %87, i32 0, i32 2
  %89 = call i32 @mtx_unlock(i32* %88)
  %90 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %91 = call i32 @wakeup(%struct.g_eli_softc* %90)
  br label %121

92:                                               ; preds = %57, %57, %57, %57
  %93 = load %struct.bio*, %struct.bio** %2, align 8
  %94 = getelementptr inbounds %struct.bio, %struct.bio* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 131
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i32, i32* @g_eli_getattr_done, align 4
  %99 = load %struct.bio*, %struct.bio** %5, align 8
  %100 = getelementptr inbounds %struct.bio, %struct.bio* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  br label %105

101:                                              ; preds = %92
  %102 = load i32, i32* @g_std_done, align 4
  %103 = load %struct.bio*, %struct.bio** %5, align 8
  %104 = getelementptr inbounds %struct.bio, %struct.bio* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %101, %97
  %106 = load %struct.g_eli_softc*, %struct.g_eli_softc** %3, align 8
  %107 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %106, i32 0, i32 1
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = call %struct.g_consumer* @LIST_FIRST(i32* %109)
  store %struct.g_consumer* %110, %struct.g_consumer** %4, align 8
  %111 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %112 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load %struct.bio*, %struct.bio** %5, align 8
  %115 = getelementptr inbounds %struct.bio, %struct.bio* %114, i32 0, i32 1
  store %struct.TYPE_6__* %113, %struct.TYPE_6__** %115, align 8
  %116 = load %struct.bio*, %struct.bio** %5, align 8
  %117 = call i32 @G_ELI_LOGREQ(i32 2, %struct.bio* %116, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %118 = load %struct.bio*, %struct.bio** %5, align 8
  %119 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %120 = call i32 @g_io_request(%struct.bio* %118, %struct.g_consumer* %119)
  br label %121

121:                                              ; preds = %44, %53, %57, %105, %79, %74
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @G_ELI_LOGREQ(i32, %struct.bio*, i8*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

declare dso_local %struct.bio* @g_clone_bio(%struct.bio*) #1

declare dso_local i32 @g_eli_crypto_read(%struct.g_eli_softc*, %struct.bio*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @bioq_insert_tail(i32*, %struct.bio*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @wakeup(%struct.g_eli_softc*) #1

declare dso_local %struct.g_consumer* @LIST_FIRST(i32*) #1

declare dso_local i32 @g_io_request(%struct.bio*, %struct.g_consumer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
