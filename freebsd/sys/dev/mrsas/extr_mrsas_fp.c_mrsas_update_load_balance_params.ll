; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_fp.c_mrsas_update_load_balance_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_fp.c_mrsas_update_load_balance_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64 }

@LB_PENDING_CMDS_DEFAULT = common dso_local global i32 0, align 4
@MAX_LOGICAL_DRIVES_EXT = common dso_local global i32 0, align 4
@MR_LD_STATE_OPTIMAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrsas_update_load_balance_params(%struct.mrsas_softc* %0, i32* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca %struct.mrsas_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %10 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %11 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, 128
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %16 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %14, %3
  %20 = load i32, i32* @LB_PENDING_CMDS_DEFAULT, align 4
  %21 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %22 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %19, %14
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %67, %23
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @MAX_LOGICAL_DRIVES_EXT, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %70

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @MR_TargetIdToLdGet(i32 %29, i32* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @MAX_LOGICAL_DRIVES_EXT, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  br label %67

41:                                               ; preds = %28
  %42 = load i32, i32* %8, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = call %struct.TYPE_6__* @MR_LdRaidGet(i32 %42, i32* %43)
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %9, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %55, label %49

49:                                               ; preds = %41
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MR_LD_STATE_OPTIMAL, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49, %41
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 0, i32* %60, align 4
  br label %67

61:                                               ; preds = %49
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %61, %55, %35
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %24

70:                                               ; preds = %24
  ret void
}

declare dso_local i32 @MR_TargetIdToLdGet(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @MR_LdRaidGet(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
