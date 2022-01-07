; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_unit.c_clean_unrhdrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_unit.c_clean_unrhdrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unrhdr = type { i32, i32 }
%struct.unr = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clean_unrhdrl(%struct.unrhdr* %0) #0 {
  %2 = alloca %struct.unrhdr*, align 8
  %3 = alloca %struct.unr*, align 8
  store %struct.unrhdr* %0, %struct.unrhdr** %2, align 8
  %4 = load %struct.unrhdr*, %struct.unrhdr** %2, align 8
  %5 = getelementptr inbounds %struct.unrhdr, %struct.unrhdr* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MA_OWNED, align 4
  %8 = call i32 @mtx_assert(i32 %6, i32 %7)
  br label %9

9:                                                ; preds = %14, %1
  %10 = load %struct.unrhdr*, %struct.unrhdr** %2, align 8
  %11 = getelementptr inbounds %struct.unrhdr, %struct.unrhdr* %10, i32 0, i32 1
  %12 = call %struct.unr* @TAILQ_FIRST(i32* %11)
  store %struct.unr* %12, %struct.unr** %3, align 8
  %13 = icmp ne %struct.unr* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %9
  %15 = load %struct.unrhdr*, %struct.unrhdr** %2, align 8
  %16 = getelementptr inbounds %struct.unrhdr, %struct.unrhdr* %15, i32 0, i32 1
  %17 = load %struct.unr*, %struct.unr** %3, align 8
  %18 = load i32, i32* @list, align 4
  %19 = call i32 @TAILQ_REMOVE(i32* %16, %struct.unr* %17, i32 %18)
  %20 = load %struct.unrhdr*, %struct.unrhdr** %2, align 8
  %21 = getelementptr inbounds %struct.unrhdr, %struct.unrhdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mtx_unlock(i32 %22)
  %24 = load %struct.unr*, %struct.unr** %3, align 8
  %25 = call i32 @Free(%struct.unr* %24)
  %26 = load %struct.unrhdr*, %struct.unrhdr** %2, align 8
  %27 = getelementptr inbounds %struct.unrhdr, %struct.unrhdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mtx_lock(i32 %28)
  br label %9

30:                                               ; preds = %9
  ret void
}

declare dso_local i32 @mtx_assert(i32, i32) #1

declare dso_local %struct.unr* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.unr*, i32) #1

declare dso_local i32 @mtx_unlock(i32) #1

declare dso_local i32 @Free(%struct.unr*) #1

declare dso_local i32 @mtx_lock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
