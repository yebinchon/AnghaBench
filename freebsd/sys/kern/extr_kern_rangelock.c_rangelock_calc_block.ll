; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rangelock.c_rangelock_calc_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rangelock.c_rangelock_calc_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rangelock = type { %struct.rl_q_entry*, i32 }
%struct.rl_q_entry = type { i32 }

@rl_q_link = common dso_local global i32 0, align 4
@RL_LOCK_READ = common dso_local global i32 0, align 4
@RL_LOCK_GRANTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rangelock*)* @rangelock_calc_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rangelock_calc_block(%struct.rangelock* %0) #0 {
  %2 = alloca %struct.rangelock*, align 8
  %3 = alloca %struct.rl_q_entry*, align 8
  %4 = alloca %struct.rl_q_entry*, align 8
  %5 = alloca %struct.rl_q_entry*, align 8
  store %struct.rangelock* %0, %struct.rangelock** %2, align 8
  %6 = load %struct.rangelock*, %struct.rangelock** %2, align 8
  %7 = getelementptr inbounds %struct.rangelock, %struct.rangelock* %6, i32 0, i32 0
  %8 = load %struct.rl_q_entry*, %struct.rl_q_entry** %7, align 8
  store %struct.rl_q_entry* %8, %struct.rl_q_entry** %3, align 8
  br label %9

9:                                                ; preds = %84, %1
  %10 = load %struct.rl_q_entry*, %struct.rl_q_entry** %3, align 8
  %11 = icmp ne %struct.rl_q_entry* %10, null
  br i1 %11, label %12, label %86

12:                                               ; preds = %9
  %13 = load %struct.rl_q_entry*, %struct.rl_q_entry** %3, align 8
  %14 = load i32, i32* @rl_q_link, align 4
  %15 = call %struct.rl_q_entry* @TAILQ_NEXT(%struct.rl_q_entry* %13, i32 %14)
  store %struct.rl_q_entry* %15, %struct.rl_q_entry** %4, align 8
  %16 = load %struct.rl_q_entry*, %struct.rl_q_entry** %3, align 8
  %17 = getelementptr inbounds %struct.rl_q_entry, %struct.rl_q_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RL_LOCK_READ, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %12
  %23 = load %struct.rangelock*, %struct.rangelock** %2, align 8
  %24 = getelementptr inbounds %struct.rangelock, %struct.rangelock* %23, i32 0, i32 1
  %25 = call %struct.rl_q_entry* @TAILQ_FIRST(i32* %24)
  store %struct.rl_q_entry* %25, %struct.rl_q_entry** %5, align 8
  br label %26

26:                                               ; preds = %41, %22
  %27 = load %struct.rl_q_entry*, %struct.rl_q_entry** %5, align 8
  %28 = getelementptr inbounds %struct.rl_q_entry, %struct.rl_q_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RL_LOCK_READ, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %45

34:                                               ; preds = %26
  %35 = load %struct.rl_q_entry*, %struct.rl_q_entry** %3, align 8
  %36 = load %struct.rl_q_entry*, %struct.rl_q_entry** %5, align 8
  %37 = call i64 @ranges_overlap(%struct.rl_q_entry* %35, %struct.rl_q_entry* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %87

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.rl_q_entry*, %struct.rl_q_entry** %5, align 8
  %43 = load i32, i32* @rl_q_link, align 4
  %44 = call %struct.rl_q_entry* @TAILQ_NEXT(%struct.rl_q_entry* %42, i32 %43)
  store %struct.rl_q_entry* %44, %struct.rl_q_entry** %5, align 8
  br label %26

45:                                               ; preds = %26
  br label %76

46:                                               ; preds = %12
  %47 = load %struct.rangelock*, %struct.rangelock** %2, align 8
  %48 = getelementptr inbounds %struct.rangelock, %struct.rangelock* %47, i32 0, i32 1
  %49 = call %struct.rl_q_entry* @TAILQ_FIRST(i32* %48)
  store %struct.rl_q_entry* %49, %struct.rl_q_entry** %5, align 8
  br label %50

50:                                               ; preds = %61, %46
  %51 = load %struct.rl_q_entry*, %struct.rl_q_entry** %5, align 8
  %52 = load %struct.rl_q_entry*, %struct.rl_q_entry** %3, align 8
  %53 = icmp ne %struct.rl_q_entry* %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load %struct.rl_q_entry*, %struct.rl_q_entry** %3, align 8
  %56 = load %struct.rl_q_entry*, %struct.rl_q_entry** %5, align 8
  %57 = call i64 @ranges_overlap(%struct.rl_q_entry* %55, %struct.rl_q_entry* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %87

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.rl_q_entry*, %struct.rl_q_entry** %5, align 8
  %63 = load i32, i32* @rl_q_link, align 4
  %64 = call %struct.rl_q_entry* @TAILQ_NEXT(%struct.rl_q_entry* %62, i32 %63)
  store %struct.rl_q_entry* %64, %struct.rl_q_entry** %5, align 8
  br label %50

65:                                               ; preds = %50
  %66 = load %struct.rangelock*, %struct.rangelock** %2, align 8
  %67 = getelementptr inbounds %struct.rangelock, %struct.rangelock* %66, i32 0, i32 1
  %68 = load %struct.rl_q_entry*, %struct.rl_q_entry** %3, align 8
  %69 = load i32, i32* @rl_q_link, align 4
  %70 = call i32 @TAILQ_REMOVE(i32* %67, %struct.rl_q_entry* %68, i32 %69)
  %71 = load %struct.rangelock*, %struct.rangelock** %2, align 8
  %72 = getelementptr inbounds %struct.rangelock, %struct.rangelock* %71, i32 0, i32 1
  %73 = load %struct.rl_q_entry*, %struct.rl_q_entry** %3, align 8
  %74 = load i32, i32* @rl_q_link, align 4
  %75 = call i32 @TAILQ_INSERT_HEAD(i32* %72, %struct.rl_q_entry* %73, i32 %74)
  br label %76

76:                                               ; preds = %65, %45
  %77 = load i32, i32* @RL_LOCK_GRANTED, align 4
  %78 = load %struct.rl_q_entry*, %struct.rl_q_entry** %3, align 8
  %79 = getelementptr inbounds %struct.rl_q_entry, %struct.rl_q_entry* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load %struct.rl_q_entry*, %struct.rl_q_entry** %3, align 8
  %83 = call i32 @wakeup(%struct.rl_q_entry* %82)
  br label %84

84:                                               ; preds = %76
  %85 = load %struct.rl_q_entry*, %struct.rl_q_entry** %4, align 8
  store %struct.rl_q_entry* %85, %struct.rl_q_entry** %3, align 8
  br label %9

86:                                               ; preds = %9
  br label %87

87:                                               ; preds = %86, %59, %39
  %88 = load %struct.rl_q_entry*, %struct.rl_q_entry** %3, align 8
  %89 = load %struct.rangelock*, %struct.rangelock** %2, align 8
  %90 = getelementptr inbounds %struct.rangelock, %struct.rangelock* %89, i32 0, i32 0
  store %struct.rl_q_entry* %88, %struct.rl_q_entry** %90, align 8
  ret void
}

declare dso_local %struct.rl_q_entry* @TAILQ_NEXT(%struct.rl_q_entry*, i32) #1

declare dso_local %struct.rl_q_entry* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @ranges_overlap(%struct.rl_q_entry*, %struct.rl_q_entry*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.rl_q_entry*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.rl_q_entry*, i32) #1

declare dso_local i32 @wakeup(%struct.rl_q_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
