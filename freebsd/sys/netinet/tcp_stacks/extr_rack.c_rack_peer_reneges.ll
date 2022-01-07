; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_peer_reneges.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_peer_reneges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_rack = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.rack_sendmap = type { i32, i32, i64, i64 }

@RACK_ACKED = common dso_local global i32 0, align 4
@RACK_SACK_PASSED = common dso_local global i32 0, align 4
@RACK_WAS_SACKPASS = common dso_local global i32 0, align 4
@r_tnext = common dso_local global i32 0, align 4
@rack_rb_tree_head = common dso_local global i32 0, align 4
@rack_use_sack_filter = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_rack*, %struct.rack_sendmap*, i32)* @rack_peer_reneges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rack_peer_reneges(%struct.tcp_rack* %0, %struct.rack_sendmap* %1, i32 %2) #0 {
  %4 = alloca %struct.tcp_rack*, align 8
  %5 = alloca %struct.rack_sendmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rack_sendmap*, align 8
  store %struct.tcp_rack* %0, %struct.tcp_rack** %4, align 8
  store %struct.rack_sendmap* %1, %struct.rack_sendmap** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.rack_sendmap* null, %struct.rack_sendmap** %7, align 8
  br label %8

8:                                                ; preds = %64, %3
  %9 = load %struct.rack_sendmap*, %struct.rack_sendmap** %5, align 8
  %10 = icmp ne %struct.rack_sendmap* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.rack_sendmap*, %struct.rack_sendmap** %5, align 8
  %13 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @RACK_ACKED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %11, %8
  %19 = phi i1 [ false, %8 ], [ %17, %11 ]
  br i1 %19, label %20, label %73

20:                                               ; preds = %18
  %21 = load %struct.rack_sendmap*, %struct.rack_sendmap** %5, align 8
  %22 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.rack_sendmap*, %struct.rack_sendmap** %5, align 8
  %25 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  %28 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %29 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %32, %27
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 4
  %35 = load i32, i32* @RACK_ACKED, align 4
  %36 = load i32, i32* @RACK_SACK_PASSED, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @RACK_WAS_SACKPASS, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load %struct.rack_sendmap*, %struct.rack_sendmap** %5, align 8
  %42 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.rack_sendmap*, %struct.rack_sendmap** %7, align 8
  %46 = icmp eq %struct.rack_sendmap* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %20
  %48 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %49 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load %struct.rack_sendmap*, %struct.rack_sendmap** %5, align 8
  %52 = load i32, i32* @r_tnext, align 4
  %53 = call i32 @TAILQ_INSERT_HEAD(i32* %50, %struct.rack_sendmap* %51, i32 %52)
  %54 = load %struct.rack_sendmap*, %struct.rack_sendmap** %5, align 8
  store %struct.rack_sendmap* %54, %struct.rack_sendmap** %7, align 8
  br label %64

55:                                               ; preds = %20
  %56 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %57 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load %struct.rack_sendmap*, %struct.rack_sendmap** %7, align 8
  %60 = load %struct.rack_sendmap*, %struct.rack_sendmap** %5, align 8
  %61 = load i32, i32* @r_tnext, align 4
  %62 = call i32 @TAILQ_INSERT_AFTER(i32* %58, %struct.rack_sendmap* %59, %struct.rack_sendmap* %60, i32 %61)
  %63 = load %struct.rack_sendmap*, %struct.rack_sendmap** %5, align 8
  store %struct.rack_sendmap* %63, %struct.rack_sendmap** %7, align 8
  br label %64

64:                                               ; preds = %55, %47
  %65 = load %struct.rack_sendmap*, %struct.rack_sendmap** %7, align 8
  %66 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load i32, i32* @rack_rb_tree_head, align 4
  %68 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %69 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load %struct.rack_sendmap*, %struct.rack_sendmap** %5, align 8
  %72 = call %struct.rack_sendmap* @RB_NEXT(i32 %67, i32* %70, %struct.rack_sendmap* %71)
  store %struct.rack_sendmap* %72, %struct.rack_sendmap** %5, align 8
  br label %8

73:                                               ; preds = %18
  %74 = load i64, i64* @rack_use_sack_filter, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %78 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @sack_filter_clear(i32* %79, i32 %80)
  br label %82

82:                                               ; preds = %76, %73
  ret void
}

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.rack_sendmap*, i32) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(i32*, %struct.rack_sendmap*, %struct.rack_sendmap*, i32) #1

declare dso_local %struct.rack_sendmap* @RB_NEXT(i32, i32*, %struct.rack_sendmap*) #1

declare dso_local i32 @sack_filter_clear(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
