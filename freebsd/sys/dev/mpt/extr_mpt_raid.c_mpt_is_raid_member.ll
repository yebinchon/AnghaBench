; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_is_raid_member.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_is_raid_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { %struct.mpt_raid_disk*, %struct.TYPE_4__* }
%struct.mpt_raid_disk = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@MPT_RDF_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt_is_raid_member(%struct.mpt_softc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpt_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mpt_raid_disk*, align 8
  %7 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %9 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp eq %struct.TYPE_4__* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %14 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %55

20:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %51, %20
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %24 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %22, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %21
  %30 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %31 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %30, i32 0, i32 0
  %32 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %32, i64 %34
  store %struct.mpt_raid_disk* %35, %struct.mpt_raid_disk** %6, align 8
  %36 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %6, align 8
  %37 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MPT_RDF_ACTIVE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %29
  %43 = load %struct.mpt_raid_disk*, %struct.mpt_raid_disk** %6, align 8
  %44 = getelementptr inbounds %struct.mpt_raid_disk, %struct.mpt_raid_disk* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %55

50:                                               ; preds = %42, %29
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %21

54:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %49, %19
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
