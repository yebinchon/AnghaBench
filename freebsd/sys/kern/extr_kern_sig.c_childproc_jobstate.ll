; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_childproc_jobstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_childproc_jobstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { %struct.sigacts*, %struct.proc*, i32 }
%struct.sigacts = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@P_STATCHILD = common dso_local global i32 0, align 4
@PS_NOCLDSTOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proc*, i32, i32)* @childproc_jobstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @childproc_jobstate(%struct.proc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.proc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sigacts*, align 8
  store %struct.proc* %0, %struct.proc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.proc*, %struct.proc** %4, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %8, i32 %9)
  %11 = load %struct.proc*, %struct.proc** %4, align 8
  %12 = getelementptr inbounds %struct.proc, %struct.proc* %11, i32 0, i32 1
  %13 = load %struct.proc*, %struct.proc** %12, align 8
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %13, i32 %14)
  %16 = load i32, i32* @P_STATCHILD, align 4
  %17 = load %struct.proc*, %struct.proc** %4, align 8
  %18 = getelementptr inbounds %struct.proc, %struct.proc* %17, i32 0, i32 1
  %19 = load %struct.proc*, %struct.proc** %18, align 8
  %20 = getelementptr inbounds %struct.proc, %struct.proc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %16
  store i32 %22, i32* %20, align 8
  %23 = load %struct.proc*, %struct.proc** %4, align 8
  %24 = getelementptr inbounds %struct.proc, %struct.proc* %23, i32 0, i32 1
  %25 = load %struct.proc*, %struct.proc** %24, align 8
  %26 = call i32 @wakeup(%struct.proc* %25)
  %27 = load %struct.proc*, %struct.proc** %4, align 8
  %28 = getelementptr inbounds %struct.proc, %struct.proc* %27, i32 0, i32 1
  %29 = load %struct.proc*, %struct.proc** %28, align 8
  %30 = getelementptr inbounds %struct.proc, %struct.proc* %29, i32 0, i32 0
  %31 = load %struct.sigacts*, %struct.sigacts** %30, align 8
  store %struct.sigacts* %31, %struct.sigacts** %7, align 8
  %32 = load %struct.sigacts*, %struct.sigacts** %7, align 8
  %33 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %32, i32 0, i32 1
  %34 = call i32 @mtx_lock(i32* %33)
  %35 = load %struct.sigacts*, %struct.sigacts** %7, align 8
  %36 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PS_NOCLDSTOP, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %3
  %42 = load %struct.sigacts*, %struct.sigacts** %7, align 8
  %43 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %42, i32 0, i32 1
  %44 = call i32 @mtx_unlock(i32* %43)
  %45 = load %struct.proc*, %struct.proc** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @sigparent(%struct.proc* %45, i32 %46, i32 %47)
  br label %53

49:                                               ; preds = %3
  %50 = load %struct.sigacts*, %struct.sigacts** %7, align 8
  %51 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %50, i32 0, i32 1
  %52 = call i32 @mtx_unlock(i32* %51)
  br label %53

53:                                               ; preds = %49, %41
  ret void
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @wakeup(%struct.proc*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @sigparent(%struct.proc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
