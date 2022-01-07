; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_pf/extr_pf_snmp.c_pfl_refresh.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_pf/extr_pf_snmp.c_pfl_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfl_entry = type { i32 }

@started = common dso_local global i64 0, align 8
@this_tick = common dso_local global i64 0, align 8
@pf_tick = common dso_local global i64 0, align 8
@pfl_table = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@pfl_table_count = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@pfl_table_age = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pfl_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfl_refresh() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pfl_entry*, align 8
  %3 = load i64, i64* @started, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = load i64, i64* @this_tick, align 8
  %7 = load i64, i64* @pf_tick, align 8
  %8 = icmp sle i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  store i32 0, i32* %1, align 4
  br label %42

10:                                               ; preds = %5, %0
  br label %11

11:                                               ; preds = %15, %10
  %12 = call i32 @TAILQ_EMPTY(i32* @pfl_table)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = call %struct.pfl_entry* @TAILQ_FIRST(i32* @pfl_table)
  store %struct.pfl_entry* %16, %struct.pfl_entry** %2, align 8
  %17 = load %struct.pfl_entry*, %struct.pfl_entry** %2, align 8
  %18 = load i32, i32* @link, align 4
  %19 = call i32 @TAILQ_REMOVE(i32* @pfl_table, %struct.pfl_entry* %17, i32 %18)
  %20 = load %struct.pfl_entry*, %struct.pfl_entry** %2, align 8
  %21 = call i32 @free(%struct.pfl_entry* %20)
  br label %11

22:                                               ; preds = %11
  store i64 0, i64* @pfl_table_count, align 8
  %23 = call i64 @pfl_walk_rulesets(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %29

26:                                               ; preds = %22
  %27 = call i32 @time(i32* null)
  store i32 %27, i32* @pfl_table_age, align 4
  %28 = load i64, i64* @this_tick, align 8
  store i64 %28, i64* @pf_tick, align 8
  store i32 0, i32* %1, align 4
  br label %42

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %34, %29
  %31 = call i32 @TAILQ_EMPTY(i32* @pfl_table)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = call %struct.pfl_entry* @TAILQ_FIRST(i32* @pfl_table)
  store %struct.pfl_entry* %35, %struct.pfl_entry** %2, align 8
  %36 = load %struct.pfl_entry*, %struct.pfl_entry** %2, align 8
  %37 = load i32, i32* @link, align 4
  %38 = call i32 @TAILQ_REMOVE(i32* @pfl_table, %struct.pfl_entry* %36, i32 %37)
  %39 = load %struct.pfl_entry*, %struct.pfl_entry** %2, align 8
  %40 = call i32 @free(%struct.pfl_entry* %39)
  br label %30

41:                                               ; preds = %30
  store i64 0, i64* @pfl_table_count, align 8
  store i32 -1, i32* %1, align 4
  br label %42

42:                                               ; preds = %41, %26, %9
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.pfl_entry* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pfl_entry*, i32) #1

declare dso_local i32 @free(%struct.pfl_entry*) #1

declare dso_local i64 @pfl_walk_rulesets(i8*) #1

declare dso_local i32 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
