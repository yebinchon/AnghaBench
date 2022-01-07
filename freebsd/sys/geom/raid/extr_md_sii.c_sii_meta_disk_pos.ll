; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_sii.c_sii_meta_disk_pos.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_sii.c_sii_meta_disk_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii_raid_conf = type { i32, i32, i32, i32, i32, i32 }

@SII_T_SPARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sii_raid_conf*, %struct.sii_raid_conf*)* @sii_meta_disk_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii_meta_disk_pos(%struct.sii_raid_conf* %0, %struct.sii_raid_conf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sii_raid_conf*, align 8
  %5 = alloca %struct.sii_raid_conf*, align 8
  store %struct.sii_raid_conf* %0, %struct.sii_raid_conf** %4, align 8
  store %struct.sii_raid_conf* %1, %struct.sii_raid_conf** %5, align 8
  %6 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %5, align 8
  %7 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SII_T_SPARE, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -3, i32* %3, align 4
  br label %42

12:                                               ; preds = %2
  %13 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %4, align 8
  %14 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %13, i32 0, i32 5
  %15 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %5, align 8
  %16 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %15, i32 0, i32 5
  %17 = call i64 @memcmp(i32* %14, i32* %16, i32 6)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %42

20:                                               ; preds = %12
  %21 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %5, align 8
  %22 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %41 [
    i32 131, label %24
    i32 129, label %24
    i32 128, label %24
    i32 133, label %24
    i32 130, label %28
    i32 132, label %40
  ]

24:                                               ; preds = %20, %20, %20, %20
  %25 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %5, align 8
  %26 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %3, align 4
  br label %42

28:                                               ; preds = %20
  %29 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %5, align 8
  %30 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %5, align 8
  %33 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  %36 = load %struct.sii_raid_conf*, %struct.sii_raid_conf** %5, align 8
  %37 = getelementptr inbounds %struct.sii_raid_conf, %struct.sii_raid_conf* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  store i32 %39, i32* %3, align 4
  br label %42

40:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %42

41:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %40, %28, %24, %19, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
