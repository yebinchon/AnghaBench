; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_subr.c_g_retaste.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_subr.c_g_retaste.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_class = type { i32* }
%struct.g_hh00 = type { i32, i32, %struct.g_class* }

@EINVAL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@cold = common dso_local global i64 0, align 8
@g_retaste_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_retaste(%struct.g_class* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.g_class*, align 8
  %4 = alloca %struct.g_hh00*, align 8
  %5 = alloca i32, align 4
  store %struct.g_class* %0, %struct.g_class** %3, align 8
  %6 = load %struct.g_class*, %struct.g_class** %3, align 8
  %7 = getelementptr inbounds %struct.g_class, %struct.g_class* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  store i32 %11, i32* %2, align 4
  br label %45

12:                                               ; preds = %1
  %13 = load i32, i32* @M_WAITOK, align 4
  %14 = load i32, i32* @M_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = call %struct.g_hh00* @g_malloc(i32 16, i32 %15)
  store %struct.g_hh00* %16, %struct.g_hh00** %4, align 8
  %17 = load %struct.g_class*, %struct.g_class** %3, align 8
  %18 = load %struct.g_hh00*, %struct.g_hh00** %4, align 8
  %19 = getelementptr inbounds %struct.g_hh00, %struct.g_hh00* %18, i32 0, i32 2
  store %struct.g_class* %17, %struct.g_class** %19, align 8
  %20 = load i64, i64* @cold, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %12
  %23 = load %struct.g_hh00*, %struct.g_hh00** %4, align 8
  %24 = getelementptr inbounds %struct.g_hh00, %struct.g_hh00* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load i32, i32* @g_retaste_event, align 4
  %26 = load %struct.g_hh00*, %struct.g_hh00** %4, align 8
  %27 = load i32, i32* @M_WAITOK, align 4
  %28 = call i32 @g_post_event(i32 %25, %struct.g_hh00* %26, i32 %27, i32* null)
  store i32 %28, i32* %5, align 4
  br label %43

29:                                               ; preds = %12
  %30 = load i32, i32* @g_retaste_event, align 4
  %31 = load %struct.g_hh00*, %struct.g_hh00** %4, align 8
  %32 = load i32, i32* @M_WAITOK, align 4
  %33 = call i32 @g_waitfor_event(i32 %30, %struct.g_hh00* %31, i32 %32, i32* null)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.g_hh00*, %struct.g_hh00** %4, align 8
  %38 = getelementptr inbounds %struct.g_hh00, %struct.g_hh00* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %29
  %41 = load %struct.g_hh00*, %struct.g_hh00** %4, align 8
  %42 = call i32 @g_free(%struct.g_hh00* %41)
  br label %43

43:                                               ; preds = %40, %22
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %10
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.g_hh00* @g_malloc(i32, i32) #1

declare dso_local i32 @g_post_event(i32, %struct.g_hh00*, i32, i32*) #1

declare dso_local i32 @g_waitfor_event(i32, %struct.g_hh00*, i32, i32*) #1

declare dso_local i32 @g_free(%struct.g_hh00*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
