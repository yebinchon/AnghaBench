; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_rule.c_devfs_rule_autonumber.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_rule.c_devfs_rule_autonumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfs_ruleset = type { i32, i32 }
%struct.devfs_krule = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@rulehead = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"autonumbering resulted in an already existing rule\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devfs_ruleset*, i64*)* @devfs_rule_autonumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_rule_autonumber(%struct.devfs_ruleset* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devfs_ruleset*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.devfs_krule*, align 8
  store %struct.devfs_ruleset* %0, %struct.devfs_ruleset** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load %struct.devfs_ruleset*, %struct.devfs_ruleset** %4, align 8
  %8 = getelementptr inbounds %struct.devfs_ruleset, %struct.devfs_ruleset* %7, i32 0, i32 1
  %9 = load i32, i32* @rulehead, align 4
  %10 = call %struct.devfs_krule* @TAILQ_LAST(i32* %8, i32 %9)
  store %struct.devfs_krule* %10, %struct.devfs_krule** %6, align 8
  %11 = load %struct.devfs_krule*, %struct.devfs_krule** %6, align 8
  %12 = icmp eq %struct.devfs_krule* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64*, i64** %5, align 8
  store i64 100, i64* %14, align 8
  br label %34

15:                                               ; preds = %2
  %16 = load %struct.devfs_krule*, %struct.devfs_krule** %6, align 8
  %17 = getelementptr inbounds %struct.devfs_krule, %struct.devfs_krule* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @rid2rn(i32 %19)
  %21 = add nsw i64 %20, 100
  %22 = load i64*, i64** %5, align 8
  store i64 %21, i64* %22, align 8
  %23 = load i64*, i64** %5, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.devfs_krule*, %struct.devfs_krule** %6, align 8
  %26 = getelementptr inbounds %struct.devfs_krule, %struct.devfs_krule* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @rid2rn(i32 %28)
  %30 = icmp slt i64 %24, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %15
  %32 = load i32, i32* @ERANGE, align 4
  store i32 %32, i32* %3, align 4
  br label %45

33:                                               ; preds = %15
  br label %34

34:                                               ; preds = %33, %13
  %35 = load %struct.devfs_ruleset*, %struct.devfs_ruleset** %4, align 8
  %36 = getelementptr inbounds %struct.devfs_ruleset, %struct.devfs_ruleset* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64*, i64** %5, align 8
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @mkrid(i32 %37, i64 %39)
  %41 = call i32* @devfs_rule_byid(i32 %40)
  %42 = icmp eq i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @KASSERT(i32 %43, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %34, %31
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.devfs_krule* @TAILQ_LAST(i32*, i32) #1

declare dso_local i64 @rid2rn(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @devfs_rule_byid(i32) #1

declare dso_local i32 @mkrid(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
