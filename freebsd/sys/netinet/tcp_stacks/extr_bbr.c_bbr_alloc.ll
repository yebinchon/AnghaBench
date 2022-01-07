; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bbr_sendmap = type { i32 }
%struct.tcp_bbr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@bbr_to_alloc = common dso_local global i32 0, align 4
@bbr_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@bbr_to_alloc_emerg = common dso_local global i32 0, align 4
@r_next = common dso_local global i32 0, align 4
@bbr_to_alloc_failed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bbr_sendmap* (%struct.tcp_bbr*)* @bbr_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bbr_sendmap* @bbr_alloc(%struct.tcp_bbr* %0) #0 {
  %2 = alloca %struct.bbr_sendmap*, align 8
  %3 = alloca %struct.tcp_bbr*, align 8
  %4 = alloca %struct.bbr_sendmap*, align 8
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %3, align 8
  %5 = load i32, i32* @bbr_to_alloc, align 4
  %6 = call i32 @BBR_STAT_INC(i32 %5)
  %7 = load i32, i32* @bbr_zone, align 4
  %8 = load i32, i32* @M_NOWAIT, align 4
  %9 = load i32, i32* @M_ZERO, align 4
  %10 = or i32 %8, %9
  %11 = call %struct.bbr_sendmap* @uma_zalloc(i32 %7, i32 %10)
  store %struct.bbr_sendmap* %11, %struct.bbr_sendmap** %4, align 8
  %12 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %4, align 8
  %13 = icmp ne %struct.bbr_sendmap* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %16 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %4, align 8
  store %struct.bbr_sendmap* %20, %struct.bbr_sendmap** %2, align 8
  br label %49

21:                                               ; preds = %1
  %22 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %23 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %21
  %28 = load i32, i32* @bbr_to_alloc_emerg, align 4
  %29 = call i32 @BBR_STAT_INC(i32 %28)
  %30 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %31 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = call %struct.bbr_sendmap* @TAILQ_FIRST(i32* %32)
  store %struct.bbr_sendmap* %33, %struct.bbr_sendmap** %4, align 8
  %34 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %35 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %4, align 8
  %38 = load i32, i32* @r_next, align 4
  %39 = call i32 @TAILQ_REMOVE(i32* %36, %struct.bbr_sendmap* %37, i32 %38)
  %40 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %41 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %42, align 8
  %45 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %4, align 8
  store %struct.bbr_sendmap* %45, %struct.bbr_sendmap** %2, align 8
  br label %49

46:                                               ; preds = %21
  %47 = load i32, i32* @bbr_to_alloc_failed, align 4
  %48 = call i32 @BBR_STAT_INC(i32 %47)
  store %struct.bbr_sendmap* null, %struct.bbr_sendmap** %2, align 8
  br label %49

49:                                               ; preds = %46, %27, %14
  %50 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %2, align 8
  ret %struct.bbr_sendmap* %50
}

declare dso_local i32 @BBR_STAT_INC(i32) #1

declare dso_local %struct.bbr_sendmap* @uma_zalloc(i32, i32) #1

declare dso_local %struct.bbr_sendmap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.bbr_sendmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
