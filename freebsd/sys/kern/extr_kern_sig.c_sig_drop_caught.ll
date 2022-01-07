; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sig_drop_caught.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_sig_drop_caught.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { %struct.sigacts* }
%struct.sigacts = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@SIGPROP_IGNORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sig_drop_caught(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sigacts*, align 8
  store %struct.proc* %0, %struct.proc** %2, align 8
  %5 = load %struct.proc*, %struct.proc** %2, align 8
  %6 = getelementptr inbounds %struct.proc, %struct.proc* %5, i32 0, i32 0
  %7 = load %struct.sigacts*, %struct.sigacts** %6, align 8
  store %struct.sigacts* %7, %struct.sigacts** %4, align 8
  %8 = load %struct.proc*, %struct.proc** %2, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %8, i32 %9)
  %11 = load %struct.sigacts*, %struct.sigacts** %4, align 8
  %12 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %11, i32 0, i32 1
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @mtx_assert(i32* %12, i32 %13)
  br label %15

15:                                               ; preds = %37, %1
  %16 = load %struct.sigacts*, %struct.sigacts** %4, align 8
  %17 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @SIGNOTEMPTY(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %15
  %22 = load %struct.sigacts*, %struct.sigacts** %4, align 8
  %23 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %22, i32 0, i32 0
  %24 = call i32 @sig_ffs(i32* %23)
  store i32 %24, i32* %3, align 4
  %25 = load %struct.sigacts*, %struct.sigacts** %4, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @sigdflt(%struct.sigacts* %25, i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @sigprop(i32 %28)
  %30 = load i32, i32* @SIGPROP_IGNORE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = load %struct.proc*, %struct.proc** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @sigqueue_delete_proc(%struct.proc* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %21
  br label %15

38:                                               ; preds = %15
  ret void
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @SIGNOTEMPTY(i32) #1

declare dso_local i32 @sig_ffs(i32*) #1

declare dso_local i32 @sigdflt(%struct.sigacts*, i32) #1

declare dso_local i32 @sigprop(i32) #1

declare dso_local i32 @sigqueue_delete_proc(%struct.proc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
