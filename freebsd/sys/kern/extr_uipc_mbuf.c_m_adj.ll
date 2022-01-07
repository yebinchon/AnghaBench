; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_m_adj.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_m_adj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i32, i32, %struct.mbuf*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@M_PKTHDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m_adj(%struct.mbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  store %struct.mbuf* %9, %struct.mbuf** %6, align 8
  %10 = icmp eq %struct.mbuf* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %171

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %70

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %52, %15
  %17 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %18 = icmp ne %struct.mbuf* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 0
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i1 [ false, %16 ], [ %21, %19 ]
  br i1 %23, label %24, label %53

24:                                               ; preds = %22
  %25 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %26 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %37 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %38, i32 0, i32 3
  %40 = load %struct.mbuf*, %struct.mbuf** %39, align 8
  store %struct.mbuf* %40, %struct.mbuf** %6, align 8
  br label %52

41:                                               ; preds = %24
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %44 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %49 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, %47
  store i32 %51, i32* %49, align 4
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %41, %30
  br label %16

53:                                               ; preds = %22
  %54 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %55 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @M_PKTHDR, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %53
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %5, align 4
  %63 = sub nsw i32 %61, %62
  %64 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %65 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, %63
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %60, %53
  br label %171

70:                                               ; preds = %12
  %71 = load i32, i32* %5, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %84, %70
  %74 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %75 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %7, align 4
  %79 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %80 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %79, i32 0, i32 3
  %81 = load %struct.mbuf*, %struct.mbuf** %80, align 8
  %82 = icmp eq %struct.mbuf* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %88

84:                                               ; preds = %73
  %85 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %86 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %85, i32 0, i32 3
  %87 = load %struct.mbuf*, %struct.mbuf** %86, align 8
  store %struct.mbuf* %87, %struct.mbuf** %6, align 8
  br label %73

88:                                               ; preds = %83
  %89 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %90 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = icmp sge i32 %91, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %88
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %97 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %101 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @M_PKTHDR, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %94
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %109 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %111, %107
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %106, %94
  br label %171

114:                                              ; preds = %88
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %7, align 4
  %117 = sub nsw i32 %116, %115
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  store i32 0, i32* %7, align 4
  br label %121

121:                                              ; preds = %120, %114
  %122 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  store %struct.mbuf* %122, %struct.mbuf** %6, align 8
  %123 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %124 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @M_PKTHDR, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %121
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %132 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 8
  br label %134

134:                                              ; preds = %129, %121
  br label %135

135:                                              ; preds = %166, %134
  %136 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %137 = icmp ne %struct.mbuf* %136, null
  br i1 %137, label %138, label %170

138:                                              ; preds = %135
  %139 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %140 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = icmp sge i32 %141, %142
  br i1 %143, label %144, label %160

144:                                              ; preds = %138
  %145 = load i32, i32* %7, align 4
  %146 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %147 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %149 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %148, i32 0, i32 3
  %150 = load %struct.mbuf*, %struct.mbuf** %149, align 8
  %151 = icmp ne %struct.mbuf* %150, null
  br i1 %151, label %152, label %159

152:                                              ; preds = %144
  %153 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %154 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %153, i32 0, i32 3
  %155 = load %struct.mbuf*, %struct.mbuf** %154, align 8
  %156 = call i32 @m_freem(%struct.mbuf* %155)
  %157 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %158 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %157, i32 0, i32 3
  store %struct.mbuf* null, %struct.mbuf** %158, align 8
  br label %159

159:                                              ; preds = %152, %144
  br label %170

160:                                              ; preds = %138
  %161 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %162 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sub nsw i32 %164, %163
  store i32 %165, i32* %7, align 4
  br label %166

166:                                              ; preds = %160
  %167 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %168 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %167, i32 0, i32 3
  %169 = load %struct.mbuf*, %struct.mbuf** %168, align 8
  store %struct.mbuf* %169, %struct.mbuf** %6, align 8
  br label %135

170:                                              ; preds = %159, %135
  br label %171

171:                                              ; preds = %11, %113, %170, %69
  ret void
}

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
