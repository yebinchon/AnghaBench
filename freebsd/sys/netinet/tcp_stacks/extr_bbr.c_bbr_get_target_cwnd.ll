; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_get_target_cwnd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_get_target_cwnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i64, i64, %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@bbr_quanta = common dso_local global i32 0, align 4
@BBR_STATE_PROBE_BW = common dso_local global i64 0, align 8
@BBR_SUB_GAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcp_bbr*, i32, i32)* @bbr_get_target_cwnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_get_target_cwnd(%struct.tcp_bbr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcp_bbr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %11 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %10, i32 0, i32 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %16 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  %19 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %20 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @min(i64 %18, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @bbr_get_raw_target_cwnd(%struct.tcp_bbr* %24, i32 %25, i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @roundup(i32 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @bbr_quanta, align 4
  %31 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %32 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %30, %34
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %39 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %3
  %43 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %44 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @BBR_STATE_PROBE_BW, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %50 = call i64 @bbr_state_val(%struct.tcp_bbr* %49)
  %51 = load i64, i64* @BBR_SUB_GAIN, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 2, %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %53, %48, %42
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = sdiv i32 %59, %60
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %64, %58
  br label %69

69:                                               ; preds = %68, %3
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %72 = call i32 @get_min_cwnd(%struct.tcp_bbr* %71)
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %76 = call i32 @get_min_cwnd(%struct.tcp_bbr* %75)
  store i32 %76, i32* %4, align 4
  br label %79

77:                                               ; preds = %69
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %74
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @bbr_get_raw_target_cwnd(%struct.tcp_bbr*, i32, i32) #1

declare dso_local i64 @bbr_state_val(%struct.tcp_bbr*) #1

declare dso_local i32 @get_min_cwnd(%struct.tcp_bbr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
