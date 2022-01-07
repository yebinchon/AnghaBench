; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sigparent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sigparent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { %struct.TYPE_5__*, %struct.proc*, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proc*, i32, i32)* @sigparent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sigparent(%struct.proc* %0, i32 %1, i32 %2) #0 {
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
  %11 = getelementptr inbounds %struct.proc, %struct.proc* %10, i32 0, i32 1
  %12 = load %struct.proc*, %struct.proc** %11, align 8
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %12, i32 %13)
  %15 = load %struct.proc*, %struct.proc** %4, align 8
  %16 = getelementptr inbounds %struct.proc, %struct.proc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %58

19:                                               ; preds = %3
  %20 = load i32, i32* @SIGCHLD, align 4
  %21 = load %struct.proc*, %struct.proc** %4, align 8
  %22 = getelementptr inbounds %struct.proc, %struct.proc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 4
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.proc*, %struct.proc** %4, align 8
  %27 = getelementptr inbounds %struct.proc, %struct.proc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.proc*, %struct.proc** %4, align 8
  %32 = getelementptr inbounds %struct.proc, %struct.proc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32 %30, i32* %34, align 4
  %35 = load %struct.proc*, %struct.proc** %4, align 8
  %36 = getelementptr inbounds %struct.proc, %struct.proc* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.proc*, %struct.proc** %4, align 8
  %39 = getelementptr inbounds %struct.proc, %struct.proc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  store i32 %37, i32* %41, align 4
  %42 = load %struct.proc*, %struct.proc** %4, align 8
  %43 = getelementptr inbounds %struct.proc, %struct.proc* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.proc*, %struct.proc** %4, align 8
  %48 = getelementptr inbounds %struct.proc, %struct.proc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store i32 %46, i32* %50, align 4
  %51 = load %struct.proc*, %struct.proc** %4, align 8
  %52 = getelementptr inbounds %struct.proc, %struct.proc* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = call i64 @KSI_ONQ(%struct.TYPE_5__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %19
  br label %67

57:                                               ; preds = %19
  br label %58

58:                                               ; preds = %57, %3
  %59 = load %struct.proc*, %struct.proc** %4, align 8
  %60 = getelementptr inbounds %struct.proc, %struct.proc* %59, i32 0, i32 1
  %61 = load %struct.proc*, %struct.proc** %60, align 8
  %62 = load i32, i32* @SIGCHLD, align 4
  %63 = load %struct.proc*, %struct.proc** %4, align 8
  %64 = getelementptr inbounds %struct.proc, %struct.proc* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = call i32 @pksignal(%struct.proc* %61, i32 %62, %struct.TYPE_5__* %65)
  br label %67

67:                                               ; preds = %58, %56
  ret void
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i64 @KSI_ONQ(%struct.TYPE_5__*) #1

declare dso_local i32 @pksignal(%struct.proc*, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
