; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otus_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8* }

@AR_MAX_WRITE_IDX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @otus_write(%struct.otus_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.otus_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.otus_softc* %0, %struct.otus_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.otus_softc*, %struct.otus_softc** %4, align 8
  %8 = call i32 @OTUS_LOCK_ASSERT(%struct.otus_softc* %7)
  %9 = load i32, i32* %5, align 4
  %10 = call i8* @htole32(i32 %9)
  %11 = load %struct.otus_softc*, %struct.otus_softc** %4, align 8
  %12 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load %struct.otus_softc*, %struct.otus_softc** %4, align 8
  %15 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i8* %10, i8** %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i8* @htole32(i32 %19)
  %21 = load %struct.otus_softc*, %struct.otus_softc** %4, align 8
  %22 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load %struct.otus_softc*, %struct.otus_softc** %4, align 8
  %25 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i8* %20, i8** %28, align 8
  %29 = load %struct.otus_softc*, %struct.otus_softc** %4, align 8
  %30 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = load i32, i32* @AR_MAX_WRITE_IDX, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = icmp ugt i64 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load %struct.otus_softc*, %struct.otus_softc** %4, align 8
  %39 = call i32 @otus_write_barrier(%struct.otus_softc* %38)
  br label %40

40:                                               ; preds = %37, %3
  ret void
}

declare dso_local i32 @OTUS_LOCK_ASSERT(%struct.otus_softc*) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @otus_write_barrier(%struct.otus_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
