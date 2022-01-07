; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_check_recovery_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_check_recovery_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bbr_sendmap = type { i32, i64, i64, i64, i64, i32* }
%struct.tcpcb = type { i32 }
%struct.tcp_bbr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@TF_SENTFIN = common dso_local global i32 0, align 4
@BBR_ACKED = common dso_local global i32 0, align 4
@DUP_ACK_THRESHOLD = common dso_local global i64 0, align 8
@BBR_SACK_PASSED = common dso_local global i32 0, align 4
@BBR_MARKED_LOST = common dso_local global i32 0, align 4
@CC_NDUPACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bbr_sendmap* (%struct.tcpcb*, %struct.tcp_bbr*, i32)* @bbr_check_recovery_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bbr_sendmap* @bbr_check_recovery_mode(%struct.tcpcb* %0, %struct.tcp_bbr* %1, i32 %2) #0 {
  %4 = alloca %struct.bbr_sendmap*, align 8
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca %struct.tcp_bbr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bbr_sendmap*, align 8
  %9 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %5, align 8
  store %struct.tcp_bbr* %1, %struct.tcp_bbr** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %11 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  %13 = call i64 @TAILQ_EMPTY(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store %struct.bbr_sendmap* null, %struct.bbr_sendmap** %4, align 8
  br label %128

16:                                               ; preds = %3
  %17 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %18 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = call %struct.bbr_sendmap* @TAILQ_FIRST(i32* %19)
  store %struct.bbr_sendmap* %20, %struct.bbr_sendmap** %8, align 8
  %21 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %22 = icmp eq %struct.bbr_sendmap* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store %struct.bbr_sendmap* null, %struct.bbr_sendmap** %4, align 8
  br label %128

24:                                               ; preds = %16
  %25 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %26 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TF_SENTFIN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store %struct.bbr_sendmap* null, %struct.bbr_sendmap** %4, align 8
  br label %128

32:                                               ; preds = %24
  %33 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %34 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @BBR_ACKED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %41 = call %struct.bbr_sendmap* @bbr_find_lowest_rsm(%struct.tcp_bbr* %40)
  store %struct.bbr_sendmap* %41, %struct.bbr_sendmap** %8, align 8
  %42 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %43 = icmp eq %struct.bbr_sendmap* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store %struct.bbr_sendmap* null, %struct.bbr_sendmap** %4, align 8
  br label %128

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %32
  %47 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %48 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %49, 1
  store i64 %50, i64* %9, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %53 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %52, i32 0, i32 5
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @SEQ_LEQ(i32 %51, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  store %struct.bbr_sendmap* null, %struct.bbr_sendmap** %4, align 8
  br label %128

61:                                               ; preds = %46
  %62 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %63 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @bbr_is_lost(%struct.tcp_bbr* %62, %struct.bbr_sendmap* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %127

67:                                               ; preds = %61
  %68 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %69 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DUP_ACK_THRESHOLD, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %80, label %73

73:                                               ; preds = %67
  %74 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %75 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @BBR_SACK_PASSED, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %127

80:                                               ; preds = %73, %67
  %81 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %82 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @BBR_MARKED_LOST, align 4
  %85 = and i32 %83, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %121

87:                                               ; preds = %80
  %88 = load i32, i32* @BBR_MARKED_LOST, align 4
  %89 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %90 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %94 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %97 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %95, %98
  %100 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %101 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %99
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 4
  %107 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %108 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %111 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %109, %112
  %114 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %115 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %113
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %116, align 4
  br label %121

121:                                              ; preds = %87, %80
  %122 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %123 = load i32, i32* @CC_NDUPACK, align 4
  %124 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %125 = call i32 @bbr_cong_signal(%struct.tcpcb* %122, i32* null, i32 %123, %struct.bbr_sendmap* %124)
  %126 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  store %struct.bbr_sendmap* %126, %struct.bbr_sendmap** %4, align 8
  br label %128

127:                                              ; preds = %73, %61
  store %struct.bbr_sendmap* null, %struct.bbr_sendmap** %4, align 8
  br label %128

128:                                              ; preds = %127, %121, %60, %44, %31, %23, %15
  %129 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %4, align 8
  ret %struct.bbr_sendmap* %129
}

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.bbr_sendmap* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.bbr_sendmap* @bbr_find_lowest_rsm(%struct.tcp_bbr*) #1

declare dso_local i64 @SEQ_LEQ(i32, i32) #1

declare dso_local i64 @bbr_is_lost(%struct.tcp_bbr*, %struct.bbr_sendmap*, i32) #1

declare dso_local i32 @bbr_cong_signal(%struct.tcpcb*, i32*, i32, %struct.bbr_sendmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
