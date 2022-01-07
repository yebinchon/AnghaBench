; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_subr.c_find_and_ref_tcp_default_fb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_subr.c_find_and_ref_tcp_default_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_function_block = type { i32 }

@tcp_function_lock = common dso_local global i32 0, align 4
@tcp_func_set_ptr = common dso_local global %struct.tcp_function_block* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcp_function_block* ()* @find_and_ref_tcp_default_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcp_function_block* @find_and_ref_tcp_default_fb() #0 {
  %1 = alloca %struct.tcp_function_block*, align 8
  %2 = call i32 @rw_rlock(i32* @tcp_function_lock)
  %3 = load %struct.tcp_function_block*, %struct.tcp_function_block** @tcp_func_set_ptr, align 8
  store %struct.tcp_function_block* %3, %struct.tcp_function_block** %1, align 8
  %4 = load %struct.tcp_function_block*, %struct.tcp_function_block** %1, align 8
  %5 = getelementptr inbounds %struct.tcp_function_block, %struct.tcp_function_block* %4, i32 0, i32 0
  %6 = call i32 @refcount_acquire(i32* %5)
  %7 = call i32 @rw_runlock(i32* @tcp_function_lock)
  %8 = load %struct.tcp_function_block*, %struct.tcp_function_block** %1, align 8
  ret %struct.tcp_function_block* %8
}

declare dso_local i32 @rw_rlock(i32*) #1

declare dso_local i32 @refcount_acquire(i32*) #1

declare dso_local i32 @rw_runlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
