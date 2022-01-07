; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_get_pacing_delay.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_get_pacing_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_rack = type { i64, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64* }
%struct.tcpcb = type { i32, i32 }

@TCP_RTT_SHIFT = common dso_local global i32 0, align 4
@RACK_GP_HIST = common dso_local global i32 0, align 4
@MSEC_IN_SECOND = common dso_local global i32 0, align 4
@rack_calc_nonzero = common dso_local global i32 0, align 4
@rack_calc_zero = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcp_rack*, %struct.tcpcb*, i32)* @rack_get_pacing_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rack_get_pacing_delay(%struct.tcp_rack* %0, %struct.tcpcb* %1, i32 %2) #0 {
  %4 = alloca %struct.tcp_rack*, align 8
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.tcp_rack* %0, %struct.tcp_rack** %4, align 8
  store %struct.tcpcb* %1, %struct.tcpcb** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %18 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %23 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %96

26:                                               ; preds = %21, %3
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %137, %26
  %28 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %29 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %35 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %8, align 4
  br label %45

38:                                               ; preds = %27
  %39 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %40 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %43 = ashr i32 %41, %42
  %44 = call i32 @TICKS_2_MSEC(i32 %43)
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %38, %33
  %46 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %47 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %53 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  br label %60

56:                                               ; preds = %45
  %57 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %58 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = sdiv i32 %61, %62
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %68 = call i32 @ctf_fixed_maxseg(%struct.tcpcb* %67)
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %66, %60
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %10, align 4
  %72 = sdiv i32 %70, %71
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %69
  %76 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %77 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %75
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %83 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = sdiv i32 %81, %84
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %80
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %7, align 4
  %92 = sub nsw i32 %91, %90
  store i32 %92, i32* %7, align 4
  br label %94

93:                                               ; preds = %80
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %93, %89
  br label %95

95:                                               ; preds = %94, %75, %69
  br label %161

96:                                               ; preds = %21
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %97

97:                                               ; preds = %131, %96
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @RACK_GP_HIST, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %134

101:                                              ; preds = %97
  %102 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %103 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %101
  %108 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %109 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 3
  %111 = load i64*, i64** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %107
  br label %134

118:                                              ; preds = %107, %101
  %119 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %120 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 3
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %126
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %13, align 4
  br label %131

131:                                              ; preds = %118
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %12, align 4
  br label %97

134:                                              ; preds = %117, %97
  %135 = load i32, i32* %13, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  br label %27

138:                                              ; preds = %134
  %139 = load i32, i32* @MSEC_IN_SECOND, align 4
  %140 = load i32, i32* %13, align 4
  %141 = mul nsw i32 %140, %139
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %144 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = mul nsw i32 %142, %146
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %13, align 4
  %153 = sdiv i32 %152, %151
  store i32 %153, i32* %13, align 4
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* @MSEC_IN_SECOND, align 4
  %156 = mul nsw i32 %154, %155
  store i32 %156, i32* %16, align 4
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %13, align 4
  %159 = sdiv i32 %157, %158
  store i32 %159, i32* %15, align 4
  %160 = load i32, i32* %15, align 4
  store i32 %160, i32* %7, align 4
  br label %161

161:                                              ; preds = %138, %95
  %162 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %163 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %161
  %167 = load i32, i32* %7, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %171 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %7, align 4
  br label %173

173:                                              ; preds = %169, %166, %161
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32, i32* @rack_calc_nonzero, align 4
  %178 = call i32 @counter_u64_add(i32 %177, i32 1)
  br label %182

179:                                              ; preds = %173
  %180 = load i32, i32* @rack_calc_zero, align 4
  %181 = call i32 @counter_u64_add(i32 %180, i32 1)
  br label %182

182:                                              ; preds = %179, %176
  %183 = load i32, i32* %7, align 4
  ret i32 %183
}

declare dso_local i32 @TICKS_2_MSEC(i32) #1

declare dso_local i32 @ctf_fixed_maxseg(%struct.tcpcb*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
