; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/udp_pingpong/extr_udp_pingpong.c_calc_rtt.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/udp_pingpong/extr_udp_pingpong.c_calc_rtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_pkt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rtt = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.test_pkt*, %struct.rtt*)* @calc_rtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_rtt(%struct.test_pkt* %0, %struct.rtt* %1) #0 {
  %3 = alloca %struct.test_pkt*, align 8
  %4 = alloca %struct.rtt*, align 8
  store %struct.test_pkt* %0, %struct.test_pkt** %3, align 8
  store %struct.rtt* %1, %struct.rtt** %4, align 8
  %5 = load %struct.test_pkt*, %struct.test_pkt** %3, align 8
  %6 = getelementptr inbounds %struct.test_pkt, %struct.test_pkt* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.test_pkt*, %struct.test_pkt** %3, align 8
  %11 = getelementptr inbounds %struct.test_pkt, %struct.test_pkt* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.rtt*, %struct.rtt** %4, align 8
  %16 = getelementptr inbounds %struct.rtt, %struct.rtt* %15, i32 0, i32 3
  %17 = call i32 @timespecsub(i32* %9, i32* %14, i32* %16)
  %18 = load %struct.test_pkt*, %struct.test_pkt** %3, align 8
  %19 = getelementptr inbounds %struct.test_pkt, %struct.test_pkt* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.test_pkt*, %struct.test_pkt** %3, align 8
  %24 = getelementptr inbounds %struct.test_pkt, %struct.test_pkt* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.rtt*, %struct.rtt** %4, align 8
  %29 = getelementptr inbounds %struct.rtt, %struct.rtt* %28, i32 0, i32 2
  %30 = call i32 @timespecsub(i32* %22, i32* %27, i32* %29)
  %31 = load %struct.rtt*, %struct.rtt** %4, align 8
  %32 = getelementptr inbounds %struct.rtt, %struct.rtt* %31, i32 0, i32 3
  %33 = load %struct.rtt*, %struct.rtt** %4, align 8
  %34 = getelementptr inbounds %struct.rtt, %struct.rtt* %33, i32 0, i32 2
  %35 = load %struct.rtt*, %struct.rtt** %4, align 8
  %36 = getelementptr inbounds %struct.rtt, %struct.rtt* %35, i32 0, i32 1
  %37 = call i32 @timespecadd(i32* %32, i32* %34, i32* %36)
  %38 = load %struct.test_pkt*, %struct.test_pkt** %3, align 8
  %39 = getelementptr inbounds %struct.test_pkt, %struct.test_pkt* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load %struct.test_pkt*, %struct.test_pkt** %3, align 8
  %44 = getelementptr inbounds %struct.test_pkt, %struct.test_pkt* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.rtt*, %struct.rtt** %4, align 8
  %49 = getelementptr inbounds %struct.rtt, %struct.rtt* %48, i32 0, i32 0
  %50 = call i32 @timespecsub(i32* %42, i32* %47, i32* %49)
  ret void
}

declare dso_local i32 @timespecsub(i32*, i32*, i32*) #1

declare dso_local i32 @timespecadd(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
