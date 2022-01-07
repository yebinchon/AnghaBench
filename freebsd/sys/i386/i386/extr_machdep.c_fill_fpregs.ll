; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_machdep.c_fill_fpregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_machdep.c_fill_fpregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.fpreg = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.save87 = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"not suspended thread %p\00", align 1
@cpu_fxsr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fill_fpregs(%struct.thread* %0, %struct.fpreg* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.fpreg*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.fpreg* %1, %struct.fpreg** %4, align 8
  %5 = load %struct.thread*, %struct.thread** %3, align 8
  %6 = load %struct.thread*, %struct.thread** @curthread, align 8
  %7 = icmp eq %struct.thread* %5, %6
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = load %struct.thread*, %struct.thread** %3, align 8
  %10 = call i64 @TD_IS_SUSPENDED(%struct.thread* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = load %struct.thread*, %struct.thread** %3, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @P_SHOULDSTOP(i32 %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %12, %8, %2
  %19 = phi i1 [ true, %8 ], [ true, %2 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = load %struct.thread*, %struct.thread** %3, align 8
  %22 = bitcast %struct.thread* %21 to i8*
  %23 = call i32 @KASSERT(i32 %20, i8* %22)
  %24 = load %struct.thread*, %struct.thread** %3, align 8
  %25 = call i32 @npxgetregs(%struct.thread* %24)
  %26 = load i64, i64* @cpu_fxsr, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %18
  %29 = load %struct.thread*, %struct.thread** %3, align 8
  %30 = call %struct.TYPE_2__* @get_pcb_user_save_td(%struct.thread* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load %struct.fpreg*, %struct.fpreg** %4, align 8
  %33 = bitcast %struct.fpreg* %32 to %struct.save87*
  %34 = call i32 @npx_fill_fpregs_xmm(i32* %31, %struct.save87* %33)
  br label %41

35:                                               ; preds = %18
  %36 = load %struct.thread*, %struct.thread** %3, align 8
  %37 = call %struct.TYPE_2__* @get_pcb_user_save_td(%struct.thread* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.fpreg*, %struct.fpreg** %4, align 8
  %40 = call i32 @bcopy(i32* %38, %struct.fpreg* %39, i32 4)
  br label %41

41:                                               ; preds = %35, %28
  ret i32 0
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @TD_IS_SUSPENDED(%struct.thread*) #1

declare dso_local i64 @P_SHOULDSTOP(i32) #1

declare dso_local i32 @npxgetregs(%struct.thread*) #1

declare dso_local i32 @npx_fill_fpregs_xmm(i32*, %struct.save87*) #1

declare dso_local %struct.TYPE_2__* @get_pcb_user_save_td(%struct.thread*) #1

declare dso_local i32 @bcopy(i32*, %struct.fpreg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
