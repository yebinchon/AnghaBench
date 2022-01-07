; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_syscall.c_syscallret.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_syscall.c_syscallret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, i32*, i32, i32, %struct.syscall_args, %struct.proc* }
%struct.syscall_args = type { i32 }
%struct.proc = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@TDP_FORKING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"fork() did not clear TDP_FORKING upon completion\00", align 1
@trap_enotcap = common dso_local global i64 0, align 8
@P2_TRAPCAP = common dso_local global i32 0, align 4
@ENOTCAPABLE = common dso_local global i32 0, align 4
@ECAPMODE = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@TRAP_CAP = common dso_local global i32 0, align 4
@P_TRACED = common dso_local global i32 0, align 4
@TDB_SCX = common dso_local global i32 0, align 4
@S_SCX = common dso_local global i32 0, align 4
@TDB_EXEC = common dso_local global i32 0, align 4
@TDB_FORK = common dso_local global i32 0, align 4
@PTRACE_SCX = common dso_local global i32 0, align 4
@TDP_RFPPWAIT = common dso_local global i32 0, align 4
@KTR_SYSRET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*)* @syscallret to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @syscallret(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.syscall_args*, align 8
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %7 = load %struct.thread*, %struct.thread** %2, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @TDP_FORKING, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.thread*, %struct.thread** %2, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 6
  %17 = load %struct.proc*, %struct.proc** %16, align 8
  store %struct.proc* %17, %struct.proc** %3, align 8
  %18 = load %struct.thread*, %struct.thread** %2, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 5
  store %struct.syscall_args* %19, %struct.syscall_args** %4, align 8
  %20 = load i64, i64* @trap_enotcap, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %1
  %23 = load %struct.proc*, %struct.proc** %3, align 8
  %24 = getelementptr inbounds %struct.proc, %struct.proc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @P2_TRAPCAP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %22, %1
  %30 = load %struct.thread*, %struct.thread** %2, align 8
  %31 = call i64 @IN_CAPABILITY_MODE(%struct.thread* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %29
  %34 = load %struct.thread*, %struct.thread** %2, align 8
  %35 = getelementptr inbounds %struct.thread, %struct.thread* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ENOTCAPABLE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.thread*, %struct.thread** %2, align 8
  %41 = getelementptr inbounds %struct.thread, %struct.thread* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ECAPMODE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %39, %33
  %46 = call i32 @ksiginfo_init_trap(%struct.TYPE_4__* %5)
  %47 = load i32, i32* @SIGTRAP, align 4
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  store i32 %47, i32* %48, align 4
  %49 = load %struct.thread*, %struct.thread** %2, align 8
  %50 = getelementptr inbounds %struct.thread, %struct.thread* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @TRAP_CAP, align 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.thread*, %struct.thread** %2, align 8
  %56 = call i32 @trapsignal(%struct.thread* %55, %struct.TYPE_4__* %5)
  br label %57

57:                                               ; preds = %45, %39
  br label %58

58:                                               ; preds = %57, %29, %22
  %59 = load %struct.thread*, %struct.thread** %2, align 8
  %60 = load %struct.thread*, %struct.thread** %2, align 8
  %61 = getelementptr inbounds %struct.thread, %struct.thread* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @userret(%struct.thread* %59, i32 %62)
  %64 = load %struct.proc*, %struct.proc** %3, align 8
  %65 = getelementptr inbounds %struct.proc, %struct.proc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @P_TRACED, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %58
  store i32 1, i32* %6, align 4
  %71 = load %struct.proc*, %struct.proc** %3, align 8
  %72 = call i32 @PROC_LOCK(%struct.proc* %71)
  %73 = load i32, i32* @TDB_SCX, align 4
  %74 = load %struct.thread*, %struct.thread** %2, align 8
  %75 = getelementptr inbounds %struct.thread, %struct.thread* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.proc*, %struct.proc** %3, align 8
  %79 = call i32 @PROC_UNLOCK(%struct.proc* %78)
  br label %81

80:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %80, %70
  %82 = load %struct.proc*, %struct.proc** %3, align 8
  %83 = load i32, i32* @S_SCX, align 4
  %84 = load %struct.syscall_args*, %struct.syscall_args** %4, align 8
  %85 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @STOPEVENT(%struct.proc* %82, i32 %83, i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %81
  %91 = load %struct.thread*, %struct.thread** %2, align 8
  %92 = getelementptr inbounds %struct.thread, %struct.thread* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @TDB_EXEC, align 4
  %95 = load i32, i32* @TDB_FORK, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %93, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %137

99:                                               ; preds = %90, %81
  %100 = load %struct.proc*, %struct.proc** %3, align 8
  %101 = call i32 @PROC_LOCK(%struct.proc* %100)
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %124

104:                                              ; preds = %99
  %105 = load %struct.thread*, %struct.thread** %2, align 8
  %106 = getelementptr inbounds %struct.thread, %struct.thread* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @TDB_FORK, align 4
  %109 = load i32, i32* @TDB_EXEC, align 4
  %110 = or i32 %108, %109
  %111 = and i32 %107, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %104
  %114 = load %struct.proc*, %struct.proc** %3, align 8
  %115 = getelementptr inbounds %struct.proc, %struct.proc* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @PTRACE_SCX, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %113, %104
  %121 = load %struct.thread*, %struct.thread** %2, align 8
  %122 = load i32, i32* @SIGTRAP, align 4
  %123 = call i32 @ptracestop(%struct.thread* %121, i32 %122, i32* null)
  br label %124

124:                                              ; preds = %120, %113, %99
  %125 = load i32, i32* @TDB_SCX, align 4
  %126 = load i32, i32* @TDB_EXEC, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @TDB_FORK, align 4
  %129 = or i32 %127, %128
  %130 = xor i32 %129, -1
  %131 = load %struct.thread*, %struct.thread** %2, align 8
  %132 = getelementptr inbounds %struct.thread, %struct.thread* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, %130
  store i32 %134, i32* %132, align 4
  %135 = load %struct.proc*, %struct.proc** %3, align 8
  %136 = call i32 @PROC_UNLOCK(%struct.proc* %135)
  br label %137

137:                                              ; preds = %124, %90
  %138 = load %struct.thread*, %struct.thread** %2, align 8
  %139 = getelementptr inbounds %struct.thread, %struct.thread* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @TDP_RFPPWAIT, align 4
  %142 = and i32 %140, %141
  %143 = call i64 @__predict_false(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %137
  %146 = load %struct.thread*, %struct.thread** %2, align 8
  %147 = call i32 @fork_rfppwait(%struct.thread* %146)
  br label %148

148:                                              ; preds = %145, %137
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @IN_CAPABILITY_MODE(%struct.thread*) #1

declare dso_local i32 @ksiginfo_init_trap(%struct.TYPE_4__*) #1

declare dso_local i32 @trapsignal(%struct.thread*, %struct.TYPE_4__*) #1

declare dso_local i32 @userret(%struct.thread*, i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @STOPEVENT(%struct.proc*, i32, i32) #1

declare dso_local i32 @ptracestop(%struct.thread*, i32, i32*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @fork_rfppwait(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
