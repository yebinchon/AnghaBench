; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kqueue_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kqueue_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.kqueue* }
%struct.kqueue = type { %struct.TYPE_2__*, %struct.filedesc* }
%struct.TYPE_2__ = type { i32 }
%struct.filedesc = type { i32 }
%struct.thread = type { i32 }

@kq_list = common dso_local global i32 0, align 4
@M_KQUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.thread*)* @kqueue_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kqueue_close(%struct.file* %0, %struct.thread* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.kqueue*, align 8
  %7 = alloca %struct.filedesc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.kqueue*, %struct.kqueue** %11, align 8
  store %struct.kqueue* %12, %struct.kqueue** %6, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = call i32 @kqueue_acquire(%struct.file* %13, %struct.kqueue** %6)
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %64

18:                                               ; preds = %2
  %19 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %20 = load %struct.thread*, %struct.thread** %5, align 8
  %21 = call i32 @kqueue_drain(%struct.kqueue* %19, %struct.thread* %20)
  %22 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %23 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %22, i32 0, i32 1
  %24 = load %struct.filedesc*, %struct.filedesc** %23, align 8
  store %struct.filedesc* %24, %struct.filedesc** %7, align 8
  %25 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %26 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %25, i32 0, i32 1
  store %struct.filedesc* null, %struct.filedesc** %26, align 8
  %27 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %28 = call i32 @FILEDESC_LOCK(%struct.filedesc* %27)
  %29 = call i32 @sx_xlocked(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %18
  %32 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %33 = call i32 @FILEDESC_XLOCK(%struct.filedesc* %32)
  store i32 1, i32* %9, align 4
  br label %35

34:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %37 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %36, i32 0, i32 0
  %38 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %39 = load i32, i32* @kq_list, align 4
  %40 = call i32 @TAILQ_REMOVE(i32* %37, %struct.kqueue* %38, i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %45 = call i32 @FILEDESC_XUNLOCK(%struct.filedesc* %44)
  br label %46

46:                                               ; preds = %43, %35
  %47 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %48 = call i32 @kqueue_destroy(%struct.kqueue* %47)
  %49 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %50 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @chgkqcnt(i32 %53, i32 -1, i32 0)
  %55 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %56 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = call i32 @crfree(%struct.TYPE_2__* %57)
  %59 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %60 = load i32, i32* @M_KQUEUE, align 4
  %61 = call i32 @free(%struct.kqueue* %59, i32 %60)
  %62 = load %struct.file*, %struct.file** %4, align 8
  %63 = getelementptr inbounds %struct.file, %struct.file* %62, i32 0, i32 0
  store %struct.kqueue* null, %struct.kqueue** %63, align 8
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %46, %16
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @kqueue_acquire(%struct.file*, %struct.kqueue**) #1

declare dso_local i32 @kqueue_drain(%struct.kqueue*, %struct.thread*) #1

declare dso_local i32 @sx_xlocked(i32) #1

declare dso_local i32 @FILEDESC_LOCK(%struct.filedesc*) #1

declare dso_local i32 @FILEDESC_XLOCK(%struct.filedesc*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.kqueue*, i32) #1

declare dso_local i32 @FILEDESC_XUNLOCK(%struct.filedesc*) #1

declare dso_local i32 @kqueue_destroy(%struct.kqueue*) #1

declare dso_local i32 @chgkqcnt(i32, i32, i32) #1

declare dso_local i32 @crfree(%struct.TYPE_2__*) #1

declare dso_local i32 @free(%struct.kqueue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
