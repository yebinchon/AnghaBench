; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqueue_fdclose.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqueue_fdclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.filedesc* }
%struct.filedesc = type { i32 }
%struct.file = type { i32* }
%struct.mqueue = type { i32, i32, i32, i32 }

@mqueueops = common dso_local global i32 0, align 4
@MQ_RSEL = common dso_local global i32 0, align 4
@MQ_WSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, i32, %struct.file*)* @mqueue_fdclose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mqueue_fdclose(%struct.thread* %0, i32 %1, %struct.file* %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.mqueue*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.file* %2, %struct.file** %6, align 8
  %8 = load %struct.file*, %struct.file** %6, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, @mqueueops
  br i1 %11, label %12, label %61

12:                                               ; preds = %3
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = call %struct.mqueue* @FPTOMQ(%struct.file* %13)
  store %struct.mqueue* %14, %struct.mqueue** %7, align 8
  %15 = load %struct.mqueue*, %struct.mqueue** %7, align 8
  %16 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %15, i32 0, i32 1
  %17 = call i32 @mtx_lock(i32* %16)
  %18 = load %struct.thread*, %struct.thread** %4, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load %struct.mqueue*, %struct.mqueue** %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @notifier_remove(%struct.TYPE_2__* %20, %struct.mqueue* %21, i32 %22)
  %24 = load %struct.mqueue*, %struct.mqueue** %7, align 8
  %25 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MQ_RSEL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %12
  %31 = load i32, i32* @MQ_RSEL, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.mqueue*, %struct.mqueue** %7, align 8
  %34 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.mqueue*, %struct.mqueue** %7, align 8
  %38 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %37, i32 0, i32 3
  %39 = call i32 @selwakeup(i32* %38)
  br label %40

40:                                               ; preds = %30, %12
  %41 = load %struct.mqueue*, %struct.mqueue** %7, align 8
  %42 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MQ_WSEL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %40
  %48 = load i32, i32* @MQ_WSEL, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.mqueue*, %struct.mqueue** %7, align 8
  %51 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.mqueue*, %struct.mqueue** %7, align 8
  %55 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %54, i32 0, i32 2
  %56 = call i32 @selwakeup(i32* %55)
  br label %57

57:                                               ; preds = %47, %40
  %58 = load %struct.mqueue*, %struct.mqueue** %7, align 8
  %59 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %58, i32 0, i32 1
  %60 = call i32 @mtx_unlock(i32* %59)
  br label %61

61:                                               ; preds = %57, %3
  ret void
}

declare dso_local %struct.mqueue* @FPTOMQ(%struct.file*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @notifier_remove(%struct.TYPE_2__*, %struct.mqueue*, i32) #1

declare dso_local i32 @selwakeup(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
