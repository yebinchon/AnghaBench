; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_lance.c_lance_put.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_lance.c_lance_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lance_softc = type { i32 (%struct.lance_softc*, i32, i32)*, i32 (%struct.lance_softc*, i32, i32, i32)* }
%struct.mbuf = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4
@LEMINSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lance_put(%struct.lance_softc* %0, i32 %1, %struct.mbuf* %2) #0 {
  %4 = alloca %struct.lance_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lance_softc* %0, %struct.lance_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mbuf* %2, %struct.mbuf** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.lance_softc*, %struct.lance_softc** %4, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @LE_LOCK_ASSERT(%struct.lance_softc* %10, i32 %11)
  br label %13

13:                                               ; preds = %44, %3
  %14 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %15 = icmp ne %struct.mbuf* %14, null
  br i1 %15, label %16, label %46

16:                                               ; preds = %13
  %17 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %18 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %24 = call %struct.mbuf* @m_free(%struct.mbuf* %23)
  store %struct.mbuf* %24, %struct.mbuf** %7, align 8
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  br label %44

25:                                               ; preds = %16
  %26 = load %struct.lance_softc*, %struct.lance_softc** %4, align 8
  %27 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %26, i32 0, i32 1
  %28 = load i32 (%struct.lance_softc*, i32, i32, i32)*, i32 (%struct.lance_softc*, i32, i32, i32)** %27, align 8
  %29 = load %struct.lance_softc*, %struct.lance_softc** %4, align 8
  %30 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %31 = load i32, i32* @caddr_t, align 4
  %32 = call i32 @mtod(%struct.mbuf* %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 %28(%struct.lance_softc* %29, i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %43 = call %struct.mbuf* @m_free(%struct.mbuf* %42)
  store %struct.mbuf* %43, %struct.mbuf** %7, align 8
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  br label %44

44:                                               ; preds = %25, %22
  %45 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  store %struct.mbuf* %45, %struct.mbuf** %6, align 8
  br label %13

46:                                               ; preds = %13
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @LEMINSIZE, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load %struct.lance_softc*, %struct.lance_softc** %4, align 8
  %52 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %51, i32 0, i32 0
  %53 = load i32 (%struct.lance_softc*, i32, i32)*, i32 (%struct.lance_softc*, i32, i32)** %52, align 8
  %54 = load %struct.lance_softc*, %struct.lance_softc** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @LEMINSIZE, align 4
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %56, %57
  %59 = call i32 %53(%struct.lance_softc* %54, i32 %55, i32 %58)
  %60 = load i32, i32* @LEMINSIZE, align 4
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %50, %46
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

declare dso_local i32 @LE_LOCK_ASSERT(%struct.lance_softc*, i32) #1

declare dso_local %struct.mbuf* @m_free(%struct.mbuf*) #1

declare dso_local i32 @mtod(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
