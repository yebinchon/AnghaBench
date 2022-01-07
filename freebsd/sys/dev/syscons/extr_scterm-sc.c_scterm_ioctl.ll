; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scterm-sc.c_scterm_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scterm-sc.c_scterm_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.tty = type { i32 }
%struct.thread = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOIOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.tty*, i32, i64, %struct.thread*)* @scterm_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scterm_ioctl(%struct.TYPE_15__* %0, %struct.tty* %1, i32 %2, i64 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.tty*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store %struct.tty* %1, %struct.tty** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.thread* %4, %struct.thread** %11, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %12, align 8
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %66 [
    i32 128, label %18
    i32 129, label %26
  ]

18:                                               ; preds = %5
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 8
  %23 = and i32 %22, 255
  %24 = load i64, i64* %10, align 8
  %25 = inttoptr i64 %24 to i32*
  store i32 %23, i32* %25, align 4
  store i32 0, i32* %6, align 4
  br label %68

26:                                               ; preds = %5
  %27 = load i64, i64* %10, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %13, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 4
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %6, align 4
  br label %68

36:                                               ; preds = %26
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @ENOIOCTL, align 4
  store i32 %65, i32* %6, align 4
  br label %68

66:                                               ; preds = %5
  %67 = load i32, i32* @ENOIOCTL, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %66, %36, %34, %18
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
