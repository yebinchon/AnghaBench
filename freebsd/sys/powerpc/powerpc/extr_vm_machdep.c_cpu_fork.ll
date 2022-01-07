; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_vm_machdep.c_cpu_fork.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_vm_machdep.c_cpu_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, %struct.TYPE_6__, %struct.trapframe*, %struct.trapframe* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.trapframe = type { i32, i32, %struct.TYPE_5__, i8*, i8**, i8*, i64* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.proc = type { i32 }
%struct.callframe = type { i8*, i8*, i8*, i8* }
%struct.pcb = type { i32, i32, %struct.TYPE_5__, i8*, i8**, i8*, i64* }

@curthread = common dso_local global %struct.thread* null, align 8
@thread0 = common dso_local global %struct.thread zeroinitializer, align 8
@.str = private unnamed_addr constant [39 x i8] c"cpu_fork: p1 not curproc and not proc0\00", align 1
@KTR_PROC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"cpu_fork: called td1=%p p2=%p flags=%x\00", align 1
@RFPROC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@FIRSTARG = common dso_local global i64 0, align 8
@fork_return = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"stack misaligned\00", align 1
@fork_trampoline = common dso_local global i64 0, align 8
@psl_kernset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_fork(%struct.thread* %0, %struct.proc* %1, %struct.thread* %2, i32 %3) #0 {
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.trapframe*, align 8
  %10 = alloca %struct.callframe*, align 8
  %11 = alloca %struct.pcb*, align 8
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.proc* %1, %struct.proc** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.thread*, %struct.thread** %5, align 8
  %13 = load %struct.thread*, %struct.thread** @curthread, align 8
  %14 = icmp eq %struct.thread* %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load %struct.thread*, %struct.thread** %5, align 8
  %17 = icmp eq %struct.thread* %16, @thread0
  br label %18

18:                                               ; preds = %15, %4
  %19 = phi i1 [ true, %4 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @KTR_PROC, align 4
  %23 = load %struct.thread*, %struct.thread** %5, align 8
  %24 = load %struct.proc*, %struct.proc** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @CTR3(i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), %struct.thread* %23, %struct.proc* %24, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @RFPROC, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  br label %129

32:                                               ; preds = %18
  %33 = load %struct.thread*, %struct.thread** %7, align 8
  %34 = getelementptr inbounds %struct.thread, %struct.thread* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.thread*, %struct.thread** %7, align 8
  %37 = getelementptr inbounds %struct.thread, %struct.thread* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = mul nsw i32 %38, %39
  %41 = add nsw i32 %35, %40
  %42 = sext i32 %41 to i64
  %43 = sub i64 %42, 48
  %44 = and i64 %43, -48
  %45 = inttoptr i64 %44 to %struct.pcb*
  store %struct.pcb* %45, %struct.pcb** %11, align 8
  %46 = load %struct.pcb*, %struct.pcb** %11, align 8
  %47 = bitcast %struct.pcb* %46 to %struct.trapframe*
  %48 = load %struct.thread*, %struct.thread** %7, align 8
  %49 = getelementptr inbounds %struct.thread, %struct.thread* %48, i32 0, i32 4
  store %struct.trapframe* %47, %struct.trapframe** %49, align 8
  %50 = load %struct.thread*, %struct.thread** %5, align 8
  %51 = getelementptr inbounds %struct.thread, %struct.thread* %50, i32 0, i32 4
  %52 = load %struct.trapframe*, %struct.trapframe** %51, align 8
  %53 = load %struct.pcb*, %struct.pcb** %11, align 8
  %54 = bitcast %struct.pcb* %53 to %struct.trapframe*
  %55 = call i32 @bcopy(%struct.trapframe* %52, %struct.trapframe* %54, i32 48)
  %56 = load %struct.pcb*, %struct.pcb** %11, align 8
  %57 = bitcast %struct.pcb* %56 to %struct.trapframe*
  %58 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %57, i64 -1
  store %struct.trapframe* %58, %struct.trapframe** %9, align 8
  %59 = load %struct.thread*, %struct.thread** %5, align 8
  %60 = getelementptr inbounds %struct.thread, %struct.thread* %59, i32 0, i32 3
  %61 = load %struct.trapframe*, %struct.trapframe** %60, align 8
  %62 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %63 = call i32 @bcopy(%struct.trapframe* %61, %struct.trapframe* %62, i32 48)
  %64 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %65 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %64, i32 0, i32 6
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* @FIRSTARG, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  store i64 0, i64* %68, align 8
  %69 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %70 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %69, i32 0, i32 6
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* @FIRSTARG, align 8
  %73 = add i64 %72, 1
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  store i64 0, i64* %74, align 8
  %75 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %76 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, -268435457
  store i32 %78, i32* %76, align 8
  %79 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %80 = load %struct.thread*, %struct.thread** %7, align 8
  %81 = getelementptr inbounds %struct.thread, %struct.thread* %80, i32 0, i32 3
  store %struct.trapframe* %79, %struct.trapframe** %81, align 8
  %82 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %83 = bitcast %struct.trapframe* %82 to %struct.callframe*
  %84 = getelementptr inbounds %struct.callframe, %struct.callframe* %83, i64 -1
  store %struct.callframe* %84, %struct.callframe** %10, align 8
  %85 = load %struct.callframe*, %struct.callframe** %10, align 8
  %86 = call i32 @memset(%struct.callframe* %85, i32 0, i32 32)
  %87 = load i64, i64* @fork_return, align 8
  %88 = inttoptr i64 %87 to i8*
  %89 = load %struct.callframe*, %struct.callframe** %10, align 8
  %90 = getelementptr inbounds %struct.callframe, %struct.callframe* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load %struct.thread*, %struct.thread** %7, align 8
  %92 = bitcast %struct.thread* %91 to i8*
  %93 = load %struct.callframe*, %struct.callframe** %10, align 8
  %94 = getelementptr inbounds %struct.callframe, %struct.callframe* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  %96 = bitcast %struct.trapframe* %95 to i8*
  %97 = load %struct.callframe*, %struct.callframe** %10, align 8
  %98 = getelementptr inbounds %struct.callframe, %struct.callframe* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  %99 = load %struct.callframe*, %struct.callframe** %10, align 8
  %100 = bitcast %struct.callframe* %99 to i8*
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.pcb*, %struct.pcb** %11, align 8
  %103 = getelementptr inbounds %struct.pcb, %struct.pcb* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.pcb*, %struct.pcb** %11, align 8
  %105 = getelementptr inbounds %struct.pcb, %struct.pcb* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = srem i32 %106, 16
  %108 = icmp eq i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @KASSERT(i32 %109, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i64, i64* @fork_trampoline, align 8
  %112 = inttoptr i64 %111 to i8*
  %113 = load %struct.pcb*, %struct.pcb** %11, align 8
  %114 = getelementptr inbounds %struct.pcb, %struct.pcb* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load %struct.pcb*, %struct.pcb** %11, align 8
  %116 = getelementptr inbounds %struct.pcb, %struct.pcb* %115, i32 0, i32 3
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.pcb*, %struct.pcb** %11, align 8
  %119 = getelementptr inbounds %struct.pcb, %struct.pcb* %118, i32 0, i32 4
  %120 = load i8**, i8*** %119, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 0
  store i8* %117, i8** %121, align 8
  %122 = load %struct.thread*, %struct.thread** %7, align 8
  %123 = getelementptr inbounds %struct.thread, %struct.thread* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  %125 = load i32, i32* @psl_kernset, align 4
  %126 = load %struct.thread*, %struct.thread** %7, align 8
  %127 = getelementptr inbounds %struct.thread, %struct.thread* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 4
  br label %129

129:                                              ; preds = %32, %31
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @CTR3(i32, i8*, %struct.thread*, %struct.proc*, i32) #1

declare dso_local i32 @bcopy(%struct.trapframe*, %struct.trapframe*, i32) #1

declare dso_local i32 @memset(%struct.callframe*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
