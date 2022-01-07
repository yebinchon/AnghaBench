; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptnr/extr_hptnr_osm_bsd.c_hpt_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptnr/extr_hptnr_osm_bsd.c_hpt_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_7__*, i32, i32)*, i64 (i32, %struct.TYPE_7__*)*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i64, i64 }

@him_list = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32, i32)* @hpt_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @hpt_match(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @him_list, align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %7, align 8
  br label %10

10:                                               ; preds = %53, %2
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %57

13:                                               ; preds = %10
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %49, %13
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i64 (i32, %struct.TYPE_7__*)*, i64 (i32, %struct.TYPE_7__*)** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i64 %17(i32 %18, %struct.TYPE_7__* %6)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_7__*, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32)** %26, align 8
  %28 = icmp ne i32 (%struct.TYPE_7__*, i32, i32)* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_7__*, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32)** %31, align 8
  %33 = call i32 %32(%struct.TYPE_7__* %6, i32 0, i32 0)
  br label %34

34:                                               ; preds = %29, %24, %21
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @pci_get_vendor(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @pci_get_device(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %3, align 8
  br label %58

48:                                               ; preds = %40, %34
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %14

52:                                               ; preds = %14
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %7, align 8
  br label %10

57:                                               ; preds = %10
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %58

58:                                               ; preds = %57, %46
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %59
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
