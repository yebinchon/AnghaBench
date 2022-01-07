; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_pers_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_pers_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_personality = type { i32 }
%struct.mpt_softc = type { i32 }

@MPT_MAX_PERSONALITIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"mpt_pers_find: starting position out of range\00", align 1
@mpt_personalities = common dso_local global %struct.mpt_personality** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mpt_personality* (%struct.mpt_softc*, i32)* @mpt_pers_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mpt_personality* @mpt_pers_find(%struct.mpt_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mpt_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @MPT_MAX_PERSONALITIES, align 4
  %7 = icmp sle i32 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @KASSERT(i32 %8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %24, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @MPT_MAX_PERSONALITIES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %16 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp eq i32 %20, 0
  br label %22

22:                                               ; preds = %14, %10
  %23 = phi i1 [ false, %10 ], [ %21, %14 ]
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %10

27:                                               ; preds = %22
  %28 = load %struct.mpt_personality**, %struct.mpt_personality*** @mpt_personalities, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.mpt_personality*, %struct.mpt_personality** %28, i64 %30
  %32 = load %struct.mpt_personality*, %struct.mpt_personality** %31, align 8
  ret %struct.mpt_personality* %32
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
