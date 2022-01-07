; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_alloc_wr_mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_alloc_wr_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MHLEN = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@MC_RAW_WR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @alloc_wr_mbuf(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MHLEN, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @MT_DATA, align 4
  %13 = call %struct.mbuf* @m_gethdr(i32 %11, i32 %12)
  store %struct.mbuf* %13, %struct.mbuf** %6, align 8
  br label %25

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MCLBYTES, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @MT_DATA, align 4
  %21 = load i32, i32* @M_PKTHDR, align 4
  %22 = call %struct.mbuf* @m_getcl(i32 %19, i32 %20, i32 %21)
  store %struct.mbuf* %22, %struct.mbuf** %6, align 8
  br label %24

23:                                               ; preds = %14
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  br label %24

24:                                               ; preds = %23, %18
  br label %25

25:                                               ; preds = %24, %10
  %26 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %27 = icmp eq %struct.mbuf* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %45

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %36 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %38 = load i32, i32* @MC_RAW_WR, align 4
  %39 = call i32 @set_mbuf_cflags(%struct.mbuf* %37, i32 %38)
  %40 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @howmany(i32 %41, i32 16)
  %43 = call i32 @set_mbuf_len16(%struct.mbuf* %40, i32 %42)
  %44 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %44, %struct.mbuf** %3, align 8
  br label %45

45:                                               ; preds = %29, %28
  %46 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  ret %struct.mbuf* %46
}

declare dso_local %struct.mbuf* @m_gethdr(i32, i32) #1

declare dso_local %struct.mbuf* @m_getcl(i32, i32, i32) #1

declare dso_local i32 @set_mbuf_cflags(%struct.mbuf*, i32) #1

declare dso_local i32 @set_mbuf_len16(%struct.mbuf*, i32) #1

declare dso_local i32 @howmany(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
