; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_input.c_cc_ecnpkt_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_input.c_cc_ecnpkt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tcphdr = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_3__*)* }

@IPTOS_ECN_MASK = common dso_local global i32 0, align 4
@CCF_IPHDR_CE = common dso_local global i32 0, align 4
@TH_CWR = common dso_local global i32 0, align 4
@CCF_TCPHDR_CWR = common dso_local global i32 0, align 4
@TF_DELACK = common dso_local global i32 0, align 4
@CCF_DELACK = common dso_local global i32 0, align 4
@CCF_ACKNOW = common dso_local global i32 0, align 4
@TT_DELACK = common dso_local global i32 0, align 4
@tcp_delacktime = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcphdr*, i32)* @cc_ecnpkt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_ecnpkt_handler(%struct.tcpcb* %0, %struct.tcphdr* %1, i32 %2) #0 {
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca %struct.tcphdr*, align 8
  %6 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %4, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %8 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @INP_WLOCK_ASSERT(i32 %9)
  %11 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %12 = call %struct.TYPE_4__* @CC_ALGO(%struct.tcpcb* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %13, align 8
  %15 = icmp ne i32 (%struct.TYPE_3__*)* %14, null
  br i1 %15, label %16, label %117

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @IPTOS_ECN_MASK, align 4
  %19 = and i32 %17, %18
  switch i32 %19, label %46 [
    i32 130, label %20
    i32 129, label %28
    i32 128, label %37
  ]

20:                                               ; preds = %16
  %21 = load i32, i32* @CCF_IPHDR_CE, align 4
  %22 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %23 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %21
  store i32 %27, i32* %25, align 4
  br label %46

28:                                               ; preds = %16
  %29 = load i32, i32* @CCF_IPHDR_CE, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %32 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %30
  store i32 %36, i32* %34, align 4
  br label %46

37:                                               ; preds = %16
  %38 = load i32, i32* @CCF_IPHDR_CE, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %41 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %39
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %16, %37, %28, %20
  %47 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %48 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TH_CWR, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load i32, i32* @CCF_TCPHDR_CWR, align 4
  %55 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %56 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %54
  store i32 %60, i32* %58, align 4
  br label %70

61:                                               ; preds = %46
  %62 = load i32, i32* @CCF_TCPHDR_CWR, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %65 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %63
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %61, %53
  %71 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %72 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @TF_DELACK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load i32, i32* @CCF_DELACK, align 4
  %79 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %80 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %79, i32 0, i32 1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %78
  store i32 %84, i32* %82, align 4
  br label %94

85:                                               ; preds = %70
  %86 = load i32, i32* @CCF_DELACK, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %89 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %88, i32 0, i32 1
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, %87
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %85, %77
  %95 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %96 = call %struct.TYPE_4__* @CC_ALGO(%struct.tcpcb* %95)
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %97, align 8
  %99 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %100 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %99, i32 0, i32 1
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = call i32 %98(%struct.TYPE_3__* %101)
  %103 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %104 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %103, i32 0, i32 1
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @CCF_ACKNOW, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %94
  %112 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %113 = load i32, i32* @TT_DELACK, align 4
  %114 = load i32, i32* @tcp_delacktime, align 4
  %115 = call i32 @tcp_timer_activate(%struct.tcpcb* %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %111, %94
  br label %117

117:                                              ; preds = %116, %3
  ret void
}

declare dso_local i32 @INP_WLOCK_ASSERT(i32) #1

declare dso_local %struct.TYPE_4__* @CC_ALGO(%struct.tcpcb*) #1

declare dso_local i32 @tcp_timer_activate(%struct.tcpcb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
