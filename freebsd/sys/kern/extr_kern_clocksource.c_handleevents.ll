; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_clocksource.c_handleevents.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_clocksource.c_handleevents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.trapframe* }
%struct.trapframe = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pcpu_state = type { i32, i32, i32, i32, i32, i32, i64 }

@KTR_SPARE2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"handle at %d:  now  %d.%08x\00", align 1
@curcpu = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_4__* null, align 8
@timerstate = common dso_local global i32 0, align 4
@tick_sbt = common dso_local global i32 0, align 4
@hardclocktime = common dso_local global i32 0, align 4
@statperiod = common dso_local global i32 0, align 4
@profiling = common dso_local global i64 0, align 8
@profperiod = common dso_local global i32 0, align 4
@SBT_MAX = common dso_local global i32 0, align 4
@busy = common dso_local global i32 0, align 4
@timer = common dso_local global %struct.TYPE_3__* null, align 8
@ET_FLAGS_PERCPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @handleevents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handleevents(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.trapframe*, align 8
  %8 = alloca %struct.pcpu_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @KTR_SPARE2, align 4
  %13 = load i32, i32* @curcpu, align 4
  %14 = load i32, i32* %3, align 4
  %15 = ashr i32 %14, 32
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @CTR3(i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %15, i32 %16)
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store %struct.trapframe* null, %struct.trapframe** %7, align 8
  store i32 0, i32* %9, align 4
  br label %27

21:                                               ; preds = %2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.trapframe*, %struct.trapframe** %23, align 8
  store %struct.trapframe* %24, %struct.trapframe** %7, align 8
  %25 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %26 = call i32 @TRAPF_USERMODE(%struct.trapframe* %25)
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %21, %20
  %28 = load i32, i32* @timerstate, align 4
  %29 = call i8* @DPCPU_PTR(i32 %28)
  %30 = bitcast i8* %29 to %struct.pcpu_state*
  store %struct.pcpu_state* %30, %struct.pcpu_state** %8, align 8
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %37, %27
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.pcpu_state*, %struct.pcpu_state** %8, align 8
  %34 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %32, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load i32, i32* @tick_sbt, align 4
  %39 = load %struct.pcpu_state*, %struct.pcpu_state** %8, align 8
  %40 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %31

45:                                               ; preds = %31
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %45
  %49 = load i32, i32* @hardclocktime, align 4
  %50 = call i8* @DPCPU_PTR(i32 %49)
  %51 = bitcast i8* %50 to i32*
  store i32* %51, i32** %6, align 8
  %52 = load %struct.pcpu_state*, %struct.pcpu_state** %8, align 8
  %53 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @tick_sbt, align 4
  %56 = sub nsw i32 %54, %55
  %57 = load i32*, i32** %6, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 2
  br i1 %59, label %60, label %64

60:                                               ; preds = %48
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @hardclock(i32 %61, i32 %62)
  store i32 1, i32* %10, align 4
  br label %64

64:                                               ; preds = %60, %48
  br label %65

65:                                               ; preds = %64, %45
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %72, %65
  %67 = load i32, i32* %3, align 4
  %68 = load %struct.pcpu_state*, %struct.pcpu_state** %8, align 8
  %69 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp sge i32 %67, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load i32, i32* @statperiod, align 4
  %74 = load %struct.pcpu_state*, %struct.pcpu_state** %8, align 8
  %75 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %66

80:                                               ; preds = %66
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i32, i32* %4, align 4
  %85 = icmp slt i32 %84, 2
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @statclock(i32 %87, i32 %88)
  store i32 1, i32* %10, align 4
  br label %90

90:                                               ; preds = %86, %83, %80
  %91 = load i64, i64* @profiling, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %121

93:                                               ; preds = %90
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %100, %93
  %95 = load i32, i32* %3, align 4
  %96 = load %struct.pcpu_state*, %struct.pcpu_state** %8, align 8
  %97 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp sge i32 %95, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %94
  %101 = load i32, i32* @profperiod, align 4
  %102 = load %struct.pcpu_state*, %struct.pcpu_state** %8, align 8
  %103 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %94

108:                                              ; preds = %94
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %108
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %118 = call i32 @TRAPF_PC(%struct.trapframe* %117)
  %119 = call i32 @profclock(i32 %115, i32 %116, i32 %118)
  store i32 1, i32* %10, align 4
  br label %120

120:                                              ; preds = %114, %111, %108
  br label %127

121:                                              ; preds = %90
  %122 = load %struct.pcpu_state*, %struct.pcpu_state** %8, align 8
  %123 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.pcpu_state*, %struct.pcpu_state** %8, align 8
  %126 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %121, %120
  %128 = load i32, i32* %3, align 4
  %129 = load %struct.pcpu_state*, %struct.pcpu_state** %8, align 8
  %130 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = icmp sge i32 %128, %131
  br i1 %132, label %139, label %133

133:                                              ; preds = %127
  %134 = load i32, i32* %3, align 4
  %135 = load %struct.pcpu_state*, %struct.pcpu_state** %8, align 8
  %136 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = icmp sge i32 %134, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %133, %127
  %140 = load i32, i32* @SBT_MAX, align 4
  %141 = load %struct.pcpu_state*, %struct.pcpu_state** %8, align 8
  %142 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  %143 = load %struct.pcpu_state*, %struct.pcpu_state** %8, align 8
  %144 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %143, i32 0, i32 4
  store i32 %140, i32* %144, align 8
  %145 = load i32, i32* %3, align 4
  %146 = call i32 @callout_process(i32 %145)
  br label %147

147:                                              ; preds = %139, %133
  %148 = call i32 @getnextcpuevent(i32 0)
  store i32 %148, i32* %5, align 4
  %149 = load %struct.pcpu_state*, %struct.pcpu_state** %8, align 8
  %150 = call i32 @ET_HW_LOCK(%struct.pcpu_state* %149)
  %151 = load i32, i32* @busy, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %173, label %153

153:                                              ; preds = %147
  %154 = load %struct.pcpu_state*, %struct.pcpu_state** %8, align 8
  %155 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %154, i32 0, i32 6
  store i64 0, i64* %155, align 8
  %156 = load i32, i32* %5, align 4
  %157 = load %struct.pcpu_state*, %struct.pcpu_state** %8, align 8
  %158 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %157, i32 0, i32 5
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %3, align 4
  %160 = load i32, i32* %4, align 4
  %161 = icmp eq i32 %160, 2
  br i1 %161, label %162, label %169

162:                                              ; preds = %153
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** @timer, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @ET_FLAGS_PERCPU, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br label %169

169:                                              ; preds = %162, %153
  %170 = phi i1 [ false, %153 ], [ %168, %162 ]
  %171 = zext i1 %170 to i32
  %172 = call i32 @loadtimer(i32 %159, i32 %171)
  br label %173

173:                                              ; preds = %169, %147
  %174 = load %struct.pcpu_state*, %struct.pcpu_state** %8, align 8
  %175 = call i32 @ET_HW_UNLOCK(%struct.pcpu_state* %174)
  %176 = load i32, i32* %10, align 4
  ret i32 %176
}

declare dso_local i32 @CTR3(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @TRAPF_USERMODE(%struct.trapframe*) #1

declare dso_local i8* @DPCPU_PTR(i32) #1

declare dso_local i32 @hardclock(i32, i32) #1

declare dso_local i32 @statclock(i32, i32) #1

declare dso_local i32 @profclock(i32, i32, i32) #1

declare dso_local i32 @TRAPF_PC(%struct.trapframe*) #1

declare dso_local i32 @callout_process(i32) #1

declare dso_local i32 @getnextcpuevent(i32) #1

declare dso_local i32 @ET_HW_LOCK(%struct.pcpu_state*) #1

declare dso_local i32 @loadtimer(i32, i32) #1

declare dso_local i32 @ET_HW_UNLOCK(%struct.pcpu_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
