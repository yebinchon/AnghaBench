; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_timeout.c_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_timeout.c_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.callout = type { i32 }
%struct.callout_handle = type { %struct.callout* }
%struct.callout_cpu = type { i32 }

@timeout_cpu = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"timeout table full\00", align 1
@c_links = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.callout* @timeout(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.callout_handle, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.callout_cpu*, align 8
  %9 = alloca %struct.callout*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @timeout_cpu, align 4
  %11 = call %struct.callout_cpu* @CC_CPU(i32 %10)
  store %struct.callout_cpu* %11, %struct.callout_cpu** %8, align 8
  %12 = load %struct.callout_cpu*, %struct.callout_cpu** %8, align 8
  %13 = call i32 @CC_LOCK(%struct.callout_cpu* %12)
  %14 = load %struct.callout_cpu*, %struct.callout_cpu** %8, align 8
  %15 = getelementptr inbounds %struct.callout_cpu, %struct.callout_cpu* %14, i32 0, i32 0
  %16 = call %struct.callout* @SLIST_FIRST(i32* %15)
  store %struct.callout* %16, %struct.callout** %9, align 8
  %17 = load %struct.callout*, %struct.callout** %9, align 8
  %18 = icmp eq %struct.callout* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %3
  %22 = load %struct.callout_cpu*, %struct.callout_cpu** %8, align 8
  %23 = getelementptr inbounds %struct.callout_cpu, %struct.callout_cpu* %22, i32 0, i32 0
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @c_links, i32 0, i32 0), align 4
  %25 = call i32 @SLIST_REMOVE_HEAD(i32* %23, i32 %24)
  %26 = load %struct.callout*, %struct.callout** %9, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @callout_reset(%struct.callout* %26, i32 %27, i32* %28, i8* %29)
  %31 = load %struct.callout*, %struct.callout** %9, align 8
  %32 = getelementptr inbounds %struct.callout_handle, %struct.callout_handle* %4, i32 0, i32 0
  store %struct.callout* %31, %struct.callout** %32, align 8
  %33 = load %struct.callout_cpu*, %struct.callout_cpu** %8, align 8
  %34 = call i32 @CC_UNLOCK(%struct.callout_cpu* %33)
  %35 = getelementptr inbounds %struct.callout_handle, %struct.callout_handle* %4, i32 0, i32 0
  %36 = load %struct.callout*, %struct.callout** %35, align 8
  ret %struct.callout* %36
}

declare dso_local %struct.callout_cpu* @CC_CPU(i32) #1

declare dso_local i32 @CC_LOCK(%struct.callout_cpu*) #1

declare dso_local %struct.callout* @SLIST_FIRST(i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @callout_reset(%struct.callout*, i32, i32*, i8*) #1

declare dso_local i32 @CC_UNLOCK(%struct.callout_cpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
