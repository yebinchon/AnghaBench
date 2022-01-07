; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bufqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bufqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufqueue = type { i32 }
%struct.buf = type { i32, i64 }
%struct.TYPE_2__ = type { %struct.bufqueue*, %struct.bufqueue }

@bqempty = common dso_local global %struct.bufqueue zeroinitializer, align 4
@.str = private unnamed_addr constant [33 x i8] c"bufqueue(%p): Unhandled type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bufqueue* (%struct.buf*)* @bufqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bufqueue* @bufqueue(%struct.buf* %0) #0 {
  %2 = alloca %struct.bufqueue*, align 8
  %3 = alloca %struct.buf*, align 8
  store %struct.buf* %0, %struct.buf** %3, align 8
  %4 = load %struct.buf*, %struct.buf** %3, align 8
  %5 = getelementptr inbounds %struct.buf, %struct.buf* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %22 [
    i32 129, label %7
    i32 128, label %7
    i32 130, label %8
    i32 131, label %9
    i32 132, label %13
  ]

7:                                                ; preds = %1, %1
  store %struct.bufqueue* null, %struct.bufqueue** %2, align 8
  br label %29

8:                                                ; preds = %1
  store %struct.bufqueue* @bqempty, %struct.bufqueue** %2, align 8
  br label %29

9:                                                ; preds = %1
  %10 = load %struct.buf*, %struct.buf** %3, align 8
  %11 = call %struct.TYPE_2__* @bufdomain(%struct.buf* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store %struct.bufqueue* %12, %struct.bufqueue** %2, align 8
  br label %29

13:                                               ; preds = %1
  %14 = load %struct.buf*, %struct.buf** %3, align 8
  %15 = call %struct.TYPE_2__* @bufdomain(%struct.buf* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.bufqueue*, %struct.bufqueue** %16, align 8
  %18 = load %struct.buf*, %struct.buf** %3, align 8
  %19 = getelementptr inbounds %struct.buf, %struct.buf* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %17, i64 %20
  store %struct.bufqueue* %21, %struct.bufqueue** %2, align 8
  br label %29

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.buf*, %struct.buf** %3, align 8
  %25 = load %struct.buf*, %struct.buf** %3, align 8
  %26 = getelementptr inbounds %struct.buf, %struct.buf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.buf* %24, i32 %27)
  br label %29

29:                                               ; preds = %23, %13, %9, %8, %7
  %30 = load %struct.bufqueue*, %struct.bufqueue** %2, align 8
  ret %struct.bufqueue* %30
}

declare dso_local %struct.TYPE_2__* @bufdomain(%struct.buf*) #1

declare dso_local i32 @panic(i8*, %struct.buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
