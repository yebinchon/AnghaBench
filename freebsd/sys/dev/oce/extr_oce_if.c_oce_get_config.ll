; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_get_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i8*, i64, i32 }

@OCE_LEGACY_MODE_RSS = common dso_local global i8* null, align 8
@OCE_MAX_RSS = common dso_local global i8* null, align 8
@OCE_MAX_WQ = common dso_local global i8* null, align 8
@MAX_VLANFILTER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @oce_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oce_get_config(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i32 0, i32* %3, align 4
  store i8* null, i8** %4, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = call i64 @IS_BE(%struct.TYPE_6__* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = call i64 @IS_SH(%struct.TYPE_6__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8, %1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = load i8*, i8** @OCE_LEGACY_MODE_RSS, align 8
  store i8* %18, i8** %4, align 8
  br label %21

19:                                               ; preds = %12, %8
  %20 = load i8*, i8** @OCE_MAX_RSS, align 8
  store i8* %20, i8** %4, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = call i64 @IS_BE(%struct.TYPE_6__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %46, label %25

25:                                               ; preds = %21
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @oce_get_profile_config(%struct.TYPE_6__* %26, i8* %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %25
  %32 = load i8*, i8** @OCE_MAX_WQ, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr i8, i8* %40, i64 1
  %42 = ptrtoint i8* %41 to i64
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %31, %25
  br label %63

46:                                               ; preds = %21
  %47 = load i8*, i8** %4, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr i8, i8* %52, i64 1
  %54 = ptrtoint i8* %53 to i64
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  store i64 %54, i64* %56, align 8
  %57 = load i8*, i8** @OCE_MAX_WQ, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* @MAX_VLANFILTER_SIZE, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %46, %45
  ret void
}

declare dso_local i64 @IS_BE(%struct.TYPE_6__*) #1

declare dso_local i64 @IS_SH(%struct.TYPE_6__*) #1

declare dso_local i32 @oce_get_profile_config(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
