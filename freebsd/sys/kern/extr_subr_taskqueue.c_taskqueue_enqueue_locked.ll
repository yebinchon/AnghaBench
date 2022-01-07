; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_taskqueue.c_taskqueue_enqueue_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_taskqueue.c_taskqueue_enqueue_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taskqueue = type { i32, i32, i32 (i32)*, i32, %struct.task* }
%struct.task = type { i32, i64, i32* }

@.str = private unnamed_addr constant [31 x i8] c"enqueueing task with NULL func\00", align 1
@USHRT_MAX = common dso_local global i32 0, align 4
@ta_link = common dso_local global i32 0, align 4
@TQ_FLAGS_UNLOCKED_ENQUEUE = common dso_local global i32 0, align 4
@TQ_FLAGS_BLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.taskqueue*, %struct.task*)* @taskqueue_enqueue_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @taskqueue_enqueue_locked(%struct.taskqueue* %0, %struct.task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.taskqueue*, align 8
  %5 = alloca %struct.task*, align 8
  %6 = alloca %struct.task*, align 8
  %7 = alloca %struct.task*, align 8
  store %struct.taskqueue* %0, %struct.taskqueue** %4, align 8
  store %struct.task* %1, %struct.task** %5, align 8
  %8 = load %struct.task*, %struct.task** %5, align 8
  %9 = getelementptr inbounds %struct.task, %struct.task* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.task*, %struct.task** %5, align 8
  %15 = getelementptr inbounds %struct.task, %struct.task* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %2
  %19 = load %struct.task*, %struct.task** %5, align 8
  %20 = getelementptr inbounds %struct.task, %struct.task* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @USHRT_MAX, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.task*, %struct.task** %5, align 8
  %26 = getelementptr inbounds %struct.task, %struct.task* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %24, %18
  %30 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %31 = call i32 @TQ_UNLOCK(%struct.taskqueue* %30)
  store i32 0, i32* %3, align 4
  br label %153

32:                                               ; preds = %2
  %33 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %34 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %33, i32 0, i32 3
  %35 = load %struct.task*, %struct.task** %5, align 8
  %36 = load i32, i32* @ta_link, align 4
  %37 = call %struct.task* @STAILQ_LAST(i32* %34, %struct.task* %35, i32 %36)
  store %struct.task* %37, %struct.task** %7, align 8
  %38 = load %struct.task*, %struct.task** %7, align 8
  %39 = icmp ne %struct.task* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = load %struct.task*, %struct.task** %7, align 8
  %42 = getelementptr inbounds %struct.task, %struct.task* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.task*, %struct.task** %5, align 8
  %45 = getelementptr inbounds %struct.task, %struct.task* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %43, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %40, %32
  %49 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %50 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %49, i32 0, i32 3
  %51 = load %struct.task*, %struct.task** %5, align 8
  %52 = load i32, i32* @ta_link, align 4
  %53 = call i32 @STAILQ_INSERT_TAIL(i32* %50, %struct.task* %51, i32 %52)
  br label %115

54:                                               ; preds = %40
  %55 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %56 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %55, i32 0, i32 4
  %57 = load %struct.task*, %struct.task** %56, align 8
  store %struct.task* %57, %struct.task** %7, align 8
  %58 = load %struct.task*, %struct.task** %7, align 8
  %59 = icmp ne %struct.task* %58, null
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load %struct.task*, %struct.task** %7, align 8
  %62 = getelementptr inbounds %struct.task, %struct.task* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.task*, %struct.task** %5, align 8
  %65 = getelementptr inbounds %struct.task, %struct.task* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %63, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load %struct.task*, %struct.task** %7, align 8
  %70 = load i32, i32* @ta_link, align 4
  %71 = call %struct.task* @STAILQ_NEXT(%struct.task* %69, i32 %70)
  store %struct.task* %71, %struct.task** %6, align 8
  br label %76

72:                                               ; preds = %60, %54
  store %struct.task* null, %struct.task** %7, align 8
  %73 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %74 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %73, i32 0, i32 3
  %75 = call %struct.task* @STAILQ_FIRST(i32* %74)
  store %struct.task* %75, %struct.task** %6, align 8
  br label %76

76:                                               ; preds = %72, %68
  br label %77

77:                                               ; preds = %90, %76
  %78 = load %struct.task*, %struct.task** %6, align 8
  %79 = icmp ne %struct.task* %78, null
  br i1 %79, label %80, label %95

80:                                               ; preds = %77
  %81 = load %struct.task*, %struct.task** %6, align 8
  %82 = getelementptr inbounds %struct.task, %struct.task* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.task*, %struct.task** %5, align 8
  %85 = getelementptr inbounds %struct.task, %struct.task* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %95

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.task*, %struct.task** %6, align 8
  store %struct.task* %91, %struct.task** %7, align 8
  %92 = load %struct.task*, %struct.task** %6, align 8
  %93 = load i32, i32* @ta_link, align 4
  %94 = call %struct.task* @STAILQ_NEXT(%struct.task* %92, i32 %93)
  store %struct.task* %94, %struct.task** %6, align 8
  br label %77

95:                                               ; preds = %88, %77
  %96 = load %struct.task*, %struct.task** %7, align 8
  %97 = icmp ne %struct.task* %96, null
  br i1 %97, label %98, label %108

98:                                               ; preds = %95
  %99 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %100 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %99, i32 0, i32 3
  %101 = load %struct.task*, %struct.task** %7, align 8
  %102 = load %struct.task*, %struct.task** %5, align 8
  %103 = load i32, i32* @ta_link, align 4
  %104 = call i32 @STAILQ_INSERT_AFTER(i32* %100, %struct.task* %101, %struct.task* %102, i32 %103)
  %105 = load %struct.task*, %struct.task** %5, align 8
  %106 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %107 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %106, i32 0, i32 4
  store %struct.task* %105, %struct.task** %107, align 8
  br label %114

108:                                              ; preds = %95
  %109 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %110 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %109, i32 0, i32 3
  %111 = load %struct.task*, %struct.task** %5, align 8
  %112 = load i32, i32* @ta_link, align 4
  %113 = call i32 @STAILQ_INSERT_HEAD(i32* %110, %struct.task* %111, i32 %112)
  br label %114

114:                                              ; preds = %108, %98
  br label %115

115:                                              ; preds = %114, %48
  %116 = load %struct.task*, %struct.task** %5, align 8
  %117 = getelementptr inbounds %struct.task, %struct.task* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  %118 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %119 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @TQ_FLAGS_UNLOCKED_ENQUEUE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %115
  %125 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %126 = call i32 @TQ_UNLOCK(%struct.taskqueue* %125)
  br label %127

127:                                              ; preds = %124, %115
  %128 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %129 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @TQ_FLAGS_BLOCKED, align 4
  %132 = and i32 %130, %131
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %127
  %135 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %136 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %135, i32 0, i32 2
  %137 = load i32 (i32)*, i32 (i32)** %136, align 8
  %138 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %139 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 %137(i32 %140)
  br label %142

142:                                              ; preds = %134, %127
  %143 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %144 = getelementptr inbounds %struct.taskqueue, %struct.taskqueue* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @TQ_FLAGS_UNLOCKED_ENQUEUE, align 4
  %147 = and i32 %145, %146
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %142
  %150 = load %struct.taskqueue*, %struct.taskqueue** %4, align 8
  %151 = call i32 @TQ_UNLOCK(%struct.taskqueue* %150)
  br label %152

152:                                              ; preds = %149, %142
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %152, %29
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TQ_UNLOCK(%struct.taskqueue*) #1

declare dso_local %struct.task* @STAILQ_LAST(i32*, %struct.task*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.task*, i32) #1

declare dso_local %struct.task* @STAILQ_NEXT(%struct.task*, i32) #1

declare dso_local %struct.task* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_INSERT_AFTER(i32*, %struct.task*, %struct.task*, i32) #1

declare dso_local i32 @STAILQ_INSERT_HEAD(i32*, %struct.task*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
