; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_update_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_update_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32 }
%struct.tcp_bbr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bbr_sendmap = type { i32, i32, i64, i64, i64 }

@r_next = common dso_local global i32 0, align 4
@r_tnext = common dso_local global i32 0, align 4
@BBR_HAS_FIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tcpcb*, %struct.tcp_bbr*, %struct.bbr_sendmap*, i64, i64*, i64)* @bbr_update_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bbr_update_entry(%struct.tcpcb* %0, %struct.tcp_bbr* %1, %struct.bbr_sendmap* %2, i64 %3, i64* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.tcpcb*, align 8
  %9 = alloca %struct.tcp_bbr*, align 8
  %10 = alloca %struct.bbr_sendmap*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.bbr_sendmap*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %8, align 8
  store %struct.tcp_bbr* %1, %struct.tcp_bbr** %9, align 8
  store %struct.bbr_sendmap* %2, %struct.bbr_sendmap** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load i64*, i64** %12, align 8
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %16, align 8
  %20 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %10, align 8
  %21 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %16, align 8
  %24 = add nsw i64 %22, %23
  store i64 %24, i64* %15, align 8
  %25 = load i64, i64* %15, align 8
  %26 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %10, align 8
  %27 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @SEQ_GEQ(i64 %25, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %6
  %32 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %33 = load %struct.tcp_bbr*, %struct.tcp_bbr** %9, align 8
  %34 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %13, align 8
  %37 = call i32 @bbr_update_rsm(%struct.tcpcb* %32, %struct.tcp_bbr* %33, %struct.bbr_sendmap* %34, i64 %35, i64 %36)
  %38 = load i64, i64* %15, align 8
  %39 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %10, align 8
  %40 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i64*, i64** %12, align 8
  store i64 0, i64* %44, align 8
  store i64 0, i64* %7, align 8
  br label %110

45:                                               ; preds = %31
  %46 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %10, align 8
  %47 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %10, align 8
  %50 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  store i64 %52, i64* %17, align 8
  %53 = load i64, i64* %16, align 8
  %54 = load i64, i64* %17, align 8
  %55 = sub nsw i64 %53, %54
  %56 = load i64*, i64** %12, align 8
  store i64 %55, i64* %56, align 8
  %57 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %10, align 8
  %58 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %7, align 8
  br label %110

60:                                               ; preds = %6
  %61 = load %struct.tcp_bbr*, %struct.tcp_bbr** %9, align 8
  %62 = call %struct.bbr_sendmap* @bbr_alloc_full_limit(%struct.tcp_bbr* %61)
  store %struct.bbr_sendmap* %62, %struct.bbr_sendmap** %14, align 8
  %63 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %14, align 8
  %64 = icmp eq %struct.bbr_sendmap* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i64*, i64** %12, align 8
  store i64 0, i64* %66, align 8
  store i64 0, i64* %7, align 8
  br label %110

67:                                               ; preds = %60
  %68 = load %struct.tcp_bbr*, %struct.tcp_bbr** %9, align 8
  %69 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %14, align 8
  %70 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %10, align 8
  %71 = load i64, i64* %15, align 8
  %72 = call i32 @bbr_clone_rsm(%struct.tcp_bbr* %68, %struct.bbr_sendmap* %69, %struct.bbr_sendmap* %70, i64 %71)
  %73 = load %struct.tcp_bbr*, %struct.tcp_bbr** %9, align 8
  %74 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %10, align 8
  %77 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %14, align 8
  %78 = load i32, i32* @r_next, align 4
  %79 = call i32 @TAILQ_INSERT_AFTER(i32* %75, %struct.bbr_sendmap* %76, %struct.bbr_sendmap* %77, i32 %78)
  %80 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %14, align 8
  %81 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %10, align 8
  %83 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %67
  %87 = load %struct.tcp_bbr*, %struct.tcp_bbr** %9, align 8
  %88 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %10, align 8
  %91 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %14, align 8
  %92 = load i32, i32* @r_tnext, align 4
  %93 = call i32 @TAILQ_INSERT_AFTER(i32* %89, %struct.bbr_sendmap* %90, %struct.bbr_sendmap* %91, i32 %92)
  %94 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %14, align 8
  %95 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %86, %67
  %97 = load i32, i32* @BBR_HAS_FIN, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %10, align 8
  %100 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %104 = load %struct.tcp_bbr*, %struct.tcp_bbr** %9, align 8
  %105 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %10, align 8
  %106 = load i64, i64* %11, align 8
  %107 = load i64, i64* %13, align 8
  %108 = call i32 @bbr_update_rsm(%struct.tcpcb* %103, %struct.tcp_bbr* %104, %struct.bbr_sendmap* %105, i64 %106, i64 %107)
  %109 = load i64*, i64** %12, align 8
  store i64 0, i64* %109, align 8
  store i64 0, i64* %7, align 8
  br label %110

110:                                              ; preds = %96, %65, %45, %43
  %111 = load i64, i64* %7, align 8
  ret i64 %111
}

declare dso_local i64 @SEQ_GEQ(i64, i64) #1

declare dso_local i32 @bbr_update_rsm(%struct.tcpcb*, %struct.tcp_bbr*, %struct.bbr_sendmap*, i64, i64) #1

declare dso_local %struct.bbr_sendmap* @bbr_alloc_full_limit(%struct.tcp_bbr*) #1

declare dso_local i32 @bbr_clone_rsm(%struct.tcp_bbr*, %struct.bbr_sendmap*, %struct.bbr_sendmap*, i64) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(i32*, %struct.bbr_sendmap*, %struct.bbr_sendmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
