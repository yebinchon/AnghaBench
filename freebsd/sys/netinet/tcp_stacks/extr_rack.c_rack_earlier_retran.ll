; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_earlier_retran.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_earlier_retran.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i64, i32, i32, i32, i64 }
%struct.rack_sendmap = type { i32, i64, i32 }
%struct.tcp_rack = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@RACK_HAS_FIN = common dso_local global i32 0, align 4
@RACK_TLP = common dso_local global i32 0, align 4
@RACK_WAS_SACKPASS = common dso_local global i32 0, align 4
@rack_reorder_seen = common dso_local global i32 0, align 4
@rack_badfr = common dso_local global i32 0, align 4
@rack_badfr_bytes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.rack_sendmap*, i32, i32)* @rack_earlier_retran to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rack_earlier_retran(%struct.tcpcb* %0, %struct.rack_sendmap* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca %struct.rack_sendmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcp_rack*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %5, align 8
  store %struct.rack_sendmap* %1, %struct.rack_sendmap** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %11 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @RACK_HAS_FIN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %115

17:                                               ; preds = %4
  %18 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %19 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @RACK_TLP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %115

25:                                               ; preds = %17
  %26 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %27 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.tcp_rack*
  store %struct.tcp_rack* %29, %struct.tcp_rack** %9, align 8
  %30 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %31 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @IN_RECOVERY(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %87

35:                                               ; preds = %25
  %36 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %37 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %41 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %86

44:                                               ; preds = %35
  %45 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %46 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @EXIT_RECOVERY(i32 %47)
  %49 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %50 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %53 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %55 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %59 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %57, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %44
  %63 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %64 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %68 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %62, %44
  %70 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %71 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %75 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %73, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %69
  %79 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %80 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %84 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %78, %69
  br label %86

86:                                               ; preds = %85, %35
  br label %87

87:                                               ; preds = %86, %25
  %88 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %89 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @RACK_WAS_SACKPASS, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  %95 = load i32, i32* @rack_reorder_seen, align 4
  %96 = call i32 @counter_u64_add(i32 %95, i32 1)
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.tcp_rack*, %struct.tcp_rack** %9, align 8
  %99 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  store i32 %97, i32* %100, align 8
  br label %101

101:                                              ; preds = %94, %87
  %102 = load i32, i32* @rack_badfr, align 4
  %103 = call i32 @counter_u64_add(i32 %102, i32 1)
  %104 = load i32, i32* @rack_badfr_bytes, align 4
  %105 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %106 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = load %struct.rack_sendmap*, %struct.rack_sendmap** %6, align 8
  %110 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %108, %111
  %113 = trunc i64 %112 to i32
  %114 = call i32 @counter_u64_add(i32 %104, i32 %113)
  br label %115

115:                                              ; preds = %101, %24, %16
  ret void
}

declare dso_local i64 @IN_RECOVERY(i32) #1

declare dso_local i32 @EXIT_RECOVERY(i32) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
