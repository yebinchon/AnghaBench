; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_reass.c_tcp_reass_merge_into.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_reass.c_tcp_reass_merge_into.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i32 }
%struct.tseg_qent = type { i32, i64, %struct.TYPE_6__*, i64, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }

@TH_FIN = common dso_local global i32 0, align 4
@tqe_q = common dso_local global i32 0, align 4
@tcp_reass_zone = common dso_local global i32 0, align 4
@TCP_R_LOG_MERGE_INTO = common dso_local global i32 0, align 4
@merge_into = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tseg_qent*, %struct.tseg_qent*)* @tcp_reass_merge_into to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_reass_merge_into(%struct.tcpcb* %0, %struct.tseg_qent* %1, %struct.tseg_qent* %2) #0 {
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca %struct.tseg_qent*, align 8
  %6 = alloca %struct.tseg_qent*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %4, align 8
  store %struct.tseg_qent* %1, %struct.tseg_qent** %5, align 8
  store %struct.tseg_qent* %2, %struct.tseg_qent** %6, align 8
  %7 = load %struct.tseg_qent*, %struct.tseg_qent** %6, align 8
  %8 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %7, i32 0, i32 2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = load %struct.tseg_qent*, %struct.tseg_qent** %5, align 8
  %11 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %10, i32 0, i32 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %13, align 8
  %14 = load %struct.tseg_qent*, %struct.tseg_qent** %6, align 8
  %15 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %14, i32 0, i32 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load %struct.tseg_qent*, %struct.tseg_qent** %5, align 8
  %18 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %17, i32 0, i32 4
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %18, align 8
  %19 = load %struct.tseg_qent*, %struct.tseg_qent** %6, align 8
  %20 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.tseg_qent*, %struct.tseg_qent** %5, align 8
  %23 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, %21
  store i64 %25, i64* %23, align 8
  %26 = load %struct.tseg_qent*, %struct.tseg_qent** %6, align 8
  %27 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.tseg_qent*, %struct.tseg_qent** %5, align 8
  %30 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, %28
  store i64 %32, i64* %30, align 8
  %33 = load %struct.tseg_qent*, %struct.tseg_qent** %6, align 8
  %34 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.tseg_qent*, %struct.tseg_qent** %5, align 8
  %37 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %35
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  %45 = load %struct.tseg_qent*, %struct.tseg_qent** %6, align 8
  %46 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @TH_FIN, align 4
  %49 = and i32 %47, %48
  %50 = load %struct.tseg_qent*, %struct.tseg_qent** %5, align 8
  %51 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %55 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %54, i32 0, i32 1
  %56 = load %struct.tseg_qent*, %struct.tseg_qent** %6, align 8
  %57 = load i32, i32* @tqe_q, align 4
  %58 = call i32 @TAILQ_REMOVE(i32* %55, %struct.tseg_qent* %56, i32 %57)
  %59 = load i32, i32* @tcp_reass_zone, align 4
  %60 = load %struct.tseg_qent*, %struct.tseg_qent** %6, align 8
  %61 = call i32 @uma_zfree(i32 %59, %struct.tseg_qent* %60)
  %62 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %63 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %63, align 4
  ret void
}

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.tseg_qent*, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.tseg_qent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
