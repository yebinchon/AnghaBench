; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_free_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_free_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbd_softc = type { i32, i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@GRANT_REF_INVALID = common dso_local global i64 0, align 8
@M_XENBLOCKFRONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xbd_softc*)* @xbd_free_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xbd_free_ring(%struct.xbd_softc* %0) #0 {
  %2 = alloca %struct.xbd_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.xbd_softc* %0, %struct.xbd_softc** %2, align 8
  %4 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %5 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %57

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %44, %10
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %14 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %11
  %18 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %19 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @GRANT_REF_INVALID, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %17
  %28 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %29 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @gnttab_end_foreign_access_ref(i64 %34)
  %36 = load i64, i64* @GRANT_REF_INVALID, align 8
  %37 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %38 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  store i64 %36, i64* %42, align 8
  br label %43

43:                                               ; preds = %27, %17
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %11

47:                                               ; preds = %11
  %48 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %49 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @M_XENBLOCKFRONT, align 4
  %53 = call i32 @free(i32* %51, i32 %52)
  %54 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %55 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32* null, i32** %56, align 8
  br label %57

57:                                               ; preds = %47, %9
  ret void
}

declare dso_local i32 @gnttab_end_foreign_access_ref(i64) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
