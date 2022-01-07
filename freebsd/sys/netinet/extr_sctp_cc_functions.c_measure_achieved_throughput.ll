; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_measure_achieved_throughput.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_cc_functions.c_measure_achieved_throughput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_nets = type { i32, i32, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@use_bandwidth_switch = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_nets*)* @measure_achieved_throughput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @measure_achieved_throughput(%struct.sctp_nets* %0) #0 {
  %2 = alloca %struct.sctp_nets*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sctp_nets* %0, %struct.sctp_nets** %2, align 8
  %5 = call i32 (...) @sctp_get_tick_count()
  store i32 %5, i32* %3, align 4
  %6 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %7 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %12 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %15 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 7
  store i64 %13, i64* %17, align 8
  br label %18

18:                                               ; preds = %10, %1
  %19 = load i32, i32* @use_bandwidth_switch, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  br label %208

22:                                               ; preds = %18
  %23 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %24 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %29 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %34 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %32, i32* %36, align 4
  br label %208

37:                                               ; preds = %22
  %38 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %39 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %42 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %40
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 8
  %49 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %50 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %55 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %58 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = ashr i32 %61, 7
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %37
  %65 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %66 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = ashr i32 %69, 7
  br label %72

71:                                               ; preds = %37
  br label %72

72:                                               ; preds = %71, %64
  %73 = phi i32 [ %70, %64 ], [ 1, %71 ]
  %74 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %75 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = mul nsw i32 %73, %76
  %78 = sub nsw i32 %56, %77
  %79 = icmp sge i32 %53, %78
  br i1 %79, label %80, label %208

80:                                               ; preds = %72
  %81 = load i32, i32* %3, align 4
  %82 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %83 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %81, %86
  %88 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %89 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp sge i32 %87, %92
  br i1 %93, label %94, label %208

94:                                               ; preds = %80
  %95 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %96 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %208

101:                                              ; preds = %94
  %102 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %103 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %108 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = sdiv i32 %106, %109
  %111 = load i32, i32* @hz, align 4
  %112 = mul nsw i32 %110, %111
  %113 = load i32, i32* %3, align 4
  %114 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %115 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %113, %118
  %120 = sdiv i32 %112, %119
  store i32 %120, i32* %4, align 4
  %121 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %122 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = call i32 @htcp_ccount(%struct.TYPE_4__* %123)
  %125 = icmp sle i32 %124, 3
  br i1 %125, label %126, label %140

126:                                              ; preds = %101
  %127 = load i32, i32* %4, align 4
  %128 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %129 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 6
  store i32 %127, i32* %131, align 8
  %132 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %133 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 5
  store i32 %127, i32* %135, align 4
  %136 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %137 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 4
  store i32 %127, i32* %139, align 8
  br label %198

140:                                              ; preds = %101
  %141 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %142 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = mul nsw i32 3, %145
  %147 = load i32, i32* %4, align 4
  %148 = add nsw i32 %146, %147
  %149 = sdiv i32 %148, 4
  %150 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %151 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 6
  store i32 %149, i32* %153, align 8
  %154 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %155 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %160 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = icmp sgt i32 %158, %163
  br i1 %164, label %165, label %175

165:                                              ; preds = %140
  %166 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %167 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %172 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 5
  store i32 %170, i32* %174, align 4
  br label %175

175:                                              ; preds = %165, %140
  %176 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %177 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %182 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = icmp sgt i32 %180, %185
  br i1 %186, label %187, label %197

187:                                              ; preds = %175
  %188 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %189 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %194 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 4
  store i32 %192, i32* %196, align 8
  br label %197

197:                                              ; preds = %187, %175
  br label %198

198:                                              ; preds = %197, %126
  %199 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %200 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  store i32 0, i32* %202, align 8
  %203 = load i32, i32* %3, align 4
  %204 = load %struct.sctp_nets*, %struct.sctp_nets** %2, align 8
  %205 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 1
  store i32 %203, i32* %207, align 4
  br label %208

208:                                              ; preds = %21, %27, %198, %94, %80, %72
  ret void
}

declare dso_local i32 @sctp_get_tick_count(...) #1

declare dso_local i32 @htcp_ccount(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
