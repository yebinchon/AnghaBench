; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_childproc_exited.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_childproc_exited.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, i32 }

@CLD_DUMPED = common dso_local global i32 0, align 4
@CLD_KILLED = common dso_local global i32 0, align 4
@CLD_EXITED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @childproc_exited(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %2, align 8
  %5 = load %struct.proc*, %struct.proc** %2, align 8
  %6 = getelementptr inbounds %struct.proc, %struct.proc* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @WCOREDUMP(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* @CLD_DUMPED, align 4
  store i32 %11, i32* %3, align 4
  %12 = load %struct.proc*, %struct.proc** %2, align 8
  %13 = getelementptr inbounds %struct.proc, %struct.proc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @WTERMSIG(i32 %14)
  store i32 %15, i32* %4, align 4
  br label %34

16:                                               ; preds = %1
  %17 = load %struct.proc*, %struct.proc** %2, align 8
  %18 = getelementptr inbounds %struct.proc, %struct.proc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @WIFSIGNALED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load i32, i32* @CLD_KILLED, align 4
  store i32 %23, i32* %3, align 4
  %24 = load %struct.proc*, %struct.proc** %2, align 8
  %25 = getelementptr inbounds %struct.proc, %struct.proc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @WTERMSIG(i32 %26)
  store i32 %27, i32* %4, align 4
  br label %33

28:                                               ; preds = %16
  %29 = load i32, i32* @CLD_EXITED, align 4
  store i32 %29, i32* %3, align 4
  %30 = load %struct.proc*, %struct.proc** %2, align 8
  %31 = getelementptr inbounds %struct.proc, %struct.proc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %28, %22
  br label %34

34:                                               ; preds = %33, %10
  %35 = load %struct.proc*, %struct.proc** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @sigparent(%struct.proc* %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i64 @WCOREDUMP(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @sigparent(%struct.proc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
