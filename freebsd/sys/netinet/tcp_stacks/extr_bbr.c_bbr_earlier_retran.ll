; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_earlier_retran.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_earlier_retran.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32 }
%struct.tcp_bbr = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.bbr_sendmap = type { i32, i64, i64 }

@BBR_HAS_FIN = common dso_local global i32 0, align 4
@BBR_TLP = common dso_local global i32 0, align 4
@BBR_CUM_ACKED = common dso_local global i32 0, align 4
@BBR_WAS_SACKPASS = common dso_local global i32 0, align 4
@bbr_reorder_seen = common dso_local global i32 0, align 4
@BBR_MARKED_LOST = common dso_local global i32 0, align 4
@bbr_badfr = common dso_local global i32 0, align 4
@bbr_badfr_bytes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcp_bbr*, %struct.bbr_sendmap*, i32, i32, i32)* @bbr_earlier_retran to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_earlier_retran(%struct.tcpcb* %0, %struct.tcp_bbr* %1, %struct.bbr_sendmap* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.tcpcb*, align 8
  %8 = alloca %struct.tcp_bbr*, align 8
  %9 = alloca %struct.bbr_sendmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %7, align 8
  store %struct.tcp_bbr* %1, %struct.tcp_bbr** %8, align 8
  store %struct.bbr_sendmap* %2, %struct.bbr_sendmap** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %9, align 8
  %14 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BBR_HAS_FIN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  br label %122

20:                                               ; preds = %6
  %21 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %9, align 8
  %22 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BBR_TLP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %29 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  br label %122

30:                                               ; preds = %20
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @BBR_CUM_ACKED, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %122

35:                                               ; preds = %30
  %36 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %9, align 8
  %37 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @BBR_WAS_SACKPASS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i32, i32* @bbr_reorder_seen, align 4
  %44 = call i32 @BBR_STAT_INC(i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %47 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 4
  br label %49

49:                                               ; preds = %42, %35
  %50 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %9, align 8
  %51 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @BBR_MARKED_LOST, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %110

56:                                               ; preds = %49
  %57 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %9, align 8
  %58 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %9, align 8
  %61 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  %64 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %65 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = sub nsw i64 %68, %63
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %66, align 8
  %71 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %9, align 8
  %72 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %9, align 8
  %75 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %73, %76
  %78 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %79 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = sub nsw i64 %82, %77
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %80, align 8
  %85 = load i32, i32* @BBR_MARKED_LOST, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %9, align 8
  %88 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %92 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %96 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @SEQ_GT(i32 %94, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %56
  %102 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %103 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %107 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 4
  br label %109

109:                                              ; preds = %101, %56
  br label %110

110:                                              ; preds = %109, %49
  %111 = load i32, i32* @bbr_badfr, align 4
  %112 = call i32 @BBR_STAT_INC(i32 %111)
  %113 = load i32, i32* @bbr_badfr_bytes, align 4
  %114 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %9, align 8
  %115 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %9, align 8
  %118 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %116, %119
  %121 = call i32 @BBR_STAT_ADD(i32 %113, i64 %120)
  br label %122

122:                                              ; preds = %110, %34, %27, %19
  ret void
}

declare dso_local i32 @BBR_STAT_INC(i32) #1

declare dso_local i64 @SEQ_GT(i32, i32) #1

declare dso_local i32 @BBR_STAT_ADD(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
