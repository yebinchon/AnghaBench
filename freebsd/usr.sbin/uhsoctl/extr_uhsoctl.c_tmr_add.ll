; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_tmr_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_tmr_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timers = type { i32 }
%struct.timer_entry = type { i32, i32, i8*, i32 }

@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timers*, i32, i32, i32, i8*)* @tmr_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmr_add(%struct.timers* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.timers*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.timer_entry*, align 8
  %12 = alloca %struct.timer_entry*, align 8
  %13 = alloca %struct.timer_entry*, align 8
  store %struct.timers* %0, %struct.timers** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %14 = call %struct.timer_entry* @malloc(i32 24)
  store %struct.timer_entry* %14, %struct.timer_entry** %11, align 8
  %15 = load %struct.timer_entry*, %struct.timer_entry** %11, align 8
  %16 = call i32 @memset(%struct.timer_entry* %15, i32 0, i32 24)
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.timer_entry*, %struct.timer_entry** %11, align 8
  %19 = getelementptr inbounds %struct.timer_entry, %struct.timer_entry* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.timer_entry*, %struct.timer_entry** %11, align 8
  %22 = getelementptr inbounds %struct.timer_entry, %struct.timer_entry* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load %struct.timer_entry*, %struct.timer_entry** %11, align 8
  %25 = getelementptr inbounds %struct.timer_entry, %struct.timer_entry* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.timer_entry*, %struct.timer_entry** %11, align 8
  %28 = getelementptr inbounds %struct.timer_entry, %struct.timer_entry* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.timers*, %struct.timers** %6, align 8
  %30 = getelementptr inbounds %struct.timers, %struct.timers* %29, i32 0, i32 0
  %31 = call %struct.timer_entry* @TAILQ_FIRST(i32* %30)
  store %struct.timer_entry* %31, %struct.timer_entry** %12, align 8
  %32 = load %struct.timers*, %struct.timers** %6, align 8
  %33 = getelementptr inbounds %struct.timers, %struct.timers* %32, i32 0, i32 0
  %34 = call i64 @TAILQ_EMPTY(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %5
  %37 = load %struct.timers*, %struct.timers** %6, align 8
  %38 = getelementptr inbounds %struct.timers, %struct.timers* %37, i32 0, i32 0
  %39 = load %struct.timer_entry*, %struct.timer_entry** %11, align 8
  %40 = load i32, i32* @next, align 4
  %41 = call i32 @TAILQ_INSERT_HEAD(i32* %38, %struct.timer_entry* %39, i32 %40)
  br label %104

42:                                               ; preds = %5
  %43 = load %struct.timer_entry*, %struct.timer_entry** %11, align 8
  %44 = getelementptr inbounds %struct.timer_entry, %struct.timer_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.timer_entry*, %struct.timer_entry** %12, align 8
  %47 = getelementptr inbounds %struct.timer_entry, %struct.timer_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %42
  %51 = load %struct.timer_entry*, %struct.timer_entry** %11, align 8
  %52 = getelementptr inbounds %struct.timer_entry, %struct.timer_entry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.timer_entry*, %struct.timer_entry** %12, align 8
  %55 = getelementptr inbounds %struct.timer_entry, %struct.timer_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.timers*, %struct.timers** %6, align 8
  %59 = getelementptr inbounds %struct.timers, %struct.timers* %58, i32 0, i32 0
  %60 = load %struct.timer_entry*, %struct.timer_entry** %11, align 8
  %61 = load i32, i32* @next, align 4
  %62 = call i32 @TAILQ_INSERT_HEAD(i32* %59, %struct.timer_entry* %60, i32 %61)
  br label %103

63:                                               ; preds = %42
  br label %64

64:                                               ; preds = %94, %63
  %65 = load %struct.timer_entry*, %struct.timer_entry** %11, align 8
  %66 = getelementptr inbounds %struct.timer_entry, %struct.timer_entry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.timer_entry*, %struct.timer_entry** %12, align 8
  %69 = getelementptr inbounds %struct.timer_entry, %struct.timer_entry* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sge i32 %67, %70
  br i1 %71, label %72, label %96

72:                                               ; preds = %64
  %73 = load %struct.timer_entry*, %struct.timer_entry** %12, align 8
  %74 = getelementptr inbounds %struct.timer_entry, %struct.timer_entry* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.timer_entry*, %struct.timer_entry** %11, align 8
  %77 = getelementptr inbounds %struct.timer_entry, %struct.timer_entry* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load %struct.timer_entry*, %struct.timer_entry** %12, align 8
  %81 = load i32, i32* @next, align 4
  %82 = call %struct.timer_entry* @TAILQ_NEXT(%struct.timer_entry* %80, i32 %81)
  store %struct.timer_entry* %82, %struct.timer_entry** %13, align 8
  %83 = load %struct.timer_entry*, %struct.timer_entry** %13, align 8
  %84 = icmp eq %struct.timer_entry* %83, null
  br i1 %84, label %93, label %85

85:                                               ; preds = %72
  %86 = load %struct.timer_entry*, %struct.timer_entry** %13, align 8
  %87 = getelementptr inbounds %struct.timer_entry, %struct.timer_entry* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.timer_entry*, %struct.timer_entry** %11, align 8
  %90 = getelementptr inbounds %struct.timer_entry, %struct.timer_entry* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp sgt i32 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %85, %72
  br label %96

94:                                               ; preds = %85
  %95 = load %struct.timer_entry*, %struct.timer_entry** %13, align 8
  store %struct.timer_entry* %95, %struct.timer_entry** %12, align 8
  br label %64

96:                                               ; preds = %93, %64
  %97 = load %struct.timers*, %struct.timers** %6, align 8
  %98 = getelementptr inbounds %struct.timers, %struct.timers* %97, i32 0, i32 0
  %99 = load %struct.timer_entry*, %struct.timer_entry** %12, align 8
  %100 = load %struct.timer_entry*, %struct.timer_entry** %11, align 8
  %101 = load i32, i32* @next, align 4
  %102 = call i32 @TAILQ_INSERT_AFTER(i32* %98, %struct.timer_entry* %99, %struct.timer_entry* %100, i32 %101)
  br label %103

103:                                              ; preds = %96, %50
  br label %104

104:                                              ; preds = %103, %36
  ret void
}

declare dso_local %struct.timer_entry* @malloc(i32) #1

declare dso_local i32 @memset(%struct.timer_entry*, i32, i32) #1

declare dso_local %struct.timer_entry* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.timer_entry*, i32) #1

declare dso_local %struct.timer_entry* @TAILQ_NEXT(%struct.timer_entry*, i32) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(i32*, %struct.timer_entry*, %struct.timer_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
