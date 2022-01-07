; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_subr.c_g_std_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_subr.c_g_std_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i64, i64, i64, %struct.bio* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_std_done(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.bio*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = getelementptr inbounds %struct.bio, %struct.bio* %4, i32 0, i32 4
  %6 = load %struct.bio*, %struct.bio** %5, align 8
  store %struct.bio* %6, %struct.bio** %3, align 8
  %7 = load %struct.bio*, %struct.bio** %3, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.bio*, %struct.bio** %2, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.bio*, %struct.bio** %3, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.bio*, %struct.bio** %2, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.bio*, %struct.bio** %3, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, %20
  store i64 %24, i64* %22, align 8
  %25 = load %struct.bio*, %struct.bio** %2, align 8
  %26 = call i32 @g_destroy_bio(%struct.bio* %25)
  %27 = load %struct.bio*, %struct.bio** %3, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  %31 = load %struct.bio*, %struct.bio** %3, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.bio*, %struct.bio** %3, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %17
  %39 = load %struct.bio*, %struct.bio** %3, align 8
  %40 = load %struct.bio*, %struct.bio** %3, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @g_io_deliver(%struct.bio* %39, i64 %42)
  br label %44

44:                                               ; preds = %38, %17
  ret void
}

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
