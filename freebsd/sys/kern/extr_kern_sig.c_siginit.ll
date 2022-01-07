; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_siginit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_siginit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { %struct.sigacts* }
%struct.sigacts = type { i32, i32 }

@NSIG = common dso_local global i32 0, align 4
@SIGPROP_IGNORE = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @siginit(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sigacts*, align 8
  store %struct.proc* %0, %struct.proc** %2, align 8
  %5 = load %struct.proc*, %struct.proc** %2, align 8
  %6 = call i32 @PROC_LOCK(%struct.proc* %5)
  %7 = load %struct.proc*, %struct.proc** %2, align 8
  %8 = getelementptr inbounds %struct.proc, %struct.proc* %7, i32 0, i32 0
  %9 = load %struct.sigacts*, %struct.sigacts** %8, align 8
  store %struct.sigacts* %9, %struct.sigacts** %4, align 8
  %10 = load %struct.sigacts*, %struct.sigacts** %4, align 8
  %11 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %10, i32 0, i32 0
  %12 = call i32 @mtx_lock(i32* %11)
  store i32 1, i32* %3, align 4
  br label %13

13:                                               ; preds = %34, %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @NSIG, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @sigprop(i32 %18)
  %20 = load i32, i32* @SIGPROP_IGNORE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @SIGCONT, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct.sigacts*, %struct.sigacts** %4, align 8
  %29 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @SIGADDSET(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %23, %17
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %13

37:                                               ; preds = %13
  %38 = load %struct.sigacts*, %struct.sigacts** %4, align 8
  %39 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %38, i32 0, i32 0
  %40 = call i32 @mtx_unlock(i32* %39)
  %41 = load %struct.proc*, %struct.proc** %2, align 8
  %42 = call i32 @PROC_UNLOCK(%struct.proc* %41)
  ret void
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @sigprop(i32) #1

declare dso_local i32 @SIGADDSET(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
