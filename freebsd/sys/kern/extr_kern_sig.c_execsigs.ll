; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_execsigs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_execsigs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.TYPE_2__, %struct.proc* }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.proc = type { %struct.sigacts* }
%struct.sigacts = type { i32, i64*, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@SV_ABI_CLOUDABI = common dso_local global i64 0, align 8
@SIGPIPE = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@SS_DISABLE = common dso_local global i32 0, align 4
@TDP_ALTSTACK = common dso_local global i32 0, align 4
@PS_NOCLDWAIT = common dso_local global i32 0, align 4
@PS_CLDSIGIGN = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i64 0, align 8
@SIG_DFL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @execsigs(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sigacts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  store %struct.proc* %0, %struct.proc** %2, align 8
  %7 = load %struct.proc*, %struct.proc** %2, align 8
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %7, i32 %8)
  %10 = load %struct.proc*, %struct.proc** %2, align 8
  %11 = getelementptr inbounds %struct.proc, %struct.proc* %10, i32 0, i32 0
  %12 = load %struct.sigacts*, %struct.sigacts** %11, align 8
  store %struct.sigacts* %12, %struct.sigacts** %4, align 8
  %13 = load %struct.sigacts*, %struct.sigacts** %4, align 8
  %14 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %13, i32 0, i32 2
  %15 = call i32 @mtx_lock(i32* %14)
  %16 = load %struct.proc*, %struct.proc** %2, align 8
  %17 = call i32 @sig_drop_caught(%struct.proc* %16)
  %18 = load %struct.proc*, %struct.proc** %2, align 8
  %19 = call i64 @SV_PROC_ABI(%struct.proc* %18)
  %20 = load i64, i64* @SV_ABI_CLOUDABI, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %1
  %23 = load %struct.sigacts*, %struct.sigacts** %4, align 8
  %24 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %42, %22
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @SIGNOTEMPTY(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = call i32 @sig_ffs(i32* %3)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @SIGDELSET(i32 %32, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SIGPIPE, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load %struct.sigacts*, %struct.sigacts** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @sigdflt(%struct.sigacts* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %30
  br label %26

43:                                               ; preds = %26
  %44 = load %struct.sigacts*, %struct.sigacts** %4, align 8
  %45 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SIGPIPE, align 4
  %48 = call i32 @SIGADDSET(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %1
  %50 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %50, %struct.thread** %6, align 8
  %51 = load %struct.thread*, %struct.thread** %6, align 8
  %52 = getelementptr inbounds %struct.thread, %struct.thread* %51, i32 0, i32 2
  %53 = load %struct.proc*, %struct.proc** %52, align 8
  %54 = load %struct.proc*, %struct.proc** %2, align 8
  %55 = icmp eq %struct.proc* %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @MPASS(i32 %56)
  %58 = load i32, i32* @SS_DISABLE, align 4
  %59 = load %struct.thread*, %struct.thread** %6, align 8
  %60 = getelementptr inbounds %struct.thread, %struct.thread* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  store i32 %58, i32* %61, align 8
  %62 = load %struct.thread*, %struct.thread** %6, align 8
  %63 = getelementptr inbounds %struct.thread, %struct.thread* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load %struct.thread*, %struct.thread** %6, align 8
  %66 = getelementptr inbounds %struct.thread, %struct.thread* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* @TDP_ALTSTACK, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.thread*, %struct.thread** %6, align 8
  %71 = getelementptr inbounds %struct.thread, %struct.thread* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load i32, i32* @PS_NOCLDWAIT, align 4
  %75 = load i32, i32* @PS_CLDSIGIGN, align 4
  %76 = or i32 %74, %75
  %77 = xor i32 %76, -1
  %78 = load %struct.sigacts*, %struct.sigacts** %4, align 8
  %79 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.sigacts*, %struct.sigacts** %4, align 8
  %83 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* @SIGCHLD, align 4
  %86 = call i64 @_SIG_IDX(i32 %85)
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SIG_IGN, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %49
  %92 = load i64, i64* @SIG_DFL, align 8
  %93 = load %struct.sigacts*, %struct.sigacts** %4, align 8
  %94 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %93, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* @SIGCHLD, align 4
  %97 = call i64 @_SIG_IDX(i32 %96)
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  store i64 %92, i64* %98, align 8
  br label %99

99:                                               ; preds = %91, %49
  %100 = load %struct.sigacts*, %struct.sigacts** %4, align 8
  %101 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %100, i32 0, i32 2
  %102 = call i32 @mtx_unlock(i32* %101)
  ret void
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @sig_drop_caught(%struct.proc*) #1

declare dso_local i64 @SV_PROC_ABI(%struct.proc*) #1

declare dso_local i64 @SIGNOTEMPTY(i32) #1

declare dso_local i32 @sig_ffs(i32*) #1

declare dso_local i32 @SIGDELSET(i32, i32) #1

declare dso_local i32 @sigdflt(%struct.sigacts*, i32) #1

declare dso_local i32 @SIGADDSET(i32, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @_SIG_IDX(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
