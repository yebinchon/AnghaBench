; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_sess_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_sess_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { i32, i32, i32*, i32 }

@PROC_ID_SESSION = common dso_local global i32 0, align 4
@M_SESSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sess_release(%struct.session* %0) #0 {
  %2 = alloca %struct.session*, align 8
  store %struct.session* %0, %struct.session** %2, align 8
  %3 = load %struct.session*, %struct.session** %2, align 8
  %4 = getelementptr inbounds %struct.session, %struct.session* %3, i32 0, i32 3
  %5 = call i64 @refcount_release(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %1
  %8 = load %struct.session*, %struct.session** %2, align 8
  %9 = getelementptr inbounds %struct.session, %struct.session* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = load %struct.session*, %struct.session** %2, align 8
  %14 = getelementptr inbounds %struct.session, %struct.session* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @tty_lock(i32* %15)
  %17 = load %struct.session*, %struct.session** %2, align 8
  %18 = getelementptr inbounds %struct.session, %struct.session* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.session*, %struct.session** %2, align 8
  %21 = call i32 @tty_rel_sess(i32* %19, %struct.session* %20)
  br label %22

22:                                               ; preds = %12, %7
  %23 = load i32, i32* @PROC_ID_SESSION, align 4
  %24 = load %struct.session*, %struct.session** %2, align 8
  %25 = getelementptr inbounds %struct.session, %struct.session* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @proc_id_clear(i32 %23, i32 %26)
  %28 = load %struct.session*, %struct.session** %2, align 8
  %29 = getelementptr inbounds %struct.session, %struct.session* %28, i32 0, i32 0
  %30 = call i32 @mtx_destroy(i32* %29)
  %31 = load %struct.session*, %struct.session** %2, align 8
  %32 = load i32, i32* @M_SESSION, align 4
  %33 = call i32 @free(%struct.session* %31, i32 %32)
  br label %34

34:                                               ; preds = %22, %1
  ret void
}

declare dso_local i64 @refcount_release(i32*) #1

declare dso_local i32 @tty_lock(i32*) #1

declare dso_local i32 @tty_rel_sess(i32*, %struct.session*) #1

declare dso_local i32 @proc_id_clear(i32, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.session*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
