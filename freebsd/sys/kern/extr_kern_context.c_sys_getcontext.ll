; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_context.c_sys_getcontext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_context.c_sys_getcontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32 }
%struct.getcontext_args = type { i32* }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GET_MC_CLEAR_RET = common dso_local global i32 0, align 4
@UC_COPY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_getcontext(%struct.thread* %0, %struct.getcontext_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.getcontext_args*, align 8
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.getcontext_args* %1, %struct.getcontext_args** %4, align 8
  %7 = load %struct.getcontext_args*, %struct.getcontext_args** %4, align 8
  %8 = getelementptr inbounds %struct.getcontext_args, %struct.getcontext_args* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %6, align 4
  br label %36

13:                                               ; preds = %2
  %14 = call i32 @bzero(%struct.TYPE_4__* %5, i32 8)
  %15 = load %struct.thread*, %struct.thread** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %17 = load i32, i32* @GET_MC_CLEAR_RET, align 4
  %18 = call i32 @get_mcontext(%struct.thread* %15, i32* %16, i32 %17)
  %19 = load %struct.thread*, %struct.thread** %3, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @PROC_LOCK(i32 %21)
  %23 = load %struct.thread*, %struct.thread** %3, align 8
  %24 = getelementptr inbounds %struct.thread, %struct.thread* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.thread*, %struct.thread** %3, align 8
  %28 = getelementptr inbounds %struct.thread, %struct.thread* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @PROC_UNLOCK(i32 %29)
  %31 = load %struct.getcontext_args*, %struct.getcontext_args** %4, align 8
  %32 = getelementptr inbounds %struct.getcontext_args, %struct.getcontext_args* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* @UC_COPY_SIZE, align 4
  %35 = call i32 @copyout(%struct.TYPE_4__* %5, i32* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %13, %11
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @bzero(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @get_mcontext(%struct.thread*, i32*, i32) #1

declare dso_local i32 @PROC_LOCK(i32) #1

declare dso_local i32 @PROC_UNLOCK(i32) #1

declare dso_local i32 @copyout(%struct.TYPE_4__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
