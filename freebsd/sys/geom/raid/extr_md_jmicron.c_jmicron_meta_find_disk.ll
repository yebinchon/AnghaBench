; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_jmicron.c_jmicron_meta_find_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_jmicron.c_jmicron_meta_find_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jmicron_raid_conf = type { i32*, i32* }

@JMICRON_DISK_MASK = common dso_local global i32 0, align 4
@JMICRON_MAX_DISKS = common dso_local global i32 0, align 4
@JMICRON_MAX_SPARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jmicron_raid_conf*, i32)* @jmicron_meta_find_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jmicron_meta_find_disk(%struct.jmicron_raid_conf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jmicron_raid_conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.jmicron_raid_conf* %0, %struct.jmicron_raid_conf** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @JMICRON_DISK_MASK, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %29, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @JMICRON_MAX_DISKS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = load %struct.jmicron_raid_conf*, %struct.jmicron_raid_conf** %4, align 8
  %16 = getelementptr inbounds %struct.jmicron_raid_conf, %struct.jmicron_raid_conf* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @JMICRON_DISK_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %55

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %10

32:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %51, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @JMICRON_MAX_SPARE, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = load %struct.jmicron_raid_conf*, %struct.jmicron_raid_conf** %4, align 8
  %39 = getelementptr inbounds %struct.jmicron_raid_conf, %struct.jmicron_raid_conf* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @JMICRON_DISK_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  store i32 -3, i32* %3, align 4
  br label %55

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %33

54:                                               ; preds = %33
  store i32 -1, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %49, %26
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
