; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_periodic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_softc = type { i32, i32, %struct.TYPE_4__**, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MLY_MAX_TARGETS = common dso_local global i32 0, align 4
@MLY_BTL_RESCAN = common dso_local global i32 0, align 4
@MLY_PERIODIC_INTERVAL = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mly_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mly_periodic(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mly_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.mly_softc*
  store %struct.mly_softc* %7, %struct.mly_softc** %3, align 8
  %8 = call i32 @debug_called(i32 2)
  %9 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %10 = call i32 @MLY_ASSERT_LOCKED(%struct.mly_softc* %9)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %63, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %14 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %66

17:                                               ; preds = %11
  %18 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @MLY_BUS_IS_VALID(%struct.mly_softc* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %62

22:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %58, %22
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @MLY_MAX_TARGETS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %30 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %28, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %58

36:                                               ; preds = %27
  %37 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %38 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %39, i64 %41
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MLY_BTL_RESCAN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %36
  %53 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @mly_rescan_btl(%struct.mly_softc* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %36
  br label %58

58:                                               ; preds = %57, %35
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %23

61:                                               ; preds = %23
  br label %62

62:                                               ; preds = %61, %17
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %11

66:                                               ; preds = %11
  %67 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %68 = call i32 @mly_check_event(%struct.mly_softc* %67)
  %69 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %70 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %69, i32 0, i32 1
  %71 = load i32, i32* @MLY_PERIODIC_INTERVAL, align 4
  %72 = load i32, i32* @hz, align 4
  %73 = mul nsw i32 %71, %72
  %74 = call i32 @callout_schedule(i32* %70, i32 %73)
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLY_ASSERT_LOCKED(%struct.mly_softc*) #1

declare dso_local i64 @MLY_BUS_IS_VALID(%struct.mly_softc*, i32) #1

declare dso_local i32 @mly_rescan_btl(%struct.mly_softc*, i32, i32) #1

declare dso_local i32 @mly_check_event(%struct.mly_softc*) #1

declare dso_local i32 @callout_schedule(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
