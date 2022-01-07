; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_release_vfs_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_release_vfs_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfs_state = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfs_state*)* @nlm_release_vfs_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_release_vfs_state(%struct.vfs_state* %0) #0 {
  %2 = alloca %struct.vfs_state*, align 8
  store %struct.vfs_state* %0, %struct.vfs_state** %2, align 8
  %3 = load %struct.vfs_state*, %struct.vfs_state** %2, align 8
  %4 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = load %struct.vfs_state*, %struct.vfs_state** %2, align 8
  %9 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.vfs_state*, %struct.vfs_state** %2, align 8
  %14 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @vput(i64 %15)
  br label %22

17:                                               ; preds = %7
  %18 = load %struct.vfs_state*, %struct.vfs_state** %2, align 8
  %19 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @vrele(i64 %20)
  br label %22

22:                                               ; preds = %17, %12
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.vfs_state*, %struct.vfs_state** %2, align 8
  %25 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.vfs_state*, %struct.vfs_state** %2, align 8
  %30 = getelementptr inbounds %struct.vfs_state, %struct.vfs_state* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @vfs_rel(i64 %31)
  br label %33

33:                                               ; preds = %28, %23
  ret void
}

declare dso_local i32 @vput(i64) #1

declare dso_local i32 @vrele(i64) #1

declare dso_local i32 @vfs_rel(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
