; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_filt_lioattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_filt_lioattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { %struct.aioliojob* }
%struct.aioliojob = type { i32 }

@EV_FLAG1 = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*)* @filt_lioattach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_lioattach(%struct.knote* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.knote*, align 8
  %4 = alloca %struct.aioliojob*, align 8
  store %struct.knote* %0, %struct.knote** %3, align 8
  %5 = load %struct.knote*, %struct.knote** %3, align 8
  %6 = getelementptr inbounds %struct.knote, %struct.knote* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.aioliojob*
  store %struct.aioliojob* %8, %struct.aioliojob** %4, align 8
  %9 = load %struct.knote*, %struct.knote** %3, align 8
  %10 = getelementptr inbounds %struct.knote, %struct.knote* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @EV_FLAG1, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @EPERM, align 4
  store i32 %16, i32* %2, align 4
  br label %32

17:                                               ; preds = %1
  %18 = load %struct.aioliojob*, %struct.aioliojob** %4, align 8
  %19 = load %struct.knote*, %struct.knote** %3, align 8
  %20 = getelementptr inbounds %struct.knote, %struct.knote* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.aioliojob* %18, %struct.aioliojob** %21, align 8
  %22 = load i32, i32* @EV_FLAG1, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.knote*, %struct.knote** %3, align 8
  %25 = getelementptr inbounds %struct.knote, %struct.knote* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.aioliojob*, %struct.aioliojob** %4, align 8
  %29 = getelementptr inbounds %struct.aioliojob, %struct.aioliojob* %28, i32 0, i32 0
  %30 = load %struct.knote*, %struct.knote** %3, align 8
  %31 = call i32 @knlist_add(i32* %29, %struct.knote* %30, i32 0)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %17, %15
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @knlist_add(i32*, %struct.knote*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
