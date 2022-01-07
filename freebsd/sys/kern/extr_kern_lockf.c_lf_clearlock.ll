; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lockf.c_lf_clearlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lockf.c_lf_clearlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lockf_entry = type { i64 }
%struct.lockf = type { i32 }

@NOLOCKF = common dso_local global %struct.lockf_entry* null, align 8
@F_UNLCK = common dso_local global i64 0, align 8
@lockf_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lockf*, %struct.lockf_entry*)* @lf_clearlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lf_clearlock(%struct.lockf* %0, %struct.lockf_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lockf*, align 8
  %5 = alloca %struct.lockf_entry*, align 8
  %6 = alloca %struct.lockf_entry*, align 8
  store %struct.lockf* %0, %struct.lockf** %4, align 8
  store %struct.lockf_entry* %1, %struct.lockf_entry** %5, align 8
  %7 = load %struct.lockf*, %struct.lockf** %4, align 8
  %8 = getelementptr inbounds %struct.lockf, %struct.lockf* %7, i32 0, i32 0
  %9 = call %struct.lockf_entry* @LIST_FIRST(i32* %8)
  store %struct.lockf_entry* %9, %struct.lockf_entry** %6, align 8
  %10 = load %struct.lockf_entry*, %struct.lockf_entry** %6, align 8
  %11 = load %struct.lockf_entry*, %struct.lockf_entry** @NOLOCKF, align 8
  %12 = icmp eq %struct.lockf_entry* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.lockf*, %struct.lockf** %4, align 8
  %16 = load %struct.lockf_entry*, %struct.lockf_entry** %5, align 8
  %17 = call i32 @lf_activate_lock(%struct.lockf* %15, %struct.lockf_entry* %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %13
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local %struct.lockf_entry* @LIST_FIRST(i32*) #1

declare dso_local i32 @lf_activate_lock(%struct.lockf*, %struct.lockf_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
