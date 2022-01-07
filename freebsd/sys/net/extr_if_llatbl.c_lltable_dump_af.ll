; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_llatbl.c_lltable_dump_af.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_llatbl.c_lltable_dump_af.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lltable = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sysctl_req = type { i32 }
%struct.epoch_tracker = type { i32 }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lltable*, %struct.sysctl_req*)* @lltable_dump_af to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lltable_dump_af(%struct.lltable* %0, %struct.sysctl_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lltable*, align 8
  %5 = alloca %struct.sysctl_req*, align 8
  %6 = alloca %struct.epoch_tracker, align 4
  %7 = alloca i32, align 4
  store %struct.lltable* %0, %struct.lltable** %4, align 8
  store %struct.sysctl_req* %1, %struct.sysctl_req** %5, align 8
  %8 = call i32 (...) @LLTABLE_LIST_LOCK_ASSERT()
  %9 = load %struct.lltable*, %struct.lltable** %4, align 8
  %10 = getelementptr inbounds %struct.lltable, %struct.lltable* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IFF_LOOPBACK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

18:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %19 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %6, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @NET_EPOCH_ENTER(i32 %20)
  %22 = load %struct.lltable*, %struct.lltable** %4, align 8
  %23 = load %struct.lltable*, %struct.lltable** %4, align 8
  %24 = getelementptr inbounds %struct.lltable, %struct.lltable* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  %27 = load %struct.sysctl_req*, %struct.sysctl_req** %5, align 8
  %28 = call i32 @lltable_foreach_lle(%struct.lltable* %22, i32* %26, %struct.sysctl_req* %27)
  store i32 %28, i32* %7, align 4
  %29 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @NET_EPOCH_EXIT(i32 %30)
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %18, %17
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @LLTABLE_LIST_LOCK_ASSERT(...) #1

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local i32 @lltable_foreach_lle(%struct.lltable*, i32*, %struct.sysctl_req*) #1

declare dso_local i32 @NET_EPOCH_EXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
