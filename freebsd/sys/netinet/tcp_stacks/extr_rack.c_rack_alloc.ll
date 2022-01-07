; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rack_sendmap = type { i32 }
%struct.tcp_rack = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@rack_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@rack_to_alloc = common dso_local global i32 0, align 4
@rack_to_alloc_emerg = common dso_local global i32 0, align 4
@r_tnext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rack_sendmap* (%struct.tcp_rack*)* @rack_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rack_sendmap* @rack_alloc(%struct.tcp_rack* %0) #0 {
  %2 = alloca %struct.rack_sendmap*, align 8
  %3 = alloca %struct.tcp_rack*, align 8
  %4 = alloca %struct.rack_sendmap*, align 8
  store %struct.tcp_rack* %0, %struct.tcp_rack** %3, align 8
  %5 = load i32, i32* @rack_zone, align 4
  %6 = load i32, i32* @M_NOWAIT, align 4
  %7 = call %struct.rack_sendmap* @uma_zalloc(i32 %5, i32 %6)
  store %struct.rack_sendmap* %7, %struct.rack_sendmap** %4, align 8
  %8 = load %struct.rack_sendmap*, %struct.rack_sendmap** %4, align 8
  %9 = icmp ne %struct.rack_sendmap* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %12 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @rack_to_alloc, align 4
  %17 = call i32 @counter_u64_add(i32 %16, i32 1)
  %18 = load %struct.rack_sendmap*, %struct.rack_sendmap** %4, align 8
  store %struct.rack_sendmap* %18, %struct.rack_sendmap** %2, align 8
  br label %43

19:                                               ; preds = %1
  %20 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %21 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load i32, i32* @rack_to_alloc_emerg, align 4
  %26 = call i32 @counter_u64_add(i32 %25, i32 1)
  %27 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %28 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call %struct.rack_sendmap* @TAILQ_FIRST(i32* %29)
  store %struct.rack_sendmap* %30, %struct.rack_sendmap** %4, align 8
  %31 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %32 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.rack_sendmap*, %struct.rack_sendmap** %4, align 8
  %35 = load i32, i32* @r_tnext, align 4
  %36 = call i32 @TAILQ_REMOVE(i32* %33, %struct.rack_sendmap* %34, i32 %35)
  %37 = load %struct.tcp_rack*, %struct.tcp_rack** %3, align 8
  %38 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %38, align 8
  %41 = load %struct.rack_sendmap*, %struct.rack_sendmap** %4, align 8
  store %struct.rack_sendmap* %41, %struct.rack_sendmap** %2, align 8
  br label %43

42:                                               ; preds = %19
  store %struct.rack_sendmap* null, %struct.rack_sendmap** %2, align 8
  br label %43

43:                                               ; preds = %42, %24, %10
  %44 = load %struct.rack_sendmap*, %struct.rack_sendmap** %2, align 8
  ret %struct.rack_sendmap* %44
}

declare dso_local %struct.rack_sendmap* @uma_zalloc(i32, i32) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local %struct.rack_sendmap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.rack_sendmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
