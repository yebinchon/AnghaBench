; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_release_mutexes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_release_mutexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_release_mutexes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_release_mutexes(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %3 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %4 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %3, i32 0, i32 7
  %5 = call i64 @mtx_initialized(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %9 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %8, i32 0, i32 7
  %10 = call i32 @mtx_destroy(i32* %9)
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %13 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %12, i32 0, i32 6
  %14 = call i64 @mtx_initialized(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %18 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %17, i32 0, i32 6
  %19 = call i32 @mtx_destroy(i32* %18)
  br label %20

20:                                               ; preds = %16, %11
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %22 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %21, i32 0, i32 5
  %23 = call i64 @mtx_initialized(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %27 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %26, i32 0, i32 5
  %28 = call i32 @mtx_destroy(i32* %27)
  br label %29

29:                                               ; preds = %25, %20
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %31 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i64 @mtx_initialized(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %37 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @mtx_destroy(i32* %38)
  br label %40

40:                                               ; preds = %35, %29
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %42 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %41, i32 0, i32 3
  %43 = call i64 @mtx_initialized(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %47 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %46, i32 0, i32 3
  %48 = call i32 @mtx_destroy(i32* %47)
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %51 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %50, i32 0, i32 2
  %52 = call i64 @mtx_initialized(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %56 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %55, i32 0, i32 2
  %57 = call i32 @mtx_destroy(i32* %56)
  br label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %60 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %59, i32 0, i32 1
  %61 = call i64 @mtx_initialized(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %65 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %64, i32 0, i32 1
  %66 = call i32 @mtx_destroy(i32* %65)
  br label %67

67:                                               ; preds = %63, %58
  %68 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %69 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %68, i32 0, i32 0
  %70 = call i64 @mtx_initialized(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %74 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %73, i32 0, i32 0
  %75 = call i32 @mtx_destroy(i32* %74)
  br label %76

76:                                               ; preds = %72, %67
  ret void
}

declare dso_local i64 @mtx_initialized(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
