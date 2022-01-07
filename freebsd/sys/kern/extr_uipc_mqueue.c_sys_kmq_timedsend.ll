; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_sys_kmq_timedsend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_sys_kmq_timedsend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.kmq_timedsend_args = type { i32, i32, i32, i32*, i32 }
%struct.mqueue = type { i32 }
%struct.file = type { i32 }
%struct.timespec = type { i32 }

@O_NONBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_kmq_timedsend(%struct.thread* %0, %struct.kmq_timedsend_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.kmq_timedsend_args*, align 8
  %6 = alloca %struct.mqueue*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.timespec*, align 8
  %9 = alloca %struct.timespec, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.kmq_timedsend_args* %1, %struct.kmq_timedsend_args** %5, align 8
  %12 = load %struct.kmq_timedsend_args*, %struct.kmq_timedsend_args** %5, align 8
  %13 = getelementptr inbounds %struct.kmq_timedsend_args, %struct.kmq_timedsend_args* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @AUDIT_ARG_FD(i32 %14)
  %16 = load %struct.thread*, %struct.thread** %4, align 8
  %17 = load %struct.kmq_timedsend_args*, %struct.kmq_timedsend_args** %5, align 8
  %18 = getelementptr inbounds %struct.kmq_timedsend_args, %struct.kmq_timedsend_args* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @getmq_write(%struct.thread* %16, i32 %19, %struct.file** %7, i32* null, %struct.mqueue** %6)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %3, align 4
  br label %67

25:                                               ; preds = %2
  %26 = load %struct.kmq_timedsend_args*, %struct.kmq_timedsend_args** %5, align 8
  %27 = getelementptr inbounds %struct.kmq_timedsend_args, %struct.kmq_timedsend_args* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.kmq_timedsend_args*, %struct.kmq_timedsend_args** %5, align 8
  %32 = getelementptr inbounds %struct.kmq_timedsend_args, %struct.kmq_timedsend_args* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @copyin(i32* %33, %struct.timespec* %9, i32 4)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %62

38:                                               ; preds = %30
  store %struct.timespec* %9, %struct.timespec** %8, align 8
  br label %40

39:                                               ; preds = %25
  store %struct.timespec* null, %struct.timespec** %8, align 8
  br label %40

40:                                               ; preds = %39, %38
  %41 = load %struct.file*, %struct.file** %7, align 8
  %42 = getelementptr inbounds %struct.file, %struct.file* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @O_NONBLOCK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %11, align 4
  %49 = load %struct.mqueue*, %struct.mqueue** %6, align 8
  %50 = load %struct.kmq_timedsend_args*, %struct.kmq_timedsend_args** %5, align 8
  %51 = getelementptr inbounds %struct.kmq_timedsend_args, %struct.kmq_timedsend_args* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.kmq_timedsend_args*, %struct.kmq_timedsend_args** %5, align 8
  %54 = getelementptr inbounds %struct.kmq_timedsend_args, %struct.kmq_timedsend_args* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.kmq_timedsend_args*, %struct.kmq_timedsend_args** %5, align 8
  %57 = getelementptr inbounds %struct.kmq_timedsend_args, %struct.kmq_timedsend_args* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.timespec*, %struct.timespec** %8, align 8
  %61 = call i32 @mqueue_send(%struct.mqueue* %49, i32 %52, i32 %55, i32 %58, i32 %59, %struct.timespec* %60)
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %40, %37
  %63 = load %struct.file*, %struct.file** %7, align 8
  %64 = load %struct.thread*, %struct.thread** %4, align 8
  %65 = call i32 @fdrop(%struct.file* %63, %struct.thread* %64)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %62, %23
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @getmq_write(%struct.thread*, i32, %struct.file**, i32*, %struct.mqueue**) #1

declare dso_local i32 @copyin(i32*, %struct.timespec*, i32) #1

declare dso_local i32 @mqueue_send(%struct.mqueue*, i32, i32, i32, i32, %struct.timespec*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
