; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_check_iplen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_check_iplen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ip = type { i32, i32, i32, i32 }
%struct.tcphdr = type { i32 }

@IPPROTO_DONE = common dso_local global i32 0, align 4
@IP_OFFMASK = common dso_local global i32 0, align 4
@IP_MF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, i32)* @hn_check_iplen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_check_iplen(%struct.mbuf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tcphdr*, align 8
  %11 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = add i64 %13, 16
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %17 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @IPPROTO_DONE, align 4
  store i32 %23, i32* %3, align 4
  br label %177

24:                                               ; preds = %2
  %25 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %26 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @IPPROTO_DONE, align 4
  store i32 %31, i32* %3, align 4
  br label %177

32:                                               ; preds = %24
  %33 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.ip* @mtodo(%struct.mbuf* %33, i32 %34)
  store %struct.ip* %35, %struct.ip** %6, align 8
  %36 = load %struct.ip*, %struct.ip** %6, align 8
  %37 = getelementptr inbounds %struct.ip, %struct.ip* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 2
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp ult i64 %41, 16
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* @IPPROTO_DONE, align 4
  store i32 %44, i32* %3, align 4
  br label %177

45:                                               ; preds = %32
  %46 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %47 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %49, %50
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @IPPROTO_DONE, align 4
  store i32 %54, i32* %3, align 4
  br label %177

55:                                               ; preds = %45
  %56 = load %struct.ip*, %struct.ip** %6, align 8
  %57 = getelementptr inbounds %struct.ip, %struct.ip* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ntohs(i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %61 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %64, %65
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %55
  %69 = load i32, i32* @IPPROTO_DONE, align 4
  store i32 %69, i32* %3, align 4
  br label %177

70:                                               ; preds = %55
  %71 = load %struct.ip*, %struct.ip** %6, align 8
  %72 = getelementptr inbounds %struct.ip, %struct.ip* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ntohs(i32 %73)
  %75 = load i32, i32* @IP_OFFMASK, align 4
  %76 = load i32, i32* @IP_MF, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %74, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load i32, i32* @IPPROTO_DONE, align 4
  store i32 %81, i32* %3, align 4
  br label %177

82:                                               ; preds = %70
  %83 = load %struct.ip*, %struct.ip** %6, align 8
  %84 = getelementptr inbounds %struct.ip, %struct.ip* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %166 [
    i32 129, label %86
    i32 128, label %143
  ]

86:                                               ; preds = %82
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = add i64 %90, 4
  %92 = icmp ult i64 %88, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* @IPPROTO_DONE, align 4
  store i32 %94, i32* %3, align 4
  br label %177

95:                                               ; preds = %86
  %96 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %97 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = add i64 %103, 4
  %105 = icmp ult i64 %99, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %95
  %107 = load i32, i32* @IPPROTO_DONE, align 4
  store i32 %107, i32* %3, align 4
  br label %177

108:                                              ; preds = %95
  %109 = load %struct.ip*, %struct.ip** %6, align 8
  %110 = bitcast %struct.ip* %109 to i32*
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = bitcast i32* %113 to %struct.tcphdr*
  store %struct.tcphdr* %114, %struct.tcphdr** %10, align 8
  %115 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %116 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 2
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = icmp ult i64 %120, 4
  br i1 %121, label %128, label %122

122:                                              ; preds = %108
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %123, %124
  %126 = load i32, i32* %9, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %122, %108
  %129 = load i32, i32* @IPPROTO_DONE, align 4
  store i32 %129, i32* %3, align 4
  br label %177

130:                                              ; preds = %122
  %131 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %132 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %134, %135
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %136, %137
  %139 = icmp slt i32 %133, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %130
  %141 = load i32, i32* @IPPROTO_DONE, align 4
  store i32 %141, i32* %3, align 4
  br label %177

142:                                              ; preds = %130
  br label %173

143:                                              ; preds = %82
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = add i64 %147, 4
  %149 = icmp ult i64 %145, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %143
  %151 = load i32, i32* @IPPROTO_DONE, align 4
  store i32 %151, i32* %3, align 4
  br label %177

152:                                              ; preds = %143
  %153 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %154 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %157, %158
  %160 = sext i32 %159 to i64
  %161 = add i64 %160, 4
  %162 = icmp ult i64 %156, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %152
  %164 = load i32, i32* @IPPROTO_DONE, align 4
  store i32 %164, i32* %3, align 4
  br label %177

165:                                              ; preds = %152
  br label %173

166:                                              ; preds = %82
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %8, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = load i32, i32* @IPPROTO_DONE, align 4
  store i32 %171, i32* %3, align 4
  br label %177

172:                                              ; preds = %166
  br label %173

173:                                              ; preds = %172, %165, %142
  %174 = load %struct.ip*, %struct.ip** %6, align 8
  %175 = getelementptr inbounds %struct.ip, %struct.ip* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %173, %170, %163, %150, %140, %128, %106, %93, %80, %68, %53, %43, %30, %22
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local %struct.ip* @mtodo(%struct.mbuf*, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
