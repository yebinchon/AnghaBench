; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_loginclass.c_loginclass_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_loginclass.c_loginclass_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loginclass = type { i32, i32 }

@loginclasses_lock = common dso_local global i32 0, align 4
@lc_next = common dso_local global i32 0, align 4
@M_LOGINCLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @loginclass_free(%struct.loginclass* %0) #0 {
  %2 = alloca %struct.loginclass*, align 8
  store %struct.loginclass* %0, %struct.loginclass** %2, align 8
  %3 = load %struct.loginclass*, %struct.loginclass** %2, align 8
  %4 = getelementptr inbounds %struct.loginclass, %struct.loginclass* %3, i32 0, i32 1
  %5 = call i64 @refcount_release_if_not_last(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %27

8:                                                ; preds = %1
  %9 = call i32 @rw_wlock(i32* @loginclasses_lock)
  %10 = load %struct.loginclass*, %struct.loginclass** %2, align 8
  %11 = getelementptr inbounds %struct.loginclass, %struct.loginclass* %10, i32 0, i32 1
  %12 = call i32 @refcount_release(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = call i32 @rw_wunlock(i32* @loginclasses_lock)
  br label %27

16:                                               ; preds = %8
  %17 = load %struct.loginclass*, %struct.loginclass** %2, align 8
  %18 = getelementptr inbounds %struct.loginclass, %struct.loginclass* %17, i32 0, i32 0
  %19 = call i32 @racct_destroy(i32* %18)
  %20 = load %struct.loginclass*, %struct.loginclass** %2, align 8
  %21 = load i32, i32* @lc_next, align 4
  %22 = call i32 @LIST_REMOVE(%struct.loginclass* %20, i32 %21)
  %23 = call i32 @rw_wunlock(i32* @loginclasses_lock)
  %24 = load %struct.loginclass*, %struct.loginclass** %2, align 8
  %25 = load i32, i32* @M_LOGINCLASS, align 4
  %26 = call i32 @free(%struct.loginclass* %24, i32 %25)
  br label %27

27:                                               ; preds = %16, %14, %7
  ret void
}

declare dso_local i64 @refcount_release_if_not_last(i32*) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @refcount_release(i32*) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @racct_destroy(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.loginclass*, i32) #1

declare dso_local i32 @free(%struct.loginclass*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
