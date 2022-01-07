; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_sched_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_sched_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_provider = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.thread = type { i32 }
%struct.g_consumer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.g_geom* }
%struct.g_geom = type { i32 (%struct.TYPE_4__*, i32, i8*, i32, %struct.thread*)* }

@ENOIOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_provider*, i32, i8*, i32, %struct.thread*)* @g_sched_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_sched_ioctl(%struct.g_provider* %0, i32 %1, i8* %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.g_provider*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.g_consumer*, align 8
  %13 = alloca %struct.g_geom*, align 8
  store %struct.g_provider* %0, %struct.g_provider** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %14 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %15 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call %struct.g_consumer* @LIST_FIRST(i32* %17)
  store %struct.g_consumer* %18, %struct.g_consumer** %12, align 8
  %19 = load %struct.g_consumer*, %struct.g_consumer** %12, align 8
  %20 = icmp eq %struct.g_consumer* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOIOCTL, align 4
  store i32 %22, i32* %6, align 4
  br label %47

23:                                               ; preds = %5
  %24 = load %struct.g_consumer*, %struct.g_consumer** %12, align 8
  %25 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.g_geom*, %struct.g_geom** %27, align 8
  store %struct.g_geom* %28, %struct.g_geom** %13, align 8
  %29 = load %struct.g_geom*, %struct.g_geom** %13, align 8
  %30 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_4__*, i32, i8*, i32, %struct.thread*)*, i32 (%struct.TYPE_4__*, i32, i8*, i32, %struct.thread*)** %30, align 8
  %32 = icmp eq i32 (%struct.TYPE_4__*, i32, i8*, i32, %struct.thread*)* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @ENOIOCTL, align 4
  store i32 %34, i32* %6, align 4
  br label %47

35:                                               ; preds = %23
  %36 = load %struct.g_geom*, %struct.g_geom** %13, align 8
  %37 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_4__*, i32, i8*, i32, %struct.thread*)*, i32 (%struct.TYPE_4__*, i32, i8*, i32, %struct.thread*)** %37, align 8
  %39 = load %struct.g_consumer*, %struct.g_consumer** %12, align 8
  %40 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.thread*, %struct.thread** %11, align 8
  %46 = call i32 %38(%struct.TYPE_4__* %41, i32 %42, i8* %43, i32 %44, %struct.thread* %45)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %35, %33, %21
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local %struct.g_consumer* @LIST_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
