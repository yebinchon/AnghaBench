; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_wait_background.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_wait_background.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i64, i32 }
%struct.thread = type { i32, %struct.proc* }
%struct.proc = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.pgrp = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }

@SIGTTIN = common dso_local global i32 0, align 4
@SIGTTOU = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@P_PPWAIT = common dso_local global i32 0, align 4
@SI_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_wait_background(%struct.tty* %0, %struct.thread* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.proc*, align 8
  %9 = alloca %struct.pgrp*, align 8
  %10 = alloca %struct.TYPE_6__, align 4
  %11 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %5, align 8
  store %struct.thread* %1, %struct.thread** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.thread*, %struct.thread** %6, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 1
  %14 = load %struct.proc*, %struct.proc** %13, align 8
  store %struct.proc* %14, %struct.proc** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @SIGTTIN, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @SIGTTOU, align 4
  %21 = icmp eq i32 %19, %20
  br label %22

22:                                               ; preds = %18, %3
  %23 = phi i1 [ true, %3 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @MPASS(i32 %24)
  %26 = load %struct.tty*, %struct.tty** %5, align 8
  %27 = load i32, i32* @MA_OWNED, align 4
  %28 = call i32 @tty_lock_assert(%struct.tty* %26, i32 %27)
  br label %29

29:                                               ; preds = %122, %22
  %30 = load %struct.proc*, %struct.proc** %8, align 8
  %31 = call i32 @PROC_LOCK(%struct.proc* %30)
  %32 = load %struct.tty*, %struct.tty** %5, align 8
  %33 = load %struct.proc*, %struct.proc** %8, align 8
  %34 = call i32 @tty_is_ctty(%struct.tty* %32, %struct.proc* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.proc*, %struct.proc** %8, align 8
  %38 = getelementptr inbounds %struct.proc, %struct.proc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.tty*, %struct.tty** %5, align 8
  %41 = getelementptr inbounds %struct.tty, %struct.tty* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36, %29
  %45 = load %struct.proc*, %struct.proc** %8, align 8
  %46 = call i32 @PROC_UNLOCK(%struct.proc* %45)
  store i32 0, i32* %4, align 4
  br label %123

47:                                               ; preds = %36
  %48 = load %struct.proc*, %struct.proc** %8, align 8
  %49 = getelementptr inbounds %struct.proc, %struct.proc* %48, i32 0, i32 2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @SIGISMEMBER(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %47
  %57 = load %struct.thread*, %struct.thread** %6, align 8
  %58 = getelementptr inbounds %struct.thread, %struct.thread* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i64 @SIGISMEMBER(i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %56, %47
  %64 = load %struct.proc*, %struct.proc** %8, align 8
  %65 = call i32 @PROC_UNLOCK(%struct.proc* %64)
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @SIGTTOU, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @EIO, align 4
  br label %72

72:                                               ; preds = %70, %69
  %73 = phi i32 [ 0, %69 ], [ %71, %70 ]
  store i32 %73, i32* %4, align 4
  br label %123

74:                                               ; preds = %56
  %75 = load %struct.proc*, %struct.proc** %8, align 8
  %76 = getelementptr inbounds %struct.proc, %struct.proc* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.pgrp*
  store %struct.pgrp* %78, %struct.pgrp** %9, align 8
  %79 = load %struct.proc*, %struct.proc** %8, align 8
  %80 = getelementptr inbounds %struct.proc, %struct.proc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @P_PPWAIT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %74
  %86 = load %struct.pgrp*, %struct.pgrp** %9, align 8
  %87 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85, %74
  %91 = load %struct.proc*, %struct.proc** %8, align 8
  %92 = call i32 @PROC_UNLOCK(%struct.proc* %91)
  %93 = load i32, i32* @EIO, align 4
  store i32 %93, i32* %4, align 4
  br label %123

94:                                               ; preds = %85
  %95 = load %struct.proc*, %struct.proc** %8, align 8
  %96 = call i32 @PROC_UNLOCK(%struct.proc* %95)
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = call i32 @ksiginfo_init(%struct.TYPE_6__* %10)
  %101 = load i32, i32* @SI_KERNEL, align 4
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %7, align 4
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 %103, i32* %104, align 4
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %99, %94
  %106 = load %struct.pgrp*, %struct.pgrp** %9, align 8
  %107 = call i32 @PGRP_LOCK(%struct.pgrp* %106)
  %108 = load %struct.pgrp*, %struct.pgrp** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @pgsignal(%struct.pgrp* %108, i32 %110, i32 1, %struct.TYPE_6__* %10)
  %112 = load %struct.pgrp*, %struct.pgrp** %9, align 8
  %113 = call i32 @PGRP_UNLOCK(%struct.pgrp* %112)
  %114 = load %struct.tty*, %struct.tty** %5, align 8
  %115 = load %struct.tty*, %struct.tty** %5, align 8
  %116 = getelementptr inbounds %struct.tty, %struct.tty* %115, i32 0, i32 1
  %117 = call i32 @tty_wait(%struct.tty* %114, i32* %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %105
  %121 = load i32, i32* %11, align 4
  store i32 %121, i32* %4, align 4
  br label %123

122:                                              ; preds = %105
  br label %29

123:                                              ; preds = %120, %90, %72, %44
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @tty_lock_assert(%struct.tty*, i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @tty_is_ctty(%struct.tty*, %struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i64 @SIGISMEMBER(i32, i32) #1

declare dso_local i32 @ksiginfo_init(%struct.TYPE_6__*) #1

declare dso_local i32 @PGRP_LOCK(%struct.pgrp*) #1

declare dso_local i32 @pgsignal(%struct.pgrp*, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @PGRP_UNLOCK(%struct.pgrp*) #1

declare dso_local i32 @tty_wait(%struct.tty*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
