; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_sched_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_sched_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32 }
%struct.synclist = type { i32 }
%struct.bufobj = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@SYNCER_RUNNING = common dso_local global i64 0, align 8
@syncer_state = common dso_local global i64 0, align 8
@time_uptime = common dso_local global i64 0, align 8
@TDP_NORUNNINGBUF = common dso_local global i32 0, align 4
@shutdown_pre_sync = common dso_local global i32 0, align 4
@syncer_shutdown = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_LAST = common dso_local global i32 0, align 4
@sync_mtx = common dso_local global i32 0, align 4
@SYNCER_FINAL_DELAY = common dso_local global i64 0, align 8
@syncer_worklist_len = common dso_local global i64 0, align 8
@sync_vnode_count = common dso_local global i64 0, align 8
@first_printf = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"\0ASyncing disks, vnodes remaining... \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@syncer_workitem_pending = common dso_local global %struct.synclist* null, align 8
@syncer_delayno = common dso_local global i64 0, align 8
@syncer_maxdelay = common dso_local global i64 0, align 8
@SYNCER_SHUTTING_DOWN = common dso_local global i64 0, align 8
@SYNCER_SHUTDOWN_SPEEDUP = common dso_local global i32 0, align 4
@bo_synclist = common dso_local global i32 0, align 4
@WD_LASTVAL = common dso_local global i32 0, align 4
@rushjob = common dso_local global i64 0, align 8
@PPAUSE = common dso_local global i32 0, align 4
@sync_wakeup = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sched_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sched_sync() #0 {
  %1 = alloca %struct.synclist*, align 8
  %2 = alloca %struct.synclist*, align 8
  %3 = alloca %struct.bufobj*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %10, %struct.thread** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %11 = load i64, i64* @SYNCER_RUNNING, align 8
  store i64 %11, i64* @syncer_state, align 8
  %12 = load i64, i64* @time_uptime, align 8
  store i64 %12, i64* %4, align 8
  %13 = load i32, i32* @TDP_NORUNNINGBUF, align 4
  %14 = load %struct.thread*, %struct.thread** %5, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @shutdown_pre_sync, align 4
  %19 = load i32, i32* @syncer_shutdown, align 4
  %20 = load %struct.thread*, %struct.thread** %5, align 8
  %21 = getelementptr inbounds %struct.thread, %struct.thread* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SHUTDOWN_PRI_LAST, align 4
  %24 = call i32 @EVENTHANDLER_REGISTER(i32 %18, i32 %19, i32 %22, i32 %23)
  %25 = call i32 @mtx_lock(i32* @sync_mtx)
  br label %26

26:                                               ; preds = %201, %165, %0
  %27 = load i64, i64* @syncer_state, align 8
  %28 = load i64, i64* @SYNCER_FINAL_DELAY, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = call i32 @mtx_unlock(i32* @sync_mtx)
  %35 = load %struct.thread*, %struct.thread** %5, align 8
  %36 = getelementptr inbounds %struct.thread, %struct.thread* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @kproc_suspend_check(i32 %37)
  %39 = call i32 @mtx_lock(i32* @sync_mtx)
  br label %40

40:                                               ; preds = %33, %30, %26
  %41 = load i64, i64* @syncer_worklist_len, align 8
  %42 = load i64, i64* @sync_vnode_count, align 8
  %43 = sub nsw i64 %41, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %7, align 4
  %45 = load i64, i64* @syncer_state, align 8
  %46 = load i64, i64* @SYNCER_RUNNING, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %40
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @time_uptime, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i64, i64* @first_printf, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* @first_printf, align 8
  br label %57

57:                                               ; preds = %55, %52
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %57, %48, %40
  %61 = load i64, i64* @time_uptime, align 8
  store i64 %61, i64* %4, align 8
  br label %62

62:                                               ; preds = %102, %60
  %63 = load %struct.synclist*, %struct.synclist** @syncer_workitem_pending, align 8
  %64 = load i64, i64* @syncer_delayno, align 8
  %65 = getelementptr inbounds %struct.synclist, %struct.synclist* %63, i64 %64
  store %struct.synclist* %65, %struct.synclist** %2, align 8
  %66 = load i64, i64* @syncer_delayno, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* @syncer_delayno, align 8
  %68 = load i64, i64* @syncer_delayno, align 8
  %69 = load i64, i64* @syncer_maxdelay, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i64 0, i64* @syncer_delayno, align 8
  br label %72

72:                                               ; preds = %71, %62
  %73 = load %struct.synclist*, %struct.synclist** @syncer_workitem_pending, align 8
  %74 = load i64, i64* @syncer_delayno, align 8
  %75 = getelementptr inbounds %struct.synclist, %struct.synclist* %73, i64 %74
  store %struct.synclist* %75, %struct.synclist** %1, align 8
  %76 = load i64, i64* @syncer_state, align 8
  %77 = load i64, i64* @SYNCER_SHUTTING_DOWN, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %72
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* @syncer_delayno, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i64, i64* @SYNCER_FINAL_DELAY, align 8
  store i64 %88, i64* @syncer_state, align 8
  %89 = load i32, i32* @SYNCER_SHUTDOWN_SPEEDUP, align 4
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %87, %82, %79, %72
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* @syncer_state, align 8
  %93 = load i64, i64* @SYNCER_RUNNING, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load %struct.synclist*, %struct.synclist** %2, align 8
  %97 = call i64 @LIST_EMPTY(%struct.synclist* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i64, i64* @syncer_worklist_len, align 8
  %101 = icmp sgt i64 %100, 0
  br label %102

102:                                              ; preds = %99, %95, %91
  %103 = phi i1 [ false, %95 ], [ false, %91 ], [ %101, %99 ]
  br i1 %103, label %62, label %104

104:                                              ; preds = %102
  %105 = load i32, i32* %7, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = load i64, i64* @syncer_state, align 8
  %109 = load i64, i64* @SYNCER_RUNNING, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %107, %104
  %112 = load i64, i64* @syncer_delayno, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %111, %107
  %115 = load i32, i32* %7, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load i64, i64* @syncer_state, align 8
  %119 = load i64, i64* @SYNCER_FINAL_DELAY, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i64, i64* @SYNCER_SHUTTING_DOWN, align 8
  store i64 %122, i64* @syncer_state, align 8
  br label %123

123:                                              ; preds = %121, %117, %114
  br label %124

124:                                              ; preds = %151, %135, %123
  %125 = load %struct.synclist*, %struct.synclist** %2, align 8
  %126 = call i64 @LIST_EMPTY(%struct.synclist* %125)
  %127 = icmp ne i64 %126, 0
  %128 = xor i1 %127, true
  br i1 %128, label %129, label %152

129:                                              ; preds = %124
  %130 = load %struct.synclist*, %struct.synclist** %2, align 8
  %131 = load %struct.thread*, %struct.thread** %5, align 8
  %132 = call i32 @sync_vnode(%struct.synclist* %130, %struct.bufobj** %3, %struct.thread* %131)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %143

135:                                              ; preds = %129
  %136 = load %struct.bufobj*, %struct.bufobj** %3, align 8
  %137 = load i32, i32* @bo_synclist, align 4
  %138 = call i32 @LIST_REMOVE(%struct.bufobj* %136, i32 %137)
  %139 = load %struct.synclist*, %struct.synclist** %1, align 8
  %140 = load %struct.bufobj*, %struct.bufobj** %3, align 8
  %141 = load i32, i32* @bo_synclist, align 4
  %142 = call i32 @LIST_INSERT_HEAD(%struct.synclist* %139, %struct.bufobj* %140, i32 %141)
  br label %124

143:                                              ; preds = %129
  %144 = load i64, i64* @first_printf, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = call i32 @mtx_unlock(i32* @sync_mtx)
  %148 = load i32, i32* @WD_LASTVAL, align 4
  %149 = call i32 @wdog_kern_pat(i32 %148)
  %150 = call i32 @mtx_lock(i32* @sync_mtx)
  br label %151

151:                                              ; preds = %146, %143
  br label %124

152:                                              ; preds = %124
  %153 = load i64, i64* @syncer_state, align 8
  %154 = load i64, i64* @SYNCER_FINAL_DELAY, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %152
  %157 = load i32, i32* %8, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %8, align 4
  br label %162

162:                                              ; preds = %159, %156, %152
  %163 = load i64, i64* @rushjob, align 8
  %164 = icmp sgt i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i64, i64* @rushjob, align 8
  %167 = sub nsw i64 %166, 1
  store i64 %167, i64* @rushjob, align 8
  br label %26

168:                                              ; preds = %162
  %169 = load i64, i64* @syncer_state, align 8
  %170 = load i64, i64* @SYNCER_RUNNING, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = load i64, i64* @time_uptime, align 8
  %174 = load i64, i64* %4, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %184

176:                                              ; preds = %172, %168
  %177 = load %struct.thread*, %struct.thread** %5, align 8
  %178 = call i32 @thread_lock(%struct.thread* %177)
  %179 = load %struct.thread*, %struct.thread** %5, align 8
  %180 = load i32, i32* @PPAUSE, align 4
  %181 = call i32 @sched_prio(%struct.thread* %179, i32 %180)
  %182 = load %struct.thread*, %struct.thread** %5, align 8
  %183 = call i32 @thread_unlock(%struct.thread* %182)
  br label %184

184:                                              ; preds = %176, %172
  %185 = load i64, i64* @syncer_state, align 8
  %186 = load i64, i64* @SYNCER_RUNNING, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %184
  %189 = load i32, i32* @hz, align 4
  %190 = load i32, i32* @SYNCER_SHUTDOWN_SPEEDUP, align 4
  %191 = sdiv i32 %189, %190
  %192 = call i32 @cv_timedwait(i32* @sync_wakeup, i32* @sync_mtx, i32 %191)
  br label %201

193:                                              ; preds = %184
  %194 = load i64, i64* @time_uptime, align 8
  %195 = load i64, i64* %4, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load i32, i32* @hz, align 4
  %199 = call i32 @cv_timedwait(i32* @sync_wakeup, i32* @sync_mtx, i32 %198)
  br label %200

200:                                              ; preds = %197, %193
  br label %201

201:                                              ; preds = %200, %188
  br label %26
}

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @kproc_suspend_check(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @LIST_EMPTY(%struct.synclist*) #1

declare dso_local i32 @sync_vnode(%struct.synclist*, %struct.bufobj**, %struct.thread*) #1

declare dso_local i32 @LIST_REMOVE(%struct.bufobj*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(%struct.synclist*, %struct.bufobj*, i32) #1

declare dso_local i32 @wdog_kern_pat(i32) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @sched_prio(%struct.thread*, i32) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @cv_timedwait(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
