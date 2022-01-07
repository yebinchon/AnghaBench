; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_sys_kevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_sys_kevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.kevent_args = type { i32, i32, i32, i32, i32, i32 }
%struct.kevent_copyops = type { i32, i32, i32, %struct.kevent_args* }
%struct.g_kevent_args = type { i32, i32, i32, i32, i32, i32 }

@kevent_copyin = common dso_local global i32 0, align 4
@kevent_copyout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"kevent\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_kevent(%struct.thread* %0, %struct.kevent_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.kevent_args*, align 8
  %5 = alloca %struct.kevent_copyops, align 8
  %6 = alloca %struct.g_kevent_args, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.kevent_args* %1, %struct.kevent_args** %4, align 8
  %7 = getelementptr inbounds %struct.kevent_copyops, %struct.kevent_copyops* %5, i32 0, i32 0
  store i32 4, i32* %7, align 8
  %8 = getelementptr inbounds %struct.kevent_copyops, %struct.kevent_copyops* %5, i32 0, i32 1
  %9 = load i32, i32* @kevent_copyin, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.kevent_copyops, %struct.kevent_copyops* %5, i32 0, i32 2
  %11 = load i32, i32* @kevent_copyout, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.kevent_copyops, %struct.kevent_copyops* %5, i32 0, i32 3
  %13 = load %struct.kevent_args*, %struct.kevent_args** %4, align 8
  store %struct.kevent_args* %13, %struct.kevent_args** %12, align 8
  %14 = getelementptr inbounds %struct.g_kevent_args, %struct.g_kevent_args* %6, i32 0, i32 0
  %15 = load %struct.kevent_args*, %struct.kevent_args** %4, align 8
  %16 = getelementptr inbounds %struct.kevent_args, %struct.kevent_args* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = getelementptr inbounds %struct.g_kevent_args, %struct.g_kevent_args* %6, i32 0, i32 1
  %19 = load %struct.kevent_args*, %struct.kevent_args** %4, align 8
  %20 = getelementptr inbounds %struct.kevent_args, %struct.kevent_args* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 4
  %22 = getelementptr inbounds %struct.g_kevent_args, %struct.g_kevent_args* %6, i32 0, i32 2
  %23 = load %struct.kevent_args*, %struct.kevent_args** %4, align 8
  %24 = getelementptr inbounds %struct.kevent_args, %struct.kevent_args* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %22, align 4
  %26 = getelementptr inbounds %struct.g_kevent_args, %struct.g_kevent_args* %6, i32 0, i32 3
  %27 = load %struct.kevent_args*, %struct.kevent_args** %4, align 8
  %28 = getelementptr inbounds %struct.kevent_args, %struct.kevent_args* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %26, align 4
  %30 = getelementptr inbounds %struct.g_kevent_args, %struct.g_kevent_args* %6, i32 0, i32 4
  %31 = load %struct.kevent_args*, %struct.kevent_args** %4, align 8
  %32 = getelementptr inbounds %struct.kevent_args, %struct.kevent_args* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %30, align 4
  %34 = getelementptr inbounds %struct.g_kevent_args, %struct.g_kevent_args* %6, i32 0, i32 5
  %35 = load %struct.kevent_args*, %struct.kevent_args** %4, align 8
  %36 = getelementptr inbounds %struct.kevent_args, %struct.kevent_args* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %34, align 4
  %38 = load %struct.thread*, %struct.thread** %3, align 8
  %39 = call i32 @kern_kevent_generic(%struct.thread* %38, %struct.g_kevent_args* %6, %struct.kevent_copyops* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  ret i32 %39
}

declare dso_local i32 @kern_kevent_generic(%struct.thread*, %struct.g_kevent_args*, %struct.kevent_copyops*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
