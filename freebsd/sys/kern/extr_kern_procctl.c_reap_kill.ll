; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_procctl.c_reap_kill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_procctl.c_reap_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.proc = type { i32, i64, i32, i32, %struct.proc* }
%struct.procctl_reaper_kill = type { i64, i32, i32, i64, i64 }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }
%struct.reap_kill_tracker_head = type { i32 }
%struct.reap_kill_tracker = type { %struct.proc* }

@proctree_lock = common dso_local global i32 0, align 4
@SX_LOCKED = common dso_local global i32 0, align 4
@ECAPMODE = common dso_local global i32 0, align 4
@_SIG_MAXSIG = common dso_local global i64 0, align 8
@REAPER_KILL_CHILDREN = common dso_local global i32 0, align 4
@REAPER_KILL_SUBTREE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@P_TREE_REAPER = common dso_local global i32 0, align 4
@SI_USER = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@p_sibling = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@p_reapsibling = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.proc*, %struct.procctl_reaper_kill*)* @reap_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reap_kill(%struct.thread* %0, %struct.proc* %1, %struct.procctl_reaper_kill* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.procctl_reaper_kill*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca %struct.proc*, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca %struct.reap_kill_tracker_head, align 4
  %12 = alloca %struct.reap_kill_tracker*, align 8
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.proc* %1, %struct.proc** %6, align 8
  store %struct.procctl_reaper_kill* %2, %struct.procctl_reaper_kill** %7, align 8
  %14 = load i32, i32* @SX_LOCKED, align 4
  %15 = call i32 @sx_assert(i32* @proctree_lock, i32 %14)
  %16 = load %struct.thread*, %struct.thread** %5, align 8
  %17 = call i64 @IN_CAPABILITY_MODE(%struct.thread* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @ECAPMODE, align 4
  store i32 %20, i32* %4, align 4
  br label %199

21:                                               ; preds = %3
  %22 = load %struct.procctl_reaper_kill*, %struct.procctl_reaper_kill** %7, align 8
  %23 = getelementptr inbounds %struct.procctl_reaper_kill, %struct.procctl_reaper_kill* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %54, label %26

26:                                               ; preds = %21
  %27 = load %struct.procctl_reaper_kill*, %struct.procctl_reaper_kill** %7, align 8
  %28 = getelementptr inbounds %struct.procctl_reaper_kill, %struct.procctl_reaper_kill* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @_SIG_MAXSIG, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %54, label %32

32:                                               ; preds = %26
  %33 = load %struct.procctl_reaper_kill*, %struct.procctl_reaper_kill** %7, align 8
  %34 = getelementptr inbounds %struct.procctl_reaper_kill, %struct.procctl_reaper_kill* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @REAPER_KILL_CHILDREN, align 4
  %37 = load i32, i32* @REAPER_KILL_SUBTREE, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = and i32 %35, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %32
  %43 = load %struct.procctl_reaper_kill*, %struct.procctl_reaper_kill** %7, align 8
  %44 = getelementptr inbounds %struct.procctl_reaper_kill, %struct.procctl_reaper_kill* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @REAPER_KILL_CHILDREN, align 4
  %47 = load i32, i32* @REAPER_KILL_SUBTREE, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = load i32, i32* @REAPER_KILL_CHILDREN, align 4
  %51 = load i32, i32* @REAPER_KILL_SUBTREE, align 4
  %52 = or i32 %50, %51
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %42, %32, %26, %21
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %4, align 4
  br label %199

56:                                               ; preds = %42
  %57 = load %struct.proc*, %struct.proc** %6, align 8
  %58 = call i32 @PROC_UNLOCK(%struct.proc* %57)
  %59 = load %struct.proc*, %struct.proc** %6, align 8
  %60 = getelementptr inbounds %struct.proc, %struct.proc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @P_TREE_REAPER, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load %struct.proc*, %struct.proc** %6, align 8
  %67 = getelementptr inbounds %struct.proc, %struct.proc* %66, i32 0, i32 4
  %68 = load %struct.proc*, %struct.proc** %67, align 8
  br label %71

69:                                               ; preds = %56
  %70 = load %struct.proc*, %struct.proc** %6, align 8
  br label %71

71:                                               ; preds = %69, %65
  %72 = phi %struct.proc* [ %68, %65 ], [ %70, %69 ]
  store %struct.proc* %72, %struct.proc** %8, align 8
  %73 = call i32 @ksiginfo_init(%struct.TYPE_8__* %10)
  %74 = load %struct.procctl_reaper_kill*, %struct.procctl_reaper_kill** %7, align 8
  %75 = getelementptr inbounds %struct.procctl_reaper_kill, %struct.procctl_reaper_kill* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i64 %76, i64* %77, align 8
  %78 = load i32, i32* @SI_USER, align 4
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  store i32 %78, i32* %79, align 8
  %80 = load %struct.thread*, %struct.thread** %5, align 8
  %81 = getelementptr inbounds %struct.thread, %struct.thread* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store i32 %84, i32* %85, align 4
  %86 = load %struct.thread*, %struct.thread** %5, align 8
  %87 = getelementptr inbounds %struct.thread, %struct.thread* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i32 %90, i32* %91, align 8
  %92 = load i32, i32* @ESRCH, align 4
  store i32 %92, i32* %13, align 4
  %93 = load %struct.procctl_reaper_kill*, %struct.procctl_reaper_kill** %7, align 8
  %94 = getelementptr inbounds %struct.procctl_reaper_kill, %struct.procctl_reaper_kill* %93, i32 0, i32 4
  store i64 0, i64* %94, align 8
  %95 = load %struct.procctl_reaper_kill*, %struct.procctl_reaper_kill** %7, align 8
  %96 = getelementptr inbounds %struct.procctl_reaper_kill, %struct.procctl_reaper_kill* %95, i32 0, i32 2
  store i32 -1, i32* %96, align 4
  %97 = load %struct.procctl_reaper_kill*, %struct.procctl_reaper_kill** %7, align 8
  %98 = getelementptr inbounds %struct.procctl_reaper_kill, %struct.procctl_reaper_kill* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @REAPER_KILL_CHILDREN, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %71
  %104 = load %struct.proc*, %struct.proc** %8, align 8
  %105 = getelementptr inbounds %struct.proc, %struct.proc* %104, i32 0, i32 3
  %106 = call %struct.proc* @LIST_FIRST(i32* %105)
  store %struct.proc* %106, %struct.proc** %9, align 8
  br label %107

107:                                              ; preds = %115, %103
  %108 = load %struct.proc*, %struct.proc** %9, align 8
  %109 = icmp ne %struct.proc* %108, null
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load %struct.thread*, %struct.thread** %5, align 8
  %112 = load %struct.proc*, %struct.proc** %9, align 8
  %113 = load %struct.procctl_reaper_kill*, %struct.procctl_reaper_kill** %7, align 8
  %114 = call i32 @reap_kill_proc(%struct.thread* %111, %struct.proc* %112, %struct.TYPE_8__* %10, %struct.procctl_reaper_kill* %113, i32* %13)
  br label %115

115:                                              ; preds = %110
  %116 = load %struct.proc*, %struct.proc** %9, align 8
  %117 = load i32, i32* @p_sibling, align 4
  %118 = call %struct.proc* @LIST_NEXT(%struct.proc* %116, i32 %117)
  store %struct.proc* %118, %struct.proc** %9, align 8
  br label %107

119:                                              ; preds = %107
  br label %195

120:                                              ; preds = %71
  %121 = call i32 @TAILQ_INIT(%struct.reap_kill_tracker_head* %11)
  %122 = load %struct.proc*, %struct.proc** %8, align 8
  %123 = call i32 @reap_kill_sched(%struct.reap_kill_tracker_head* %11, %struct.proc* %122)
  br label %124

124:                                              ; preds = %190, %120
  %125 = call %struct.reap_kill_tracker* @TAILQ_FIRST(%struct.reap_kill_tracker_head* %11)
  store %struct.reap_kill_tracker* %125, %struct.reap_kill_tracker** %12, align 8
  %126 = icmp ne %struct.reap_kill_tracker* %125, null
  br i1 %126, label %127, label %194

127:                                              ; preds = %124
  %128 = load %struct.reap_kill_tracker*, %struct.reap_kill_tracker** %12, align 8
  %129 = getelementptr inbounds %struct.reap_kill_tracker, %struct.reap_kill_tracker* %128, i32 0, i32 0
  %130 = load %struct.proc*, %struct.proc** %129, align 8
  %131 = getelementptr inbounds %struct.proc, %struct.proc* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @P_TREE_REAPER, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i32 @MPASS(i32 %136)
  %138 = load %struct.reap_kill_tracker*, %struct.reap_kill_tracker** %12, align 8
  %139 = load i32, i32* @link, align 4
  %140 = call i32 @TAILQ_REMOVE(%struct.reap_kill_tracker_head* %11, %struct.reap_kill_tracker* %138, i32 %139)
  %141 = load %struct.reap_kill_tracker*, %struct.reap_kill_tracker** %12, align 8
  %142 = getelementptr inbounds %struct.reap_kill_tracker, %struct.reap_kill_tracker* %141, i32 0, i32 0
  %143 = load %struct.proc*, %struct.proc** %142, align 8
  %144 = getelementptr inbounds %struct.proc, %struct.proc* %143, i32 0, i32 2
  %145 = call %struct.proc* @LIST_FIRST(i32* %144)
  store %struct.proc* %145, %struct.proc** %9, align 8
  br label %146

146:                                              ; preds = %186, %127
  %147 = load %struct.proc*, %struct.proc** %9, align 8
  %148 = icmp ne %struct.proc* %147, null
  br i1 %148, label %149, label %190

149:                                              ; preds = %146
  %150 = load %struct.reap_kill_tracker*, %struct.reap_kill_tracker** %12, align 8
  %151 = getelementptr inbounds %struct.reap_kill_tracker, %struct.reap_kill_tracker* %150, i32 0, i32 0
  %152 = load %struct.proc*, %struct.proc** %151, align 8
  %153 = load %struct.proc*, %struct.proc** %8, align 8
  %154 = icmp eq %struct.proc* %152, %153
  br i1 %154, label %155, label %171

155:                                              ; preds = %149
  %156 = load %struct.procctl_reaper_kill*, %struct.procctl_reaper_kill** %7, align 8
  %157 = getelementptr inbounds %struct.procctl_reaper_kill, %struct.procctl_reaper_kill* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @REAPER_KILL_SUBTREE, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %155
  %163 = load %struct.proc*, %struct.proc** %9, align 8
  %164 = getelementptr inbounds %struct.proc, %struct.proc* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.procctl_reaper_kill*, %struct.procctl_reaper_kill** %7, align 8
  %167 = getelementptr inbounds %struct.procctl_reaper_kill, %struct.procctl_reaper_kill* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %165, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %162
  br label %186

171:                                              ; preds = %162, %155, %149
  %172 = load %struct.proc*, %struct.proc** %9, align 8
  %173 = getelementptr inbounds %struct.proc, %struct.proc* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @P_TREE_REAPER, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %171
  %179 = load %struct.proc*, %struct.proc** %9, align 8
  %180 = call i32 @reap_kill_sched(%struct.reap_kill_tracker_head* %11, %struct.proc* %179)
  br label %181

181:                                              ; preds = %178, %171
  %182 = load %struct.thread*, %struct.thread** %5, align 8
  %183 = load %struct.proc*, %struct.proc** %9, align 8
  %184 = load %struct.procctl_reaper_kill*, %struct.procctl_reaper_kill** %7, align 8
  %185 = call i32 @reap_kill_proc(%struct.thread* %182, %struct.proc* %183, %struct.TYPE_8__* %10, %struct.procctl_reaper_kill* %184, i32* %13)
  br label %186

186:                                              ; preds = %181, %170
  %187 = load %struct.proc*, %struct.proc** %9, align 8
  %188 = load i32, i32* @p_reapsibling, align 4
  %189 = call %struct.proc* @LIST_NEXT(%struct.proc* %187, i32 %188)
  store %struct.proc* %189, %struct.proc** %9, align 8
  br label %146

190:                                              ; preds = %146
  %191 = load %struct.reap_kill_tracker*, %struct.reap_kill_tracker** %12, align 8
  %192 = load i32, i32* @M_TEMP, align 4
  %193 = call i32 @free(%struct.reap_kill_tracker* %191, i32 %192)
  br label %124

194:                                              ; preds = %124
  br label %195

195:                                              ; preds = %194, %119
  %196 = load %struct.proc*, %struct.proc** %6, align 8
  %197 = call i32 @PROC_LOCK(%struct.proc* %196)
  %198 = load i32, i32* %13, align 4
  store i32 %198, i32* %4, align 4
  br label %199

199:                                              ; preds = %195, %54, %19
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i64 @IN_CAPABILITY_MODE(%struct.thread*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @ksiginfo_init(%struct.TYPE_8__*) #1

declare dso_local %struct.proc* @LIST_FIRST(i32*) #1

declare dso_local i32 @reap_kill_proc(%struct.thread*, %struct.proc*, %struct.TYPE_8__*, %struct.procctl_reaper_kill*, i32*) #1

declare dso_local %struct.proc* @LIST_NEXT(%struct.proc*, i32) #1

declare dso_local i32 @TAILQ_INIT(%struct.reap_kill_tracker_head*) #1

declare dso_local i32 @reap_kill_sched(%struct.reap_kill_tracker_head*, %struct.proc*) #1

declare dso_local %struct.reap_kill_tracker* @TAILQ_FIRST(%struct.reap_kill_tracker_head*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.reap_kill_tracker_head*, %struct.reap_kill_tracker*, i32) #1

declare dso_local i32 @free(%struct.reap_kill_tracker*, i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
