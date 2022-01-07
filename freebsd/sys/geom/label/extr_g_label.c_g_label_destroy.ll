; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/label/extr_g_label.c_g_label_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/label/extr_g_label.c_g_label_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { i32, i32 }
%struct.g_provider = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [62 x i8] c"Provider %s is still open, so it can't be definitely removed.\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Provider %s is still open (r%dw%de%d).\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Label %s removed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_geom*, i64)* @g_label_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_label_destroy(%struct.g_geom* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_geom*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.g_provider*, align 8
  store %struct.g_geom* %0, %struct.g_geom** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = call i32 (...) @g_topology_assert()
  %8 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %9 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %8, i32 0, i32 1
  %10 = call %struct.g_provider* @LIST_FIRST(i32* %9)
  store %struct.g_provider* %10, %struct.g_provider** %6, align 8
  %11 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %12 = icmp ne %struct.g_provider* %11, null
  br i1 %12, label %13, label %52

13:                                               ; preds = %2
  %14 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %15 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %20 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %25 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %23, %18, %13
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %33 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32, i8*, i32, ...) @G_LABEL_DEBUG(i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %51

36:                                               ; preds = %28
  %37 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %38 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %41 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %44 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %47 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (i32, i8*, i32, ...) @G_LABEL_DEBUG(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %39, i64 %42, i64 %45, i64 %48)
  %50 = load i32, i32* @EBUSY, align 4
  store i32 %50, i32* %3, align 4
  br label %66

51:                                               ; preds = %31
  br label %61

52:                                               ; preds = %23, %2
  %53 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %54 = icmp ne %struct.g_provider* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %57 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i32, i8*, i32, ...) @G_LABEL_DEBUG(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %55, %52
  br label %61

61:                                               ; preds = %60, %51
  %62 = load %struct.g_geom*, %struct.g_geom** %4, align 8
  %63 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %62, i32 0, i32 0
  %64 = call %struct.g_provider* @LIST_FIRST(i32* %63)
  %65 = call i32 @g_slice_spoiled(%struct.g_provider* %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %61, %36
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local %struct.g_provider* @LIST_FIRST(i32*) #1

declare dso_local i32 @G_LABEL_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @g_slice_spoiled(%struct.g_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
