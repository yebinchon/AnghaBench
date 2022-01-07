; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_process.c_stopevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_process.c_stopevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, i32, i32, i32, i32*, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@KTR_PTRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"stopevent: pid %d event %u val %u\00", align 1
@S_EXIT = common dso_local global i32 0, align 4
@PWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"stopevent\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stopevent(%struct.proc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.proc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.proc*, %struct.proc** %4, align 8
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %7, i32 %8)
  %10 = load %struct.proc*, %struct.proc** %4, align 8
  %11 = getelementptr inbounds %struct.proc, %struct.proc* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load i32, i32* @KTR_PTRACE, align 4
  %13 = load %struct.proc*, %struct.proc** %4, align 8
  %14 = getelementptr inbounds %struct.proc, %struct.proc* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @CTR3(i32 %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %42, %3
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @S_EXIT, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.proc*, %struct.proc** %4, align 8
  %26 = getelementptr inbounds %struct.proc, %struct.proc* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.proc*, %struct.proc** %4, align 8
  %29 = getelementptr inbounds %struct.proc, %struct.proc* %28, i32 0, i32 4
  store i32* null, i32** %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.proc*, %struct.proc** %4, align 8
  %32 = getelementptr inbounds %struct.proc, %struct.proc* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.proc*, %struct.proc** %4, align 8
  %34 = getelementptr inbounds %struct.proc, %struct.proc* %33, i32 0, i32 2
  %35 = call i32 @wakeup(i32* %34)
  %36 = load %struct.proc*, %struct.proc** %4, align 8
  %37 = getelementptr inbounds %struct.proc, %struct.proc* %36, i32 0, i32 0
  %38 = load %struct.proc*, %struct.proc** %4, align 8
  %39 = getelementptr inbounds %struct.proc, %struct.proc* %38, i32 0, i32 3
  %40 = load i32, i32* @PWAIT, align 4
  %41 = call i32 @msleep(i32* %37, i32* %39, i32 %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %42

42:                                               ; preds = %27
  %43 = load %struct.proc*, %struct.proc** %4, align 8
  %44 = getelementptr inbounds %struct.proc, %struct.proc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %19, label %47

47:                                               ; preds = %42
  ret void
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @CTR3(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
