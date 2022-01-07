; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_timeout.c_untimeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_timeout.c_untimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32* }
%struct.callout_handle = type { %struct.TYPE_3__* }
%struct.callout_cpu = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @untimeout(i32* %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca %struct.callout_handle, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.callout_cpu*, align 8
  %8 = getelementptr inbounds %struct.callout_handle, %struct.callout_handle* %4, i32 0, i32 0
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  %9 = getelementptr inbounds %struct.callout_handle, %struct.callout_handle* %4, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp eq %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %37

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.callout_handle, %struct.callout_handle* %4, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = call %struct.callout_cpu* @callout_lock(%struct.TYPE_3__* %15)
  store %struct.callout_cpu* %16, %struct.callout_cpu** %7, align 8
  %17 = getelementptr inbounds %struct.callout_handle, %struct.callout_handle* %4, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp eq i32* %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.callout_handle, %struct.callout_handle* %4, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.callout_handle, %struct.callout_handle* %4, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = call i32 @callout_stop(%struct.TYPE_3__* %32)
  br label %34

34:                                               ; preds = %30, %23, %13
  %35 = load %struct.callout_cpu*, %struct.callout_cpu** %7, align 8
  %36 = call i32 @CC_UNLOCK(%struct.callout_cpu* %35)
  br label %37

37:                                               ; preds = %34, %12
  ret void
}

declare dso_local %struct.callout_cpu* @callout_lock(%struct.TYPE_3__*) #1

declare dso_local i32 @callout_stop(%struct.TYPE_3__*) #1

declare dso_local i32 @CC_UNLOCK(%struct.callout_cpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
