; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_trap.c_syscall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_trap.c_syscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_7__, i32, %struct.TYPE_10__*, %struct.trapframe* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.trapframe = type { i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i8*, i32, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@PSL_T = common dso_local global i32 0, align 4
@PSL_VM = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@TRAP_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"System call %s returning with kernel FPU ctx leaked\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"System call %s returning with mangled pcb_save\00", align 1
@PCB_VM86CALL = common dso_local global i32 0, align 4
@curpcb = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @syscall(%struct.trapframe* %0) #0 {
  %2 = alloca %struct.trapframe*, align 8
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__, align 8
  store %struct.trapframe* %0, %struct.trapframe** %2, align 8
  %6 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %7 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %9, %struct.thread** %3, align 8
  %10 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %11 = load %struct.thread*, %struct.thread** %3, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 3
  store %struct.trapframe* %10, %struct.trapframe** %12, align 8
  %13 = load %struct.thread*, %struct.thread** %3, align 8
  %14 = call i32 @syscallenter(%struct.thread* %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PSL_T, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @PSL_VM, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @PSL_T, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %28 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = call i32 @ksiginfo_init_trap(%struct.TYPE_8__* %5)
  %32 = load i32, i32* @SIGTRAP, align 4
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @TRAP_TRACE, align 4
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  store i32 %34, i32* %35, align 8
  %36 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %37 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  %41 = load %struct.thread*, %struct.thread** %3, align 8
  %42 = call i32 @trapsignal(%struct.thread* %41, %struct.TYPE_8__* %5)
  br label %43

43:                                               ; preds = %24, %19, %1
  %44 = load %struct.thread*, %struct.thread** %3, align 8
  %45 = getelementptr inbounds %struct.thread, %struct.thread* %44, i32 0, i32 2
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = call i32 @PCB_USER_FPU(%struct.TYPE_10__* %46)
  %48 = load %struct.thread*, %struct.thread** %3, align 8
  %49 = getelementptr inbounds %struct.thread, %struct.thread* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.thread*, %struct.thread** %3, align 8
  %52 = getelementptr inbounds %struct.thread, %struct.thread* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @syscallname(i32 %50, i32 %54)
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 @KASSERT(i32 %47, i8* %57)
  %59 = load %struct.thread*, %struct.thread** %3, align 8
  %60 = getelementptr inbounds %struct.thread, %struct.thread* %59, i32 0, i32 2
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.thread*, %struct.thread** %3, align 8
  %65 = call i64 @get_pcb_user_save_td(%struct.thread* %64)
  %66 = icmp eq i64 %63, %65
  %67 = zext i1 %66 to i32
  %68 = load %struct.thread*, %struct.thread** %3, align 8
  %69 = getelementptr inbounds %struct.thread, %struct.thread* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.thread*, %struct.thread** %3, align 8
  %72 = getelementptr inbounds %struct.thread, %struct.thread* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @syscallname(i32 %70, i32 %74)
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 @KASSERT(i32 %67, i8* %77)
  %79 = load %struct.thread*, %struct.thread** %3, align 8
  %80 = call i32 @syscallret(%struct.thread* %79)
  ret void
}

declare dso_local i32 @syscallenter(%struct.thread*) #1

declare dso_local i32 @ksiginfo_init_trap(%struct.TYPE_8__*) #1

declare dso_local i32 @trapsignal(%struct.thread*, %struct.TYPE_8__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PCB_USER_FPU(%struct.TYPE_10__*) #1

declare dso_local i32 @syscallname(i32, i32) #1

declare dso_local i64 @get_pcb_user_save_td(%struct.thread*) #1

declare dso_local i32 @syscallret(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
