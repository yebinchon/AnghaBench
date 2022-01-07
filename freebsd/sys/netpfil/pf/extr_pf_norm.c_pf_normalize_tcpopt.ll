; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_normalize_tcpopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_normalize_tcpopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_rule = type { i32 }
%struct.mbuf = type { i32 }
%struct.tcphdr = type { i32, i32 }

@TCP_MAXOLEN = common dso_local global i32 0, align 4
@TCPOPT_EOL = common dso_local global i32 0, align 4
@TCPOPT_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pf_rule*, %struct.mbuf*, %struct.tcphdr*, i32, i32)* @pf_normalize_tcpopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_normalize_tcpopt(%struct.pf_rule* %0, %struct.mbuf* %1, %struct.tcphdr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pf_rule*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.tcphdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.pf_rule* %0, %struct.pf_rule** %7, align 8
  store %struct.mbuf* %1, %struct.mbuf** %8, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %22 = load i32, i32* @TCP_MAXOLEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %18, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %19, align 8
  store i32* %25, i32** %20, align 8
  %26 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %27 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 2
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 %31, 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %5
  %37 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %39, 8
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @pf_pull_hdr(%struct.mbuf* %37, i32 %41, i32* %25, i32 %42, i32* null, i32* null, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* %17, align 4
  store i32 %47, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %139

48:                                               ; preds = %36, %5
  br label %49

49:                                               ; preds = %115, %48
  %50 = load i32, i32* %15, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %123

52:                                               ; preds = %49
  %53 = load i32*, i32** %20, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @TCPOPT_EOL, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %123

60:                                               ; preds = %52
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @TCPOPT_NOP, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 1, i32* %16, align 4
  br label %81

65:                                               ; preds = %60
  %66 = load i32, i32* %15, align 4
  %67 = icmp slt i32 %66, 2
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %123

69:                                               ; preds = %65
  %70 = load i32*, i32** %20, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp slt i32 %73, 2
  br i1 %74, label %79, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75, %69
  br label %123

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80, %64
  %82 = load i32, i32* %14, align 4
  switch i32 %82, label %113 [
    i32 128, label %83
  ]

83:                                               ; preds = %81
  %84 = load i32*, i32** %20, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  store i32* %85, i32** %12, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ntohs(i32 %87)
  %89 = load %struct.pf_rule*, %struct.pf_rule** %7, align 8
  %90 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp sgt i32 %88, %91
  br i1 %92, label %93, label %112

93:                                               ; preds = %83
  %94 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %95 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %96 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %12, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.pf_rule*, %struct.pf_rule** %7, align 8
  %101 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @htons(i32 %102)
  %104 = call i32 @pf_proto_cksum_fixup(%struct.mbuf* %94, i32 %97, i32 %99, i32 %103, i32 0)
  %105 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %106 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.pf_rule*, %struct.pf_rule** %7, align 8
  %108 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @htons(i32 %109)
  %111 = load i32*, i32** %12, align 8
  store i32 %110, i32* %111, align 4
  store i32 1, i32* %17, align 4
  br label %112

112:                                              ; preds = %93, %83
  br label %114

113:                                              ; preds = %81
  br label %114

114:                                              ; preds = %113, %112
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %15, align 4
  %118 = sub nsw i32 %117, %116
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %16, align 4
  %120 = load i32*, i32** %20, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32* %122, i32** %20, align 8
  br label %49

123:                                              ; preds = %79, %68, %59, %49
  %124 = load i32, i32* %17, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %123
  %127 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = add i64 %129, 8
  %131 = trunc i64 %130 to i32
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = sub i64 %133, 8
  %135 = trunc i64 %134 to i32
  %136 = call i32 @m_copyback(%struct.mbuf* %127, i32 %131, i32 %135, i32* %25)
  br label %137

137:                                              ; preds = %126, %123
  %138 = load i32, i32* %17, align 4
  store i32 %138, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %139

139:                                              ; preds = %137, %46
  %140 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %140)
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pf_pull_hdr(%struct.mbuf*, i32, i32*, i32, i32*, i32*, i32) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32 @pf_proto_cksum_fixup(%struct.mbuf*, i32, i32, i32, i32) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @m_copyback(%struct.mbuf*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
