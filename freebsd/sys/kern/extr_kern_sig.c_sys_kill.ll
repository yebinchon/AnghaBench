; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sys_kill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sys_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.kill_args = type { i32, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i64 }
%struct.proc = type { i32 }

@ECAPMODE = common dso_local global i32 0, align 4
@_SIG_MAXSIG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SI_USER = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_kill(%struct.thread* %0, %struct.kill_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.kill_args*, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.kill_args* %1, %struct.kill_args** %5, align 8
  %9 = load %struct.thread*, %struct.thread** %4, align 8
  %10 = call i64 @IN_CAPABILITY_MODE(%struct.thread* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.kill_args*, %struct.kill_args** %5, align 8
  %14 = getelementptr inbounds %struct.kill_args, %struct.kill_args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.thread*, %struct.thread** %4, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %15, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = load i32, i32* @ECAPMODE, align 4
  store i32 %23, i32* %3, align 4
  br label %124

24:                                               ; preds = %12, %2
  %25 = load %struct.kill_args*, %struct.kill_args** %5, align 8
  %26 = getelementptr inbounds %struct.kill_args, %struct.kill_args* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @AUDIT_ARG_SIGNUM(i64 %27)
  %29 = load %struct.kill_args*, %struct.kill_args** %5, align 8
  %30 = getelementptr inbounds %struct.kill_args, %struct.kill_args* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @AUDIT_ARG_PID(i32 %31)
  %33 = load %struct.kill_args*, %struct.kill_args** %5, align 8
  %34 = getelementptr inbounds %struct.kill_args, %struct.kill_args* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @_SIG_MAXSIG, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %3, align 4
  br label %124

40:                                               ; preds = %24
  %41 = call i32 @ksiginfo_init(%struct.TYPE_9__* %6)
  %42 = load %struct.kill_args*, %struct.kill_args** %5, align 8
  %43 = getelementptr inbounds %struct.kill_args, %struct.kill_args* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  store i64 %44, i64* %45, align 8
  %46 = load i32, i32* @SI_USER, align 4
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  store i32 %46, i32* %47, align 8
  %48 = load %struct.thread*, %struct.thread** %4, align 8
  %49 = getelementptr inbounds %struct.thread, %struct.thread* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = load %struct.thread*, %struct.thread** %4, align 8
  %55 = getelementptr inbounds %struct.thread, %struct.thread* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = load %struct.kill_args*, %struct.kill_args** %5, align 8
  %61 = getelementptr inbounds %struct.kill_args, %struct.kill_args* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %98

64:                                               ; preds = %40
  %65 = load %struct.kill_args*, %struct.kill_args** %5, align 8
  %66 = getelementptr inbounds %struct.kill_args, %struct.kill_args* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.proc* @pfind_any(i32 %67)
  store %struct.proc* %68, %struct.proc** %7, align 8
  %69 = icmp eq %struct.proc* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @ESRCH, align 4
  store i32 %71, i32* %3, align 4
  br label %124

72:                                               ; preds = %64
  %73 = load %struct.proc*, %struct.proc** %7, align 8
  %74 = call i32 @AUDIT_ARG_PROCESS(%struct.proc* %73)
  %75 = load %struct.thread*, %struct.thread** %4, align 8
  %76 = load %struct.proc*, %struct.proc** %7, align 8
  %77 = load %struct.kill_args*, %struct.kill_args** %5, align 8
  %78 = getelementptr inbounds %struct.kill_args, %struct.kill_args* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @p_cansignal(%struct.thread* %75, %struct.proc* %76, i64 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %72
  %84 = load %struct.kill_args*, %struct.kill_args** %5, align 8
  %85 = getelementptr inbounds %struct.kill_args, %struct.kill_args* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.proc*, %struct.proc** %7, align 8
  %90 = load %struct.kill_args*, %struct.kill_args** %5, align 8
  %91 = getelementptr inbounds %struct.kill_args, %struct.kill_args* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @pksignal(%struct.proc* %89, i64 %92, %struct.TYPE_9__* %6)
  br label %94

94:                                               ; preds = %88, %83, %72
  %95 = load %struct.proc*, %struct.proc** %7, align 8
  %96 = call i32 @PROC_UNLOCK(%struct.proc* %95)
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %3, align 4
  br label %124

98:                                               ; preds = %40
  %99 = load %struct.kill_args*, %struct.kill_args** %5, align 8
  %100 = getelementptr inbounds %struct.kill_args, %struct.kill_args* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  switch i32 %101, label %114 [
    i32 -1, label %102
    i32 0, label %108
  ]

102:                                              ; preds = %98
  %103 = load %struct.thread*, %struct.thread** %4, align 8
  %104 = load %struct.kill_args*, %struct.kill_args** %5, align 8
  %105 = getelementptr inbounds %struct.kill_args, %struct.kill_args* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @killpg1(%struct.thread* %103, i64 %106, i32 0, i32 1, %struct.TYPE_9__* %6)
  store i32 %107, i32* %3, align 4
  br label %124

108:                                              ; preds = %98
  %109 = load %struct.thread*, %struct.thread** %4, align 8
  %110 = load %struct.kill_args*, %struct.kill_args** %5, align 8
  %111 = getelementptr inbounds %struct.kill_args, %struct.kill_args* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @killpg1(%struct.thread* %109, i64 %112, i32 0, i32 0, %struct.TYPE_9__* %6)
  store i32 %113, i32* %3, align 4
  br label %124

114:                                              ; preds = %98
  %115 = load %struct.thread*, %struct.thread** %4, align 8
  %116 = load %struct.kill_args*, %struct.kill_args** %5, align 8
  %117 = getelementptr inbounds %struct.kill_args, %struct.kill_args* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.kill_args*, %struct.kill_args** %5, align 8
  %120 = getelementptr inbounds %struct.kill_args, %struct.kill_args* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 0, %121
  %123 = call i32 @killpg1(%struct.thread* %115, i64 %118, i32 %122, i32 0, %struct.TYPE_9__* %6)
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %114, %108, %102, %94, %70, %38, %22
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i64 @IN_CAPABILITY_MODE(%struct.thread*) #1

declare dso_local i32 @AUDIT_ARG_SIGNUM(i64) #1

declare dso_local i32 @AUDIT_ARG_PID(i32) #1

declare dso_local i32 @ksiginfo_init(%struct.TYPE_9__*) #1

declare dso_local %struct.proc* @pfind_any(i32) #1

declare dso_local i32 @AUDIT_ARG_PROCESS(%struct.proc*) #1

declare dso_local i32 @p_cansignal(%struct.thread*, %struct.proc*, i64) #1

declare dso_local i32 @pksignal(%struct.proc*, i64, %struct.TYPE_9__*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @killpg1(%struct.thread*, i64, i32, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
