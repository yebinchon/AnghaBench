; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kern_kevent_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kern_kevent_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }
%struct.g_kevent_args = type { i32, i32, i32, %struct.kevent*, i32*, %struct.kevent* }
%struct.kevent = type { i32 }
%struct.kevent_copyops = type { i32 }
%struct.timespec = type { i32 }

@KTR_STRUCT_ARRAY = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.g_kevent_args*, %struct.kevent_copyops*, i8*)* @kern_kevent_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kern_kevent_generic(%struct.thread* %0, %struct.g_kevent_args* %1, %struct.kevent_copyops* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.g_kevent_args*, align 8
  %8 = alloca %struct.kevent_copyops*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.timespec, align 4
  %11 = alloca %struct.timespec*, align 8
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store %struct.g_kevent_args* %1, %struct.g_kevent_args** %7, align 8
  store %struct.kevent_copyops* %2, %struct.kevent_copyops** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.g_kevent_args*, %struct.g_kevent_args** %7, align 8
  %14 = getelementptr inbounds %struct.g_kevent_args, %struct.g_kevent_args* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = load %struct.g_kevent_args*, %struct.g_kevent_args** %7, align 8
  %19 = getelementptr inbounds %struct.g_kevent_args, %struct.g_kevent_args* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @copyin(i32* %20, %struct.timespec* %10, i32 4)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %5, align 4
  br label %43

26:                                               ; preds = %17
  store %struct.timespec* %10, %struct.timespec** %11, align 8
  br label %28

27:                                               ; preds = %4
  store %struct.timespec* null, %struct.timespec** %11, align 8
  br label %28

28:                                               ; preds = %27, %26
  %29 = load %struct.thread*, %struct.thread** %6, align 8
  %30 = load %struct.g_kevent_args*, %struct.g_kevent_args** %7, align 8
  %31 = getelementptr inbounds %struct.g_kevent_args, %struct.g_kevent_args* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.g_kevent_args*, %struct.g_kevent_args** %7, align 8
  %34 = getelementptr inbounds %struct.g_kevent_args, %struct.g_kevent_args* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.g_kevent_args*, %struct.g_kevent_args** %7, align 8
  %37 = getelementptr inbounds %struct.g_kevent_args, %struct.g_kevent_args* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.kevent_copyops*, %struct.kevent_copyops** %8, align 8
  %40 = load %struct.timespec*, %struct.timespec** %11, align 8
  %41 = call i32 @kern_kevent(%struct.thread* %29, i32 %32, i32 %35, i32 %38, %struct.kevent_copyops* %39, %struct.timespec* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %28, %24
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @copyin(i32*, %struct.timespec*, i32) #1

declare dso_local i32 @kern_kevent(%struct.thread*, i32, i32, i32, %struct.kevent_copyops*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
