; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_deregister_wait_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_deregister_wait_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_waiting_lock = type { i32 }

@nlm_global_lock = common dso_local global i32 0, align 4
@nlm_waiting_locks = common dso_local global i32 0, align 4
@nw_link = common dso_local global i32 0, align 4
@M_NLM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_deregister_wait_lock(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nlm_waiting_lock*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.nlm_waiting_lock*
  store %struct.nlm_waiting_lock* %5, %struct.nlm_waiting_lock** %3, align 8
  %6 = call i32 @mtx_lock(i32* @nlm_global_lock)
  %7 = load %struct.nlm_waiting_lock*, %struct.nlm_waiting_lock** %3, align 8
  %8 = load i32, i32* @nw_link, align 4
  %9 = call i32 @TAILQ_REMOVE(i32* @nlm_waiting_locks, %struct.nlm_waiting_lock* %7, i32 %8)
  %10 = call i32 @mtx_unlock(i32* @nlm_global_lock)
  %11 = load %struct.nlm_waiting_lock*, %struct.nlm_waiting_lock** %3, align 8
  %12 = load i32, i32* @M_NLM, align 4
  %13 = call i32 @free(%struct.nlm_waiting_lock* %11, i32 %12)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.nlm_waiting_lock*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @free(%struct.nlm_waiting_lock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
