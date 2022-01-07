; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_findhalchannel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_findhalchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_hal_channel = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.mwl_hal_channel* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mwl_hal_channel* (%struct.TYPE_3__*, i32)* @findhalchannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mwl_hal_channel* @findhalchannel(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.mwl_hal_channel*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mwl_hal_channel*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %29, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load %struct.mwl_hal_channel*, %struct.mwl_hal_channel** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mwl_hal_channel, %struct.mwl_hal_channel* %17, i64 %19
  store %struct.mwl_hal_channel* %20, %struct.mwl_hal_channel** %7, align 8
  %21 = load %struct.mwl_hal_channel*, %struct.mwl_hal_channel** %7, align 8
  %22 = getelementptr inbounds %struct.mwl_hal_channel, %struct.mwl_hal_channel* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = load %struct.mwl_hal_channel*, %struct.mwl_hal_channel** %7, align 8
  store %struct.mwl_hal_channel* %27, %struct.mwl_hal_channel** %3, align 8
  br label %33

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %8

32:                                               ; preds = %8
  store %struct.mwl_hal_channel* null, %struct.mwl_hal_channel** %3, align 8
  br label %33

33:                                               ; preds = %32, %26
  %34 = load %struct.mwl_hal_channel*, %struct.mwl_hal_channel** %3, align 8
  ret %struct.mwl_hal_channel* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
