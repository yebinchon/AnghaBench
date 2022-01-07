; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_uma_zsecond_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_uma_zsecond_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.uma_zctor_args = type { i8*, i32, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32 }

@UMA_ZONE_SECONDARY = common dso_local global i32 0, align 4
@booted = common dso_local global i64 0, align 8
@BOOT_BUCKETS = common dso_local global i64 0, align 8
@uma_reclaim_lock = common dso_local global i32 0, align 4
@zones = common dso_local global i32 0, align 4
@UMA_ANYDOMAIN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @uma_zsecond_create(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_6__* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.uma_zctor_args, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %12, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %14, align 8
  %20 = call i32 @memset(%struct.uma_zctor_args* %13, i32 0, i32 48)
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds %struct.uma_zctor_args, %struct.uma_zctor_args* %13, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.uma_zctor_args, %struct.uma_zctor_args* %13, i32 0, i32 8
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds %struct.uma_zctor_args, %struct.uma_zctor_args* %13, i32 0, i32 7
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = getelementptr inbounds %struct.uma_zctor_args, %struct.uma_zctor_args* %13, i32 0, i32 6
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %10, align 4
  %32 = getelementptr inbounds %struct.uma_zctor_args, %struct.uma_zctor_args* %13, i32 0, i32 5
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* %11, align 4
  %34 = getelementptr inbounds %struct.uma_zctor_args, %struct.uma_zctor_args* %13, i32 0, i32 4
  store i32 %33, i32* %34, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.uma_zctor_args, %struct.uma_zctor_args* %13, i32 0, i32 3
  store i32 %37, i32* %38, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @UMA_ZONE_SECONDARY, align 4
  %43 = or i32 %41, %42
  %44 = getelementptr inbounds %struct.uma_zctor_args, %struct.uma_zctor_args* %13, i32 0, i32 1
  store i32 %43, i32* %44, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %46 = getelementptr inbounds %struct.uma_zctor_args, %struct.uma_zctor_args* %13, i32 0, i32 2
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %46, align 8
  %47 = load i64, i64* @booted, align 8
  %48 = load i64, i64* @BOOT_BUCKETS, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  br label %53

51:                                               ; preds = %6
  %52 = call i32 @sx_slock(i32* @uma_reclaim_lock)
  store i32 1, i32* %16, align 4
  br label %53

53:                                               ; preds = %51, %50
  %54 = load i32, i32* @zones, align 4
  %55 = load i32, i32* @UMA_ANYDOMAIN, align 4
  %56 = load i32, i32* @M_WAITOK, align 4
  %57 = call %struct.TYPE_6__* @zone_alloc_item(i32 %54, %struct.uma_zctor_args* %13, i32 %55, i32 %56)
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %15, align 8
  %58 = load i32, i32* %16, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = call i32 @sx_sunlock(i32* @uma_reclaim_lock)
  br label %62

62:                                               ; preds = %60, %53
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  ret %struct.TYPE_6__* %63
}

declare dso_local i32 @memset(%struct.uma_zctor_args*, i32, i32) #1

declare dso_local i32 @sx_slock(i32*) #1

declare dso_local %struct.TYPE_6__* @zone_alloc_item(i32, %struct.uma_zctor_args*, i32, i32) #1

declare dso_local i32 @sx_sunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
