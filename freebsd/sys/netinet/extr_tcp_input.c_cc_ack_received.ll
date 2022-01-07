; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_input.c_cc_ack_received.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_input.c_cc_ack_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i64, i64, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }
%struct.tcphdr = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_3__*, i64)* }

@CCF_CWND_LIMITED = common dso_local global i32 0, align 4
@CC_ACK = common dso_local global i64 0, align 8
@V_tcp_abc_l_var = common dso_local global i64 0, align 8
@CCF_ABC_SENTAWND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cc_ack_received(%struct.tcpcb* %0, %struct.tcphdr* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca %struct.tcphdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %5, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %10 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @INP_WLOCK_ASSERT(i32 %11)
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %15 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %14, i32 0, i32 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  store i64 %13, i64* %17, align 8
  %18 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %19 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %20 = call i32 @BYTES_THIS_ACK(%struct.tcpcb* %18, %struct.tcphdr* %19)
  %21 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %22 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %21, i32 0, i32 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  store i32 %20, i32* %24, align 8
  %25 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %26 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %29 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sle i64 %27, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %4
  %33 = load i32, i32* @CCF_CWND_LIMITED, align 4
  %34 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %35 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %34, i32 0, i32 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %33
  store i32 %39, i32* %37, align 4
  br label %49

40:                                               ; preds = %4
  %41 = load i32, i32* @CCF_CWND_LIMITED, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %44 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %43, i32 0, i32 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %42
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %40, %32
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @CC_ACK, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %113

53:                                               ; preds = %49
  %54 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %55 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %58 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %56, %59
  br i1 %60, label %61, label %101

61:                                               ; preds = %53
  %62 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %63 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %62, i32 0, i32 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* @V_tcp_abc_l_var, align 8
  %69 = mul nsw i64 %67, %68
  %70 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %71 = call i64 @tcp_maxseg(%struct.tcpcb* %70)
  %72 = mul nsw i64 %69, %71
  %73 = call i64 @min(i32 %66, i64 %72)
  %74 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %75 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, %73
  store i64 %77, i64* %75, align 8
  %78 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %79 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %82 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sge i64 %80, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %61
  %86 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %87 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %90 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %91, %88
  store i64 %92, i64* %90, align 8
  %93 = load i32, i32* @CCF_ABC_SENTAWND, align 4
  %94 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %95 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %94, i32 0, i32 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %93
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %85, %61
  br label %112

101:                                              ; preds = %53
  %102 = load i32, i32* @CCF_ABC_SENTAWND, align 4
  %103 = xor i32 %102, -1
  %104 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %105 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %104, i32 0, i32 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %103
  store i32 %109, i32* %107, align 4
  %110 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %111 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %110, i32 0, i32 3
  store i64 0, i64* %111, align 8
  br label %112

112:                                              ; preds = %101, %100
  br label %113

113:                                              ; preds = %112, %49
  %114 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %115 = call %struct.TYPE_4__* @CC_ALGO(%struct.tcpcb* %114)
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32 (%struct.TYPE_3__*, i64)*, i32 (%struct.TYPE_3__*, i64)** %116, align 8
  %118 = icmp ne i32 (%struct.TYPE_3__*, i64)* %117, null
  br i1 %118, label %119, label %136

119:                                              ; preds = %113
  %120 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %121 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %124 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %123, i32 0, i32 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  store i32 %122, i32* %126, align 8
  %127 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %128 = call %struct.TYPE_4__* @CC_ALGO(%struct.tcpcb* %127)
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32 (%struct.TYPE_3__*, i64)*, i32 (%struct.TYPE_3__*, i64)** %129, align 8
  %131 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %132 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %131, i32 0, i32 4
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = load i64, i64* %8, align 8
  %135 = call i32 %130(%struct.TYPE_3__* %133, i64 %134)
  br label %136

136:                                              ; preds = %119, %113
  ret void
}

declare dso_local i32 @INP_WLOCK_ASSERT(i32) #1

declare dso_local i32 @BYTES_THIS_ACK(%struct.tcpcb*, %struct.tcphdr*) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i64 @tcp_maxseg(%struct.tcpcb*) #1

declare dso_local %struct.TYPE_4__* @CC_ALGO(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
