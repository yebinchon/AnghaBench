; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_ndisks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_ndisks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid3_softc = type { i64, %struct.g_raid3_disk*, i32 }
%struct.g_raid3_disk = type { i32 }

@SX_LOCKED = common dso_local global i32 0, align 4
@G_RAID3_DISK_STATE_NODISK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @g_raid3_ndisks(%struct.g_raid3_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.g_raid3_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_raid3_disk*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.g_raid3_softc* %0, %struct.g_raid3_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %9 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %8, i32 0, i32 2
  %10 = load i32, i32* @SX_LOCKED, align 4
  %11 = call i32 @sx_assert(i32* %9, i32 %10)
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %43, %2
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %15 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %12
  %19 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %3, align 8
  %20 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %19, i32 0, i32 1
  %21 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %21, i64 %22
  store %struct.g_raid3_disk* %23, %struct.g_raid3_disk** %5, align 8
  %24 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %5, align 8
  %25 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @G_RAID3_DISK_STATE_NODISK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %43

30:                                               ; preds = %18
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %5, align 8
  %35 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33, %30
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %39, %33
  br label %43

43:                                               ; preds = %42, %29
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %6, align 8
  br label %12

46:                                               ; preds = %12
  %47 = load i64, i64* %7, align 8
  ret i64 %47
}

declare dso_local i32 @sx_assert(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
