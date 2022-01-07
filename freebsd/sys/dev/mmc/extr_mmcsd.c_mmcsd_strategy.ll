; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmcsd.c_mmcsd_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmcsd.c_mmcsd_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mmcsd_part* }
%struct.mmcsd_part = type { i64, i64, i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @mmcsd_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmcsd_strategy(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.mmcsd_part*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = getelementptr inbounds %struct.bio, %struct.bio* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.mmcsd_part*, %struct.mmcsd_part** %7, align 8
  store %struct.mmcsd_part* %8, %struct.mmcsd_part** %3, align 8
  %9 = load %struct.mmcsd_part*, %struct.mmcsd_part** %3, align 8
  %10 = call i32 @MMCSD_DISK_LOCK(%struct.mmcsd_part* %9)
  %11 = load %struct.mmcsd_part*, %struct.mmcsd_part** %3, align 8
  %12 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.mmcsd_part*, %struct.mmcsd_part** %3, align 8
  %17 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15, %1
  %21 = load %struct.mmcsd_part*, %struct.mmcsd_part** %3, align 8
  %22 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %21, i32 0, i32 2
  %23 = load %struct.bio*, %struct.bio** %2, align 8
  %24 = call i32 @bioq_disksort(i32* %22, %struct.bio* %23)
  %25 = load %struct.mmcsd_part*, %struct.mmcsd_part** %3, align 8
  %26 = call i32 @MMCSD_DISK_UNLOCK(%struct.mmcsd_part* %25)
  %27 = load %struct.mmcsd_part*, %struct.mmcsd_part** %3, align 8
  %28 = call i32 @wakeup(%struct.mmcsd_part* %27)
  br label %35

29:                                               ; preds = %15
  %30 = load %struct.mmcsd_part*, %struct.mmcsd_part** %3, align 8
  %31 = call i32 @MMCSD_DISK_UNLOCK(%struct.mmcsd_part* %30)
  %32 = load %struct.bio*, %struct.bio** %2, align 8
  %33 = load i32, i32* @ENXIO, align 4
  %34 = call i32 @biofinish(%struct.bio* %32, i32* null, i32 %33)
  br label %35

35:                                               ; preds = %29, %20
  ret void
}

declare dso_local i32 @MMCSD_DISK_LOCK(%struct.mmcsd_part*) #1

declare dso_local i32 @bioq_disksort(i32*, %struct.bio*) #1

declare dso_local i32 @MMCSD_DISK_UNLOCK(%struct.mmcsd_part*) #1

declare dso_local i32 @wakeup(%struct.mmcsd_part*) #1

declare dso_local i32 @biofinish(%struct.bio*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
