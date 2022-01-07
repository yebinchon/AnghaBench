; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_tracer.c_t4_get_tracer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_tracer.c_t4_get_tracer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32*, i32 }
%struct.t4_tracer = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.trace_params = type { i32, i32, i32, i32, i32, i32, i32*, i32* }

@NTRACE = common dso_local global i32 0, align 4
@HOLD_LOCK = common dso_local global i32 0, align 4
@SLEEP_OK = common dso_local global i32 0, align 4
@INTR_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"t4gett\00", align 1
@LOCK_HELD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_get_tracer(%struct.adapter* %0, %struct.t4_tracer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.t4_tracer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.trace_params, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.t4_tracer* %1, %struct.t4_tracer** %5, align 8
  %10 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %11 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @NTRACE, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %17 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %16, i32 0, i32 0
  store i32 255, i32* %17, align 8
  %18 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %19 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %21 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %20, i32 0, i32 2
  store i32 0, i32* %21, align 8
  store i32 0, i32* %3, align 4
  br label %162

22:                                               ; preds = %2
  %23 = load %struct.adapter*, %struct.adapter** %4, align 8
  %24 = load i32, i32* @HOLD_LOCK, align 4
  %25 = load i32, i32* @SLEEP_OK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @INTR_OK, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @begin_synchronized_op(%struct.adapter* %23, i32* null, i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %162

34:                                               ; preds = %22
  %35 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %36 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %147, %34
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @NTRACE, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %150

42:                                               ; preds = %38
  %43 = load %struct.adapter*, %struct.adapter** %4, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 1
  %45 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %46 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @isset(i32* %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %146

50:                                               ; preds = %42
  %51 = load %struct.adapter*, %struct.adapter** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @t4_get_trace_filter(%struct.adapter* %51, %struct.trace_params* %9, i32 %52, i32* %8)
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %56 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %59 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %61 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %60, i32 0, i32 2
  store i32 1, i32* %61, align 8
  %62 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %63 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 7
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %9, i32 0, i32 7
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = call i32 @memcpy(i32* %66, i32* %69, i32 8)
  %71 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %72 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 6
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %9, i32 0, i32 6
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = call i32 @memcpy(i32* %75, i32* %78, i32 8)
  %80 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %9, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %83 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 5
  store i32 %81, i32* %84, align 4
  %85 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %9, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %88 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 4
  store i32 %86, i32* %89, align 8
  %90 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %9, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %93 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  store i32 %91, i32* %94, align 4
  %95 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %9, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %98 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 8
  %100 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %9, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %103 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 4
  %105 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %9, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %106, 4
  br i1 %107, label %108, label %120

108:                                              ; preds = %50
  %109 = load %struct.adapter*, %struct.adapter** %4, align 8
  %110 = getelementptr inbounds %struct.adapter, %struct.adapter* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %9, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %118 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 8
  br label %145

120:                                              ; preds = %50
  %121 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %9, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %122, 8
  br i1 %123, label %124, label %138

124:                                              ; preds = %120
  %125 = load %struct.adapter*, %struct.adapter** %4, align 8
  %126 = getelementptr inbounds %struct.adapter, %struct.adapter* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %9, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sub nsw i32 %129, 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %127, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 4
  %135 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %136 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 8
  br label %144

138:                                              ; preds = %120
  %139 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %9, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %142 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  store i32 %140, i32* %143, align 8
  br label %144

144:                                              ; preds = %138, %124
  br label %145

145:                                              ; preds = %144, %108
  br label %157

146:                                              ; preds = %42
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  br label %38

150:                                              ; preds = %38
  %151 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %152 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %151, i32 0, i32 0
  store i32 255, i32* %152, align 8
  %153 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %154 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %153, i32 0, i32 1
  store i32 0, i32* %154, align 4
  %155 = load %struct.t4_tracer*, %struct.t4_tracer** %5, align 8
  %156 = getelementptr inbounds %struct.t4_tracer, %struct.t4_tracer* %155, i32 0, i32 2
  store i32 0, i32* %156, align 8
  br label %157

157:                                              ; preds = %150, %145
  %158 = load %struct.adapter*, %struct.adapter** %4, align 8
  %159 = load i32, i32* @LOCK_HELD, align 4
  %160 = call i32 @end_synchronized_op(%struct.adapter* %158, i32 %159)
  %161 = load i32, i32* %6, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %157, %32, %15
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @begin_synchronized_op(%struct.adapter*, i32*, i32, i8*) #1

declare dso_local i64 @isset(i32*, i32) #1

declare dso_local i32 @t4_get_trace_filter(%struct.adapter*, %struct.trace_params*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @end_synchronized_op(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
