; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_post_recovery.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_post_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i64, i32, i32, i32, %struct.TYPE_5__*, i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.tcphdr = type { i32 }
%struct.tcp_rack = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_5__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcphdr*)* @rack_post_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rack_post_recovery(%struct.tcpcb* %0, %struct.tcphdr* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.tcphdr*, align 8
  %5 = alloca %struct.tcp_rack*, align 8
  %6 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %4, align 8
  %7 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %8 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @INP_WLOCK_ASSERT(i32 %9)
  %11 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %12 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.tcp_rack*
  store %struct.tcp_rack* %14, %struct.tcp_rack** %5, align 8
  %15 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %16 = call %struct.TYPE_6__* @CC_ALGO(%struct.tcpcb* %15)
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %17, align 8
  %19 = icmp ne i32 (%struct.TYPE_5__*)* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %2
  %21 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %22 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %25 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %24, i32 0, i32 5
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  %28 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %29 = call %struct.TYPE_6__* @CC_ALGO(%struct.tcpcb* %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %30, align 8
  %32 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %33 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %32, i32 0, i32 5
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = call i32 %31(%struct.TYPE_5__* %34)
  br label %36

36:                                               ; preds = %20, %2
  %37 = load %struct.tcp_rack*, %struct.tcp_rack** %5, align 8
  %38 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %36
  %43 = load %struct.tcp_rack*, %struct.tcp_rack** %5, align 8
  %44 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %72

48:                                               ; preds = %42
  %49 = load %struct.tcp_rack*, %struct.tcp_rack** %5, align 8
  %50 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.tcp_rack*, %struct.tcp_rack** %5, align 8
  %54 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 %52, %56
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp sgt i32 %58, 50
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  store i32 50, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %48
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %64 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %62, %65
  %67 = sdiv i32 %66, 100
  %68 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %69 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %89

72:                                               ; preds = %42, %36
  %73 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %74 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %78 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %76, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %72
  %82 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %83 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %87 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %81, %72
  br label %89

89:                                               ; preds = %88, %61
  %90 = load %struct.tcp_rack*, %struct.tcp_rack** %5, align 8
  %91 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %89
  %96 = load %struct.tcp_rack*, %struct.tcp_rack** %5, align 8
  %97 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %101 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %99
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 8
  %106 = load %struct.tcp_rack*, %struct.tcp_rack** %5, align 8
  %107 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  store i64 0, i64* %108, align 8
  %109 = load %struct.tcp_rack*, %struct.tcp_rack** %5, align 8
  %110 = call i32 @rack_log_to_prr(%struct.tcp_rack* %109, i32 1)
  br label %111

111:                                              ; preds = %95, %89
  %112 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %113 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %116 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 8
  %117 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %118 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @EXIT_RECOVERY(i32 %119)
  ret void
}

declare dso_local i32 @INP_WLOCK_ASSERT(i32) #1

declare dso_local %struct.TYPE_6__* @CC_ALGO(%struct.tcpcb*) #1

declare dso_local i32 @rack_log_to_prr(%struct.tcp_rack*, i32) #1

declare dso_local i32 @EXIT_RECOVERY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
