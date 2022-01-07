; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_frags_per_mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_frags_per_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mbuf_ext_pgs* }
%struct.mbuf_ext_pgs = type { i64, i64, i64 }

@M_NOMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*)* @frags_per_mbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frags_per_mbuf(%struct.mbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.mbuf_ext_pgs*, align 8
  %5 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  %6 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %7 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @M_NOMAP, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %42

13:                                               ; preds = %1
  %14 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %15 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %16, align 8
  store %struct.mbuf_ext_pgs* %17, %struct.mbuf_ext_pgs** %4, align 8
  store i32 0, i32* %5, align 4
  %18 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %4, align 8
  %19 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %22, %13
  %26 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %4, align 8
  %27 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %5, align 4
  %33 = load %struct.mbuf_ext_pgs*, %struct.mbuf_ext_pgs** %4, align 8
  %34 = getelementptr inbounds %struct.mbuf_ext_pgs, %struct.mbuf_ext_pgs* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %37, %25
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
