; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_get_a_state_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_get_a_state_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { %struct.TYPE_4__, i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tcp_bbr*, i64)* @bbr_get_a_state_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bbr_get_a_state_target(%struct.tcp_bbr* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tcp_bbr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %9 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %14 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %15 = call i32 @bbr_get_bw(%struct.tcp_bbr* %14)
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @bbr_get_target_cwnd(%struct.tcp_bbr* %13, i32 %15, i64 %16)
  store i64 %17, i64* %7, align 8
  br label %48

18:                                               ; preds = %2
  %19 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %20 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %25 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  %28 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %29 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @min(i64 %27, i32 %31)
  store i64 %32, i64* %6, align 8
  %33 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %34 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %35 = call i32 @bbr_get_bw(%struct.tcp_bbr* %34)
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @bbr_get_raw_target_cwnd(%struct.tcp_bbr* %33, i32 %35, i64 %36)
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @roundup(i32 %37, i64 %38)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %42 = call i64 @get_min_cwnd(%struct.tcp_bbr* %41)
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %18
  %45 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %46 = call i64 @get_min_cwnd(%struct.tcp_bbr* %45)
  store i64 %46, i64* %3, align 8
  br label %50

47:                                               ; preds = %18
  br label %48

48:                                               ; preds = %47, %12
  %49 = load i64, i64* %7, align 8
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %48, %44
  %51 = load i64, i64* %3, align 8
  ret i64 %51
}

declare dso_local i64 @bbr_get_target_cwnd(%struct.tcp_bbr*, i32, i64) #1

declare dso_local i32 @bbr_get_bw(%struct.tcp_bbr*) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i64 @roundup(i32, i64) #1

declare dso_local i32 @bbr_get_raw_target_cwnd(%struct.tcp_bbr*, i32, i64) #1

declare dso_local i64 @get_min_cwnd(%struct.tcp_bbr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
