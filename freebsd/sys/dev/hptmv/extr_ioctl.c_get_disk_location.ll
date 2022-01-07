; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptmv/extr_ioctl.c_get_disk_location.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptmv/extr_ioctl.c_get_disk_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@gIal_Adapter = common dso_local global %struct.TYPE_7__* null, align 8
@MV_SATA_CHANNELS_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @get_disk_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_disk_location(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 1, i32* %8, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @gIal_Adapter, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %7, align 8
  br label %13

13:                                               ; preds = %42, %3
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %48

16:                                               ; preds = %13
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %38, %16
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @MV_SATA_CHANNELS_NUM, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = icmp eq i32* %22, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load i32, i32* %8, align 4
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32*, i32** %6, align 8
  store i32 %35, i32* %36, align 4
  br label %48

37:                                               ; preds = %21
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %17

41:                                               ; preds = %17
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %13

48:                                               ; preds = %32, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
