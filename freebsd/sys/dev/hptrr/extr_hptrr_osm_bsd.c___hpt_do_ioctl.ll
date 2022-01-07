; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptrr/extr_hptrr_osm_bsd.c___hpt_do_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptrr/extr_hptrr_osm_bsd.c___hpt_do_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32, i8*, i32 }

@hpt_ioctl_done = common dso_local global i32 0, align 4
@PPAUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"hptctl\00", align 1
@HPT_OSM_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_12__*)* @__hpt_do_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__hpt_do_ioctl(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  store i32 -1, i32* %6, align 8
  %7 = load i32, i32* @hpt_ioctl_done, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  store i8* inttoptr (i64 1 to i8*), i8** %11, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = call i32 @hpt_lock_vbus(%struct.TYPE_11__* %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = call i32 @ldm_ioctl(i32 %17, %struct.TYPE_12__* %18)
  br label %20

20:                                               ; preds = %33, %2
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = load i32, i32* @PPAUSE, align 4
  %29 = load i32, i32* @HPT_OSM_TIMEOUT, align 4
  %30 = call i64 @hpt_sleep(%struct.TYPE_11__* %26, %struct.TYPE_12__* %27, i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %41

33:                                               ; preds = %25
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @ldm_reset_vbus(i32 %37)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = call i32 @__hpt_do_tasks(%struct.TYPE_11__* %39)
  br label %20

41:                                               ; preds = %32, %20
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = call i32 @hpt_unlock_vbus(%struct.TYPE_11__* %42)
  ret void
}

declare dso_local i32 @hpt_lock_vbus(%struct.TYPE_11__*) #1

declare dso_local i32 @ldm_ioctl(i32, %struct.TYPE_12__*) #1

declare dso_local i64 @hpt_sleep(%struct.TYPE_11__*, %struct.TYPE_12__*, i32, i8*, i32) #1

declare dso_local i32 @ldm_reset_vbus(i32) #1

declare dso_local i32 @__hpt_do_tasks(%struct.TYPE_11__*) #1

declare dso_local i32 @hpt_unlock_vbus(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
