; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp.c_sbp_next_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp.c_sbp_next_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_dev = type { i64 }
%struct.sbp_target = type { i32, %struct.sbp_dev** }

@SBP_DEV_PROBE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sbp_dev* (%struct.sbp_target*, i32)* @sbp_next_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sbp_dev* @sbp_next_dev(%struct.sbp_target* %0, i32 %1) #0 {
  %3 = alloca %struct.sbp_dev*, align 8
  %4 = alloca %struct.sbp_target*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sbp_dev**, align 8
  %7 = alloca i32, align 4
  store %struct.sbp_target* %0, %struct.sbp_target** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.sbp_target*, %struct.sbp_target** %4, align 8
  %10 = getelementptr inbounds %struct.sbp_target, %struct.sbp_target* %9, i32 0, i32 1
  %11 = load %struct.sbp_dev**, %struct.sbp_dev*** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.sbp_dev*, %struct.sbp_dev** %11, i64 %13
  store %struct.sbp_dev** %14, %struct.sbp_dev*** %6, align 8
  br label %15

15:                                               ; preds = %36, %2
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.sbp_target*, %struct.sbp_target** %4, align 8
  %18 = getelementptr inbounds %struct.sbp_target, %struct.sbp_target* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %15
  %22 = load %struct.sbp_dev**, %struct.sbp_dev*** %6, align 8
  %23 = load %struct.sbp_dev*, %struct.sbp_dev** %22, align 8
  %24 = icmp ne %struct.sbp_dev* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load %struct.sbp_dev**, %struct.sbp_dev*** %6, align 8
  %27 = load %struct.sbp_dev*, %struct.sbp_dev** %26, align 8
  %28 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SBP_DEV_PROBE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.sbp_dev**, %struct.sbp_dev*** %6, align 8
  %34 = load %struct.sbp_dev*, %struct.sbp_dev** %33, align 8
  store %struct.sbp_dev* %34, %struct.sbp_dev** %3, align 8
  br label %42

35:                                               ; preds = %25, %21
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  %39 = load %struct.sbp_dev**, %struct.sbp_dev*** %6, align 8
  %40 = getelementptr inbounds %struct.sbp_dev*, %struct.sbp_dev** %39, i32 1
  store %struct.sbp_dev** %40, %struct.sbp_dev*** %6, align 8
  br label %15

41:                                               ; preds = %15
  store %struct.sbp_dev* null, %struct.sbp_dev** %3, align 8
  br label %42

42:                                               ; preds = %41, %32
  %43 = load %struct.sbp_dev*, %struct.sbp_dev** %3, align 8
  ret %struct.sbp_dev* %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
