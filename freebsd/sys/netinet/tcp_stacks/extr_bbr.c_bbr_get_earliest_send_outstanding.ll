; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_get_earliest_send_outstanding.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_get_earliest_send_outstanding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bbr_sendmap = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcp_bbr*, %struct.bbr_sendmap*, i32)* @bbr_get_earliest_send_outstanding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_get_earliest_send_outstanding(%struct.tcp_bbr* %0, %struct.bbr_sendmap* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcp_bbr*, align 8
  %6 = alloca %struct.bbr_sendmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bbr_sendmap*, align 8
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %5, align 8
  store %struct.bbr_sendmap* %1, %struct.bbr_sendmap** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %10 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call %struct.bbr_sendmap* @TAILQ_FIRST(i32* %11)
  store %struct.bbr_sendmap* %12, %struct.bbr_sendmap** %8, align 8
  %13 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %14 = icmp eq %struct.bbr_sendmap* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %17 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %18 = icmp eq %struct.bbr_sendmap* %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %3
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %4, align 4
  br label %32

21:                                               ; preds = %15
  %22 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %23 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %26 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %24, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %21, %19
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.bbr_sendmap* @TAILQ_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
