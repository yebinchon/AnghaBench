; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe_freebsd.c_twed_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe_freebsd.c_twed_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.twed_softc* }
%struct.twed_softc = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i32 }

@TWED_BIO_IN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BIO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"twe: bio for invalid disk!\0A\00", align 1
@TWED_BIO_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @twed_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twed_strategy(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.twed_softc*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = getelementptr inbounds %struct.bio, %struct.bio* %4, i32 0, i32 3
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.twed_softc*, %struct.twed_softc** %7, align 8
  store %struct.twed_softc* %8, %struct.twed_softc** %3, align 8
  %9 = call i32 @debug_called(i32 4)
  %10 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %11 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.bio*, %struct.bio** %2, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 2
  store i32* %13, i32** %15, align 8
  %16 = load i32, i32* @TWED_BIO_IN, align 4
  %17 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %18 = icmp eq %struct.twed_softc* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %21 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %19, %1
  %27 = load i32, i32* @EINVAL, align 4
  %28 = load %struct.bio*, %struct.bio** %2, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @BIO_ERROR, align 4
  %31 = load %struct.bio*, %struct.bio** %2, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.bio*, %struct.bio** %2, align 8
  %37 = call i32 @biodone(%struct.bio* %36)
  %38 = load i32, i32* @TWED_BIO_OUT, align 4
  br label %57

39:                                               ; preds = %19
  %40 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %41 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @TWE_IO_LOCK(i32 %42)
  %44 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %45 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.bio*, %struct.bio** %2, align 8
  %48 = call i32 @twe_enqueue_bio(i32 %46, %struct.bio* %47)
  %49 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %50 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @twe_startio(i32 %51)
  %53 = load %struct.twed_softc*, %struct.twed_softc** %3, align 8
  %54 = getelementptr inbounds %struct.twed_softc, %struct.twed_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @TWE_IO_UNLOCK(i32 %55)
  br label %57

57:                                               ; preds = %39, %26
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @biodone(%struct.bio*) #1

declare dso_local i32 @TWE_IO_LOCK(i32) #1

declare dso_local i32 @twe_enqueue_bio(i32, %struct.bio*) #1

declare dso_local i32 @twe_startio(i32) #1

declare dso_local i32 @TWE_IO_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
