; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mptable.c_mptable_count_items.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mptable.c_mptable_count_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@mpfps = common dso_local global %struct.TYPE_2__* null, align 8
@mptable_nioapics = common dso_local global i32 0, align 4
@mptable_nbusses = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Unknown pre-defined MP Table config type %d\00", align 1
@mptable_maxbusid = common dso_local global i32 0, align 4
@mptable_count_items_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mptable_count_items to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptable_count_items() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mpfps, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %0
  store i32 1, i32* @mptable_nioapics, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mpfps, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %11 [
    i32 1, label %9
    i32 2, label %9
    i32 3, label %9
    i32 4, label %9
    i32 5, label %10
    i32 6, label %10
    i32 7, label %10
  ]

9:                                                ; preds = %5, %5, %5, %5
  store i32 1, i32* @mptable_nbusses, align 4
  br label %16

10:                                               ; preds = %5, %5, %5
  store i32 2, i32* @mptable_nbusses, align 4
  br label %16

11:                                               ; preds = %5
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mpfps, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %11, %10, %9
  %17 = load i32, i32* @mptable_nbusses, align 4
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* @mptable_maxbusid, align 4
  br label %22

19:                                               ; preds = %0
  %20 = load i32, i32* @mptable_count_items_handler, align 4
  %21 = call i32 @mptable_walk_table(i32 %20, i32* null)
  br label %22

22:                                               ; preds = %19, %16
  ret void
}

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @mptable_walk_table(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
