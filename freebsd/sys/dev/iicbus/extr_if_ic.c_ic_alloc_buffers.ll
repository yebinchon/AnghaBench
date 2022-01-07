; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_if_ic.c_ic_alloc_buffers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_if_ic.c_ic_alloc_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ic_softc = type { i32, i8*, i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ICHDRLEN = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@IC_BUFFERS_BUSY = common dso_local global i32 0, align 4
@IC_BUFFER_WAITER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"icalloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ic_softc*, i32)* @ic_alloc_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ic_alloc_buffers(%struct.ic_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ic_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.ic_softc* %0, %struct.ic_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = load i64, i64* @ICHDRLEN, align 8
  %10 = add nsw i64 %8, %9
  %11 = load i32, i32* @M_DEVBUF, align 4
  %12 = load i32, i32* @M_WAITOK, align 4
  %13 = call i8* @malloc(i64 %10, i32 %11, i32 %12)
  store i8* %13, i8** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* @ICHDRLEN, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i32, i32* @M_DEVBUF, align 4
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = call i8* @malloc(i64 %17, i32 %18, i32 %19)
  store i8* %20, i8** %6, align 8
  %21 = load %struct.ic_softc*, %struct.ic_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ic_softc, %struct.ic_softc* %21, i32 0, i32 3
  %23 = call i32 @mtx_lock(i32* %22)
  br label %24

24:                                               ; preds = %31, %2
  %25 = load %struct.ic_softc*, %struct.ic_softc** %3, align 8
  %26 = getelementptr inbounds %struct.ic_softc, %struct.ic_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IC_BUFFERS_BUSY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %24
  %32 = load i32, i32* @IC_BUFFER_WAITER, align 4
  %33 = load %struct.ic_softc*, %struct.ic_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ic_softc, %struct.ic_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.ic_softc*, %struct.ic_softc** %3, align 8
  %38 = load %struct.ic_softc*, %struct.ic_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ic_softc, %struct.ic_softc* %38, i32 0, i32 3
  %40 = call i32 @mtx_sleep(%struct.ic_softc* %37, i32* %39, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  %41 = load i32, i32* @IC_BUFFER_WAITER, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.ic_softc*, %struct.ic_softc** %3, align 8
  %44 = getelementptr inbounds %struct.ic_softc, %struct.ic_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %24

47:                                               ; preds = %24
  %48 = load %struct.ic_softc*, %struct.ic_softc** %3, align 8
  %49 = getelementptr inbounds %struct.ic_softc, %struct.ic_softc* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* @M_DEVBUF, align 4
  %52 = call i32 @free(i8* %50, i32 %51)
  %53 = load %struct.ic_softc*, %struct.ic_softc** %3, align 8
  %54 = getelementptr inbounds %struct.ic_softc, %struct.ic_softc* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* @M_DEVBUF, align 4
  %57 = call i32 @free(i8* %55, i32 %56)
  %58 = load i8*, i8** %5, align 8
  %59 = load %struct.ic_softc*, %struct.ic_softc** %3, align 8
  %60 = getelementptr inbounds %struct.ic_softc, %struct.ic_softc* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load %struct.ic_softc*, %struct.ic_softc** %3, align 8
  %63 = getelementptr inbounds %struct.ic_softc, %struct.ic_softc* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.ic_softc*, %struct.ic_softc** %3, align 8
  %66 = getelementptr inbounds %struct.ic_softc, %struct.ic_softc* %65, i32 0, i32 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 4
  %69 = load %struct.ic_softc*, %struct.ic_softc** %3, align 8
  %70 = getelementptr inbounds %struct.ic_softc, %struct.ic_softc* %69, i32 0, i32 3
  %71 = call i32 @mtx_unlock(i32* %70)
  ret void
}

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_sleep(%struct.ic_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
