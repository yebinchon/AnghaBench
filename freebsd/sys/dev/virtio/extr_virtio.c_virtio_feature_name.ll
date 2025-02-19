; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/extr_virtio.c_virtio_feature_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/extr_virtio.c_virtio_feature_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_feature_desc = type { i64, i8* }

@virtio_common_feature_desc = common dso_local global %struct.virtio_feature_desc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, %struct.virtio_feature_desc*)* @virtio_feature_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @virtio_feature_name(i64 %0, %struct.virtio_feature_desc* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.virtio_feature_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x %struct.virtio_feature_desc*], align 16
  store i64 %0, i64* %4, align 8
  store %struct.virtio_feature_desc* %1, %struct.virtio_feature_desc** %5, align 8
  %9 = getelementptr inbounds [2 x %struct.virtio_feature_desc*], [2 x %struct.virtio_feature_desc*]* %8, i64 0, i64 0
  %10 = load %struct.virtio_feature_desc*, %struct.virtio_feature_desc** %5, align 8
  store %struct.virtio_feature_desc* %10, %struct.virtio_feature_desc** %9, align 8
  %11 = getelementptr inbounds %struct.virtio_feature_desc*, %struct.virtio_feature_desc** %9, i64 1
  %12 = load %struct.virtio_feature_desc*, %struct.virtio_feature_desc** @virtio_common_feature_desc, align 8
  store %struct.virtio_feature_desc* %12, %struct.virtio_feature_desc** %11, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %62, %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %65

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [2 x %struct.virtio_feature_desc*], [2 x %struct.virtio_feature_desc*]* %8, i64 0, i64 %18
  %20 = load %struct.virtio_feature_desc*, %struct.virtio_feature_desc** %19, align 8
  %21 = icmp eq %struct.virtio_feature_desc* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %62

23:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %58, %23
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [2 x %struct.virtio_feature_desc*], [2 x %struct.virtio_feature_desc*]* %8, i64 0, i64 %26
  %28 = load %struct.virtio_feature_desc*, %struct.virtio_feature_desc** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.virtio_feature_desc, %struct.virtio_feature_desc* %28, i64 %30
  %32 = getelementptr inbounds %struct.virtio_feature_desc, %struct.virtio_feature_desc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %24
  %36 = load i64, i64* %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [2 x %struct.virtio_feature_desc*], [2 x %struct.virtio_feature_desc*]* %8, i64 0, i64 %38
  %40 = load %struct.virtio_feature_desc*, %struct.virtio_feature_desc** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.virtio_feature_desc, %struct.virtio_feature_desc* %40, i64 %42
  %44 = getelementptr inbounds %struct.virtio_feature_desc, %struct.virtio_feature_desc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %36, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %35
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [2 x %struct.virtio_feature_desc*], [2 x %struct.virtio_feature_desc*]* %8, i64 0, i64 %49
  %51 = load %struct.virtio_feature_desc*, %struct.virtio_feature_desc** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.virtio_feature_desc, %struct.virtio_feature_desc* %51, i64 %53
  %55 = getelementptr inbounds %struct.virtio_feature_desc, %struct.virtio_feature_desc* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %3, align 8
  br label %66

57:                                               ; preds = %35
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %24

61:                                               ; preds = %24
  br label %62

62:                                               ; preds = %61, %22
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %13

65:                                               ; preds = %13
  store i8* null, i8** %3, align 8
  br label %66

66:                                               ; preds = %65, %47
  %67 = load i8*, i8** %3, align 8
  ret i8* %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
