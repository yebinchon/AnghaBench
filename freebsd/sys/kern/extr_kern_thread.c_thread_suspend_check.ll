; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_thread_suspend_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thread.c_thread_suspend_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.proc* }
%struct.proc = type { i32, i64, i64, i32, %struct.thread*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.thread*)* }

@curthread = common dso_local global %struct.thread* null, align 8
@Giant = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@P_STOPPED_SINGLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"singlethread not set\00", align 1
@P_SINGLE_EXIT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@P_SINGLE_BOUNDARY = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@TDF_SBDRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"TDF_SBDRY set for unsafe thread_suspend_check\00", align 1
@TDF_SEINTR = common dso_local global i32 0, align 4
@TDF_SERESTART = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"both TDF_SEINTR and TDF_SERESTART\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"stopped thread did not exit\00", align 1
@TDF_BOUNDARY = common dso_local global i32 0, align 4
@SW_INVOL = common dso_local global i32 0, align 4
@SWT_SUSPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_suspend_check(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %7, %struct.thread** %4, align 8
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 1
  %10 = load %struct.proc*, %struct.proc** %9, align 8
  store %struct.proc* %10, %struct.proc** %5, align 8
  %11 = load i32, i32* @MA_NOTOWNED, align 4
  %12 = call i32 @mtx_assert(i32* @Giant, i32 %11)
  %13 = load %struct.proc*, %struct.proc** %5, align 8
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %13, i32 %14)
  br label %16

16:                                               ; preds = %195, %1
  %17 = call i64 (...) @thread_suspend_check_needed()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %206

19:                                               ; preds = %16
  %20 = load %struct.proc*, %struct.proc** %5, align 8
  %21 = call i64 @P_SHOULDSTOP(%struct.proc* %20)
  %22 = load i64, i64* @P_STOPPED_SINGLE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load %struct.proc*, %struct.proc** %5, align 8
  %26 = getelementptr inbounds %struct.proc, %struct.proc* %25, i32 0, i32 4
  %27 = load %struct.thread*, %struct.thread** %26, align 8
  %28 = icmp ne %struct.thread* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @KASSERT(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.proc*, %struct.proc** %5, align 8
  %32 = getelementptr inbounds %struct.proc, %struct.proc* %31, i32 0, i32 4
  %33 = load %struct.thread*, %struct.thread** %32, align 8
  %34 = load %struct.thread*, %struct.thread** %4, align 8
  %35 = icmp eq %struct.thread* %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %207

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37, %19
  %39 = load %struct.proc*, %struct.proc** %5, align 8
  %40 = getelementptr inbounds %struct.proc, %struct.proc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @P_SINGLE_EXIT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @EINTR, align 4
  store i32 %49, i32* %2, align 4
  br label %207

50:                                               ; preds = %45, %38
  %51 = load %struct.proc*, %struct.proc** %5, align 8
  %52 = call i64 @P_SHOULDSTOP(%struct.proc* %51)
  %53 = load i64, i64* @P_STOPPED_SINGLE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load %struct.proc*, %struct.proc** %5, align 8
  %57 = getelementptr inbounds %struct.proc, %struct.proc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @P_SINGLE_BOUNDARY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load i32, i32* %3, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @ERESTART, align 4
  store i32 %66, i32* %2, align 4
  br label %207

67:                                               ; preds = %62, %55, %50
  %68 = load %struct.thread*, %struct.thread** %4, align 8
  %69 = getelementptr inbounds %struct.thread, %struct.thread* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @TDF_SBDRY, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %67
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @KASSERT(i32 %75, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.thread*, %struct.thread** %4, align 8
  %78 = getelementptr inbounds %struct.thread, %struct.thread* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @TDF_SEINTR, align 4
  %81 = load i32, i32* @TDF_SERESTART, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = load i32, i32* @TDF_SEINTR, align 4
  %85 = load i32, i32* @TDF_SERESTART, align 4
  %86 = or i32 %84, %85
  %87 = icmp ne i32 %83, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @KASSERT(i32 %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %90 = load %struct.thread*, %struct.thread** %4, align 8
  %91 = call i64 @TD_SBDRY_INTR(%struct.thread* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %74
  %94 = load %struct.thread*, %struct.thread** %4, align 8
  %95 = call i32 @TD_SBDRY_ERRNO(%struct.thread* %94)
  br label %97

96:                                               ; preds = %74
  br label %97

97:                                               ; preds = %96, %93
  %98 = phi i32 [ %95, %93 ], [ 0, %96 ]
  store i32 %98, i32* %2, align 4
  br label %207

99:                                               ; preds = %67
  %100 = load %struct.proc*, %struct.proc** %5, align 8
  %101 = getelementptr inbounds %struct.proc, %struct.proc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @P_SINGLE_EXIT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %138

106:                                              ; preds = %99
  %107 = load %struct.proc*, %struct.proc** %5, align 8
  %108 = getelementptr inbounds %struct.proc, %struct.proc* %107, i32 0, i32 4
  %109 = load %struct.thread*, %struct.thread** %108, align 8
  %110 = load %struct.thread*, %struct.thread** %4, align 8
  %111 = icmp ne %struct.thread* %109, %110
  br i1 %111, label %112, label %138

112:                                              ; preds = %106
  %113 = load %struct.proc*, %struct.proc** %5, align 8
  %114 = call i32 @PROC_UNLOCK(%struct.proc* %113)
  %115 = load %struct.proc*, %struct.proc** %5, align 8
  %116 = getelementptr inbounds %struct.proc, %struct.proc* %115, i32 0, i32 5
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32 (%struct.thread*)*, i32 (%struct.thread*)** %118, align 8
  %120 = icmp ne i32 (%struct.thread*)* %119, null
  %121 = zext i1 %120 to i32
  %122 = call i64 @__predict_false(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %112
  %125 = load %struct.proc*, %struct.proc** %5, align 8
  %126 = getelementptr inbounds %struct.proc, %struct.proc* %125, i32 0, i32 5
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32 (%struct.thread*)*, i32 (%struct.thread*)** %128, align 8
  %130 = load %struct.thread*, %struct.thread** %4, align 8
  %131 = call i32 %129(%struct.thread* %130)
  br label %132

132:                                              ; preds = %124, %112
  %133 = load %struct.thread*, %struct.thread** %4, align 8
  %134 = call i32 @umtx_thread_exit(%struct.thread* %133)
  %135 = load %struct.thread*, %struct.thread** %4, align 8
  %136 = call i32 @kern_thr_exit(%struct.thread* %135)
  %137 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %138

138:                                              ; preds = %132, %106, %99
  %139 = load %struct.proc*, %struct.proc** %5, align 8
  %140 = call i32 @PROC_SLOCK(%struct.proc* %139)
  %141 = load %struct.proc*, %struct.proc** %5, align 8
  %142 = call i32 @thread_stopped(%struct.proc* %141)
  %143 = load %struct.proc*, %struct.proc** %5, align 8
  %144 = call i64 @P_SHOULDSTOP(%struct.proc* %143)
  %145 = load i64, i64* @P_STOPPED_SINGLE, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %176

147:                                              ; preds = %138
  %148 = load %struct.proc*, %struct.proc** %5, align 8
  %149 = getelementptr inbounds %struct.proc, %struct.proc* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.proc*, %struct.proc** %5, align 8
  %152 = getelementptr inbounds %struct.proc, %struct.proc* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, 1
  %155 = icmp eq i64 %150, %154
  br i1 %155, label %156, label %175

156:                                              ; preds = %147
  %157 = load %struct.proc*, %struct.proc** %5, align 8
  %158 = getelementptr inbounds %struct.proc, %struct.proc* %157, i32 0, i32 4
  %159 = load %struct.thread*, %struct.thread** %158, align 8
  %160 = call i32 @thread_lock(%struct.thread* %159)
  %161 = load %struct.proc*, %struct.proc** %5, align 8
  %162 = getelementptr inbounds %struct.proc, %struct.proc* %161, i32 0, i32 4
  %163 = load %struct.thread*, %struct.thread** %162, align 8
  %164 = load %struct.proc*, %struct.proc** %5, align 8
  %165 = call i32 @thread_unsuspend_one(%struct.thread* %163, %struct.proc* %164, i32 0)
  store i32 %165, i32* %6, align 4
  %166 = load %struct.proc*, %struct.proc** %5, align 8
  %167 = getelementptr inbounds %struct.proc, %struct.proc* %166, i32 0, i32 4
  %168 = load %struct.thread*, %struct.thread** %167, align 8
  %169 = call i32 @thread_unlock(%struct.thread* %168)
  %170 = load i32, i32* %6, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %156
  %173 = call i32 (...) @kick_proc0()
  br label %174

174:                                              ; preds = %172, %156
  br label %175

175:                                              ; preds = %174, %147
  br label %176

176:                                              ; preds = %175, %138
  %177 = load %struct.proc*, %struct.proc** %5, align 8
  %178 = call i32 @PROC_UNLOCK(%struct.proc* %177)
  %179 = load %struct.thread*, %struct.thread** %4, align 8
  %180 = call i32 @thread_lock(%struct.thread* %179)
  %181 = load %struct.thread*, %struct.thread** %4, align 8
  %182 = call i32 @thread_suspend_one(%struct.thread* %181)
  %183 = load i32, i32* %3, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %176
  %186 = load %struct.proc*, %struct.proc** %5, align 8
  %187 = getelementptr inbounds %struct.proc, %struct.proc* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %187, align 8
  %190 = load i32, i32* @TDF_BOUNDARY, align 4
  %191 = load %struct.thread*, %struct.thread** %4, align 8
  %192 = getelementptr inbounds %struct.thread, %struct.thread* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 8
  br label %195

195:                                              ; preds = %185, %176
  %196 = load %struct.proc*, %struct.proc** %5, align 8
  %197 = call i32 @PROC_SUNLOCK(%struct.proc* %196)
  %198 = load i32, i32* @SW_INVOL, align 4
  %199 = load i32, i32* @SWT_SUSPEND, align 4
  %200 = or i32 %198, %199
  %201 = call i32 @mi_switch(i32 %200, i32* null)
  %202 = load %struct.thread*, %struct.thread** %4, align 8
  %203 = call i32 @thread_unlock(%struct.thread* %202)
  %204 = load %struct.proc*, %struct.proc** %5, align 8
  %205 = call i32 @PROC_LOCK(%struct.proc* %204)
  br label %16

206:                                              ; preds = %16
  store i32 0, i32* %2, align 4
  br label %207

207:                                              ; preds = %206, %97, %65, %48, %36
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i64 @thread_suspend_check_needed(...) #1

declare dso_local i64 @P_SHOULDSTOP(%struct.proc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @TD_SBDRY_INTR(%struct.thread*) #1

declare dso_local i32 @TD_SBDRY_ERRNO(%struct.thread*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @umtx_thread_exit(%struct.thread*) #1

declare dso_local i32 @kern_thr_exit(%struct.thread*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @PROC_SLOCK(%struct.proc*) #1

declare dso_local i32 @thread_stopped(%struct.proc*) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @thread_unsuspend_one(%struct.thread*, %struct.proc*, i32) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @kick_proc0(...) #1

declare dso_local i32 @thread_suspend_one(%struct.thread*) #1

declare dso_local i32 @PROC_SUNLOCK(%struct.proc*) #1

declare dso_local i32 @mi_switch(i32, i32*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
