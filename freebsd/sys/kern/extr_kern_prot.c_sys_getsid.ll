; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_getsid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_getsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, %struct.proc* }
%struct.proc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.getsid_args = type { i64 }

@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_getsid(%struct.thread* %0, %struct.getsid_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.getsid_args*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.getsid_args* %1, %struct.getsid_args** %5, align 8
  %8 = load %struct.getsid_args*, %struct.getsid_args** %5, align 8
  %9 = getelementptr inbounds %struct.getsid_args, %struct.getsid_args* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.thread*, %struct.thread** %4, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 1
  %15 = load %struct.proc*, %struct.proc** %14, align 8
  store %struct.proc* %15, %struct.proc** %6, align 8
  %16 = load %struct.proc*, %struct.proc** %6, align 8
  %17 = call i32 @PROC_LOCK(%struct.proc* %16)
  br label %38

18:                                               ; preds = %2
  %19 = load %struct.getsid_args*, %struct.getsid_args** %5, align 8
  %20 = getelementptr inbounds %struct.getsid_args, %struct.getsid_args* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call %struct.proc* @pfind(i64 %21)
  store %struct.proc* %22, %struct.proc** %6, align 8
  %23 = load %struct.proc*, %struct.proc** %6, align 8
  %24 = icmp eq %struct.proc* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @ESRCH, align 4
  store i32 %26, i32* %3, align 4
  br label %50

27:                                               ; preds = %18
  %28 = load %struct.thread*, %struct.thread** %4, align 8
  %29 = load %struct.proc*, %struct.proc** %6, align 8
  %30 = call i32 @p_cansee(%struct.thread* %28, %struct.proc* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.proc*, %struct.proc** %6, align 8
  %35 = call i32 @PROC_UNLOCK(%struct.proc* %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %50

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %12
  %39 = load %struct.proc*, %struct.proc** %6, align 8
  %40 = getelementptr inbounds %struct.proc, %struct.proc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.thread*, %struct.thread** %4, align 8
  %45 = getelementptr inbounds %struct.thread, %struct.thread* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %43, i32* %47, align 4
  %48 = load %struct.proc*, %struct.proc** %6, align 8
  %49 = call i32 @PROC_UNLOCK(%struct.proc* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %38, %33, %25
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local %struct.proc* @pfind(i64) #1

declare dso_local i32 @p_cansee(%struct.thread*, %struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
