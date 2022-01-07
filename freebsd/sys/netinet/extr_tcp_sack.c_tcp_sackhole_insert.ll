; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_sack.c_tcp_sackhole_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_sack.c_tcp_sackhole_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.sackhole* }
%struct.sackhole = type { i32 }

@scblink = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sackhole* (%struct.tcpcb*, i32, i32, %struct.sackhole*)* @tcp_sackhole_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sackhole* @tcp_sackhole_insert(%struct.tcpcb* %0, i32 %1, i32 %2, %struct.sackhole* %3) #0 {
  %5 = alloca %struct.sackhole*, align 8
  %6 = alloca %struct.tcpcb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sackhole*, align 8
  %10 = alloca %struct.sackhole*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.sackhole* %3, %struct.sackhole** %9, align 8
  %11 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.sackhole* @tcp_sackhole_alloc(%struct.tcpcb* %11, i32 %12, i32 %13)
  store %struct.sackhole* %14, %struct.sackhole** %10, align 8
  %15 = load %struct.sackhole*, %struct.sackhole** %10, align 8
  %16 = icmp eq %struct.sackhole* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store %struct.sackhole* null, %struct.sackhole** %5, align 8
  br label %47

18:                                               ; preds = %4
  %19 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %20 = icmp ne %struct.sackhole* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %23 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %22, i32 0, i32 1
  %24 = load %struct.sackhole*, %struct.sackhole** %9, align 8
  %25 = load %struct.sackhole*, %struct.sackhole** %10, align 8
  %26 = load i32, i32* @scblink, align 4
  %27 = call i32 @TAILQ_INSERT_AFTER(i32* %23, %struct.sackhole* %24, %struct.sackhole* %25, i32 %26)
  br label %34

28:                                               ; preds = %18
  %29 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %30 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %29, i32 0, i32 1
  %31 = load %struct.sackhole*, %struct.sackhole** %10, align 8
  %32 = load i32, i32* @scblink, align 4
  %33 = call i32 @TAILQ_INSERT_TAIL(i32* %30, %struct.sackhole* %31, i32 %32)
  br label %34

34:                                               ; preds = %28, %21
  %35 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %36 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.sackhole*, %struct.sackhole** %37, align 8
  %39 = icmp eq %struct.sackhole* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.sackhole*, %struct.sackhole** %10, align 8
  %42 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %43 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store %struct.sackhole* %41, %struct.sackhole** %44, align 8
  br label %45

45:                                               ; preds = %40, %34
  %46 = load %struct.sackhole*, %struct.sackhole** %10, align 8
  store %struct.sackhole* %46, %struct.sackhole** %5, align 8
  br label %47

47:                                               ; preds = %45, %17
  %48 = load %struct.sackhole*, %struct.sackhole** %5, align 8
  ret %struct.sackhole* %48
}

declare dso_local %struct.sackhole* @tcp_sackhole_alloc(%struct.tcpcb*, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(i32*, %struct.sackhole*, %struct.sackhole*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.sackhole*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
