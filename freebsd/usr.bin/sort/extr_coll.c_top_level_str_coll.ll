; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_top_level_str_coll.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_top_level_str_coll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.bwstring = type { i32 }

@default_sort_mods = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @top_level_str_coll(%struct.bwstring* %0, %struct.bwstring* %1) #0 {
  %3 = alloca %struct.bwstring*, align 8
  %4 = alloca %struct.bwstring*, align 8
  %5 = alloca %struct.bwstring*, align 8
  store %struct.bwstring* %0, %struct.bwstring** %3, align 8
  store %struct.bwstring* %1, %struct.bwstring** %4, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @default_sort_mods, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  store %struct.bwstring* %11, %struct.bwstring** %5, align 8
  %12 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  store %struct.bwstring* %12, %struct.bwstring** %3, align 8
  %13 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  store %struct.bwstring* %13, %struct.bwstring** %4, align 8
  br label %14

14:                                               ; preds = %10, %2
  %15 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %16 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %17 = call i32 @bwscoll(%struct.bwstring* %15, %struct.bwstring* %16, i32 0)
  ret i32 %17
}

declare dso_local i32 @bwscoll(%struct.bwstring*, %struct.bwstring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
