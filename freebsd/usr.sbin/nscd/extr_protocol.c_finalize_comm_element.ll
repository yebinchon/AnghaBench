; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_protocol.c_finalize_comm_element.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_protocol.c_finalize_comm_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_element = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @finalize_comm_element(%struct.comm_element* %0) #0 {
  %2 = alloca %struct.comm_element*, align 8
  store %struct.comm_element* %0, %struct.comm_element** %2, align 8
  %3 = call i32 @TRACE_IN(void (%struct.comm_element*)* @finalize_comm_element)
  %4 = load %struct.comm_element*, %struct.comm_element** %2, align 8
  %5 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %60 [
    i32 129, label %7
    i32 128, label %11
    i32 134, label %15
    i32 133, label %19
    i32 132, label %23
    i32 131, label %27
    i32 138, label %31
    i32 137, label %35
    i32 136, label %39
    i32 135, label %43
    i32 140, label %47
    i32 139, label %51
    i32 141, label %55
    i32 130, label %59
  ]

7:                                                ; preds = %1
  %8 = load %struct.comm_element*, %struct.comm_element** %2, align 8
  %9 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %8, i32 0, i32 13
  %10 = call i32 @finalize_cache_write_request(i32* %9)
  br label %61

11:                                               ; preds = %1
  %12 = load %struct.comm_element*, %struct.comm_element** %2, align 8
  %13 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %12, i32 0, i32 12
  %14 = call i32 @finalize_cache_write_response(i32* %13)
  br label %61

15:                                               ; preds = %1
  %16 = load %struct.comm_element*, %struct.comm_element** %2, align 8
  %17 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %16, i32 0, i32 11
  %18 = call i32 @finalize_cache_read_request(i32* %17)
  br label %61

19:                                               ; preds = %1
  %20 = load %struct.comm_element*, %struct.comm_element** %2, align 8
  %21 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %20, i32 0, i32 10
  %22 = call i32 @finalize_cache_read_response(i32* %21)
  br label %61

23:                                               ; preds = %1
  %24 = load %struct.comm_element*, %struct.comm_element** %2, align 8
  %25 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %24, i32 0, i32 9
  %26 = call i32 @finalize_cache_transform_request(i32* %25)
  br label %61

27:                                               ; preds = %1
  %28 = load %struct.comm_element*, %struct.comm_element** %2, align 8
  %29 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %28, i32 0, i32 8
  %30 = call i32 @finalize_cache_transform_response(i32* %29)
  br label %61

31:                                               ; preds = %1
  %32 = load %struct.comm_element*, %struct.comm_element** %2, align 8
  %33 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %32, i32 0, i32 7
  %34 = call i32 @finalize_cache_mp_write_session_request(i32* %33)
  br label %61

35:                                               ; preds = %1
  %36 = load %struct.comm_element*, %struct.comm_element** %2, align 8
  %37 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %36, i32 0, i32 6
  %38 = call i32 @finalize_cache_mp_write_session_response(i32* %37)
  br label %61

39:                                               ; preds = %1
  %40 = load %struct.comm_element*, %struct.comm_element** %2, align 8
  %41 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %40, i32 0, i32 5
  %42 = call i32 @finalize_cache_mp_write_session_write_request(i32* %41)
  br label %61

43:                                               ; preds = %1
  %44 = load %struct.comm_element*, %struct.comm_element** %2, align 8
  %45 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %44, i32 0, i32 4
  %46 = call i32 @finalize_cache_mp_write_session_write_response(i32* %45)
  br label %61

47:                                               ; preds = %1
  %48 = load %struct.comm_element*, %struct.comm_element** %2, align 8
  %49 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %48, i32 0, i32 3
  %50 = call i32 @finalize_cache_mp_read_session_request(i32* %49)
  br label %61

51:                                               ; preds = %1
  %52 = load %struct.comm_element*, %struct.comm_element** %2, align 8
  %53 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %52, i32 0, i32 2
  %54 = call i32 @finalize_cache_mp_read_session_response(i32* %53)
  br label %61

55:                                               ; preds = %1
  %56 = load %struct.comm_element*, %struct.comm_element** %2, align 8
  %57 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %56, i32 0, i32 1
  %58 = call i32 @finalize_cache_mp_read_session_read_response(i32* %57)
  br label %61

59:                                               ; preds = %1
  br label %61

60:                                               ; preds = %1
  br label %61

61:                                               ; preds = %60, %59, %55, %51, %47, %43, %39, %35, %31, %27, %23, %19, %15, %11, %7
  %62 = load %struct.comm_element*, %struct.comm_element** %2, align 8
  %63 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %62, i32 0, i32 0
  store i32 130, i32* %63, align 4
  %64 = call i32 @TRACE_OUT(void (%struct.comm_element*)* @finalize_comm_element)
  ret void
}

declare dso_local i32 @TRACE_IN(void (%struct.comm_element*)*) #1

declare dso_local i32 @finalize_cache_write_request(i32*) #1

declare dso_local i32 @finalize_cache_write_response(i32*) #1

declare dso_local i32 @finalize_cache_read_request(i32*) #1

declare dso_local i32 @finalize_cache_read_response(i32*) #1

declare dso_local i32 @finalize_cache_transform_request(i32*) #1

declare dso_local i32 @finalize_cache_transform_response(i32*) #1

declare dso_local i32 @finalize_cache_mp_write_session_request(i32*) #1

declare dso_local i32 @finalize_cache_mp_write_session_response(i32*) #1

declare dso_local i32 @finalize_cache_mp_write_session_write_request(i32*) #1

declare dso_local i32 @finalize_cache_mp_write_session_write_response(i32*) #1

declare dso_local i32 @finalize_cache_mp_read_session_request(i32*) #1

declare dso_local i32 @finalize_cache_mp_read_session_response(i32*) #1

declare dso_local i32 @finalize_cache_mp_read_session_read_response(i32*) #1

declare dso_local i32 @TRACE_OUT(void (%struct.comm_element*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
