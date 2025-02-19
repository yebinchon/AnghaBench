; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_vol_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_raid.c_mpt_vol_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_raid_volume = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"Optimal\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Degraded\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Failed\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mpt_raid_volume*)* @mpt_vol_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mpt_vol_state(%struct.mpt_raid_volume* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mpt_raid_volume*, align 8
  store %struct.mpt_raid_volume* %0, %struct.mpt_raid_volume** %3, align 8
  %4 = load %struct.mpt_raid_volume*, %struct.mpt_raid_volume** %3, align 8
  %5 = getelementptr inbounds %struct.mpt_raid_volume, %struct.mpt_raid_volume* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %13 [
    i32 128, label %10
    i32 130, label %11
    i32 129, label %12
  ]

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %14

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %14

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %14

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %14

14:                                               ; preds = %13, %12, %11, %10
  %15 = load i8*, i8** %2, align 8
  ret i8* %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
