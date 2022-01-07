; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_mp_ws_query.c_on_mp_write_session_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_mp_ws_query.c_on_mp_write_session_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_state = type { i32, i32*, i32, i32 }

@CELT_MULTIPART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.query_state*)* @on_mp_write_session_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_mp_write_session_destroy(%struct.query_state* %0) #0 {
  %2 = alloca %struct.query_state*, align 8
  store %struct.query_state* %0, %struct.query_state** %2, align 8
  %3 = call i32 @TRACE_IN(void (%struct.query_state*)* @on_mp_write_session_destroy)
  %4 = load %struct.query_state*, %struct.query_state** %2, align 8
  %5 = getelementptr inbounds %struct.query_state, %struct.query_state* %4, i32 0, i32 3
  %6 = call i32 @finalize_comm_element(i32* %5)
  %7 = load %struct.query_state*, %struct.query_state** %2, align 8
  %8 = getelementptr inbounds %struct.query_state, %struct.query_state* %7, i32 0, i32 2
  %9 = call i32 @finalize_comm_element(i32* %8)
  %10 = load %struct.query_state*, %struct.query_state** %2, align 8
  %11 = getelementptr inbounds %struct.query_state, %struct.query_state* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load %struct.query_state*, %struct.query_state** %2, align 8
  %16 = getelementptr inbounds %struct.query_state, %struct.query_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CELT_MULTIPART, align 4
  %19 = call i32 @configuration_lock_entry(i32 %17, i32 %18)
  %20 = load %struct.query_state*, %struct.query_state** %2, align 8
  %21 = getelementptr inbounds %struct.query_state, %struct.query_state* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = ptrtoint i32* %22 to i32
  %24 = call i32 @abandon_cache_mp_write_session(i32 %23)
  %25 = load %struct.query_state*, %struct.query_state** %2, align 8
  %26 = getelementptr inbounds %struct.query_state, %struct.query_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CELT_MULTIPART, align 4
  %29 = call i32 @configuration_unlock_entry(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %14, %1
  %31 = call i32 @TRACE_OUT(void (%struct.query_state*)* @on_mp_write_session_destroy)
  ret void
}

declare dso_local i32 @TRACE_IN(void (%struct.query_state*)*) #1

declare dso_local i32 @finalize_comm_element(i32*) #1

declare dso_local i32 @configuration_lock_entry(i32, i32) #1

declare dso_local i32 @abandon_cache_mp_write_session(i32) #1

declare dso_local i32 @configuration_unlock_entry(i32, i32) #1

declare dso_local i32 @TRACE_OUT(void (%struct.query_state*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
