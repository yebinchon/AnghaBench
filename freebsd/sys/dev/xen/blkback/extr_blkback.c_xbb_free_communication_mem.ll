; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_free_communication_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_free_communication_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbb_softc = type { i64, i32*, i64, i32*, i32, i32 }

@M_XENBLOCKBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xbb_softc*)* @xbb_free_communication_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xbb_free_communication_mem(%struct.xbb_softc* %0) #0 {
  %2 = alloca %struct.xbb_softc*, align 8
  store %struct.xbb_softc* %0, %struct.xbb_softc** %2, align 8
  %3 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %4 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %9 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %7
  %13 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %14 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %17 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %20 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @xenmem_free(i32 %15, i32 %18, i32* %21)
  %23 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %24 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %23, i32 0, i32 3
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %12, %7
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %28 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %30 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %32 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %26
  %36 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %37 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @M_XENBLOCKBACK, align 4
  %40 = call i32 @free(i32* %38, i32 %39)
  %41 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %42 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %35, %26
  ret void
}

declare dso_local i32 @xenmem_free(i32, i32, i32*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
