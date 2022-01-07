; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/pmod/extr_tcpmod.c_tcpmod_setmss.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/pmod/extr_tcpmod.c_tcpmod_setmss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.tcphdr = type { i32 }

@IP_FW_DENY = common dso_local global i32 0, align 4
@TCPOPT_EOL = common dso_local global i32 0, align 4
@TCPOPT_NOP = common dso_local global i32 0, align 4
@TCPOPT_MAXSEG = common dso_local global i32 0, align 4
@TCPOLEN_MAXSEG = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_TCP_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf**, %struct.tcphdr*, i32, i32)* @tcpmod_setmss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpmod_setmss(%struct.mbuf** %0, %struct.tcphdr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf**, align 8
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mbuf** %0, %struct.mbuf*** %6, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %17 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  store %struct.mbuf* %17, %struct.mbuf** %10, align 8
  %18 = load i32, i32* @IP_FW_DENY, align 4
  store i32 %18, i32* %13, align 4
  %19 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %20 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %23 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %21, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %4
  %28 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %29 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %30 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call %struct.mbuf* @m_pullup(%struct.mbuf* %28, i64 %32)
  store %struct.mbuf* %33, %struct.mbuf** %10, align 8
  %34 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  store %struct.mbuf* %33, %struct.mbuf** %34, align 8
  %35 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %36 = icmp eq %struct.mbuf* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %5, align 4
  br label %137

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %4
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = sub i64 %42, 4
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %46 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %45, i64 1
  %47 = bitcast %struct.tcphdr* %46 to i32*
  store i32* %47, i32** %11, align 8
  br label %48

48:                                               ; preds = %127, %40
  %49 = load i32, i32* %8, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %135

51:                                               ; preds = %48
  %52 = load i32*, i32** %11, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @TCPOPT_EOL, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %135

58:                                               ; preds = %51
  %59 = load i32*, i32** %11, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @TCPOPT_NOP, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 1, i32* %12, align 4
  br label %127

65:                                               ; preds = %58
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 2
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %135

69:                                               ; preds = %65
  %70 = load i32*, i32** %11, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %73, 2
  br i1 %74, label %79, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75, %69
  br label %135

80:                                               ; preds = %75
  %81 = load i32*, i32** %11, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @TCPOPT_MAXSEG, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %126

86:                                               ; preds = %80
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @TCPOLEN_MAXSEG, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %135

91:                                               ; preds = %86
  store i32 0, i32* %13, align 4
  %92 = load i32*, i32** %11, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = call i32 @bcopy(i32* %93, i32* %14, i32 4)
  %95 = load i32, i32* %14, align 4
  %96 = call i64 @ntohs(i32 %95)
  %97 = load i32, i32* %9, align 4
  %98 = call i64 @ntohs(i32 %97)
  %99 = icmp sle i64 %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %135

101:                                              ; preds = %91
  %102 = load i32*, i32** %11, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = call i32 @bcopy(i32* %9, i32* %103, i32 4)
  %105 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %106 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @CSUM_TCP, align 4
  %110 = load i32, i32* @CSUM_TCP_IPV6, align 4
  %111 = or i32 %109, %110
  %112 = and i32 %108, %111
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %101
  %115 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %116 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %115, i32 0, i32 0
  %117 = call i32 @bcopy(i32* %116, i32* %15, i32 4)
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @cksum_adjust(i32 %118, i32 %119, i32 %120)
  store i32 %121, i32* %15, align 4
  %122 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %123 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %122, i32 0, i32 0
  %124 = call i32 @bcopy(i32* %15, i32* %123, i32 4)
  br label %125

125:                                              ; preds = %114, %101
  br label %135

126:                                              ; preds = %80
  br label %127

127:                                              ; preds = %126, %64
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %8, align 4
  %130 = sub nsw i32 %129, %128
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i32*, i32** %11, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32* %134, i32** %11, align 8
  br label %48

135:                                              ; preds = %125, %100, %90, %79, %68, %57, %48
  %136 = load i32, i32* %13, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %135, %37
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local %struct.mbuf* @m_pullup(%struct.mbuf*, i64) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @cksum_adjust(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
