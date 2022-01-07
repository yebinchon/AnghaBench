; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_pers_find_reverse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_pers_find_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_personality = type { i32 }
%struct.mpt_softc = type { i32 }

@MPT_MAX_PERSONALITIES = common dso_local global i32 0, align 4
@mpt_personalities = common dso_local global %struct.mpt_personality** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mpt_personality* (%struct.mpt_softc*, i32)* @mpt_pers_find_reverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mpt_personality* @mpt_pers_find_reverse(%struct.mpt_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mpt_personality*, align 8
  %4 = alloca %struct.mpt_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %6

6:                                                ; preds = %20, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @MPT_MAX_PERSONALITIES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %12 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = shl i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp eq i32 %16, 0
  br label %18

18:                                               ; preds = %10, %6
  %19 = phi i1 [ false, %6 ], [ %17, %10 ]
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %5, align 4
  br label %6

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @MPT_MAX_PERSONALITIES, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct.mpt_personality**, %struct.mpt_personality*** @mpt_personalities, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.mpt_personality*, %struct.mpt_personality** %28, i64 %30
  %32 = load %struct.mpt_personality*, %struct.mpt_personality** %31, align 8
  store %struct.mpt_personality* %32, %struct.mpt_personality** %3, align 8
  br label %34

33:                                               ; preds = %23
  store %struct.mpt_personality* null, %struct.mpt_personality** %3, align 8
  br label %34

34:                                               ; preds = %33, %27
  %35 = load %struct.mpt_personality*, %struct.mpt_personality** %3, align 8
  ret %struct.mpt_personality* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
