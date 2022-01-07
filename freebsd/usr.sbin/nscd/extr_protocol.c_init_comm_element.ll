; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_protocol.c_init_comm_element.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_protocol.c_init_comm_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_element = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"init_comm_element\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid communication element\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_comm_element(%struct.comm_element* %0, i32 %1) #0 {
  %3 = alloca %struct.comm_element*, align 8
  %4 = alloca i32, align 4
  store %struct.comm_element* %0, %struct.comm_element** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 @TRACE_IN(void (%struct.comm_element*, i32)* @init_comm_element)
  %6 = load %struct.comm_element*, %struct.comm_element** %3, align 8
  %7 = call i32 @memset(%struct.comm_element* %6, i32 0, i32 56)
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %62 [
    i32 129, label %9
    i32 128, label %13
    i32 134, label %17
    i32 133, label %21
    i32 132, label %25
    i32 131, label %29
    i32 138, label %33
    i32 137, label %37
    i32 136, label %41
    i32 135, label %45
    i32 140, label %49
    i32 139, label %53
    i32 141, label %57
    i32 130, label %61
  ]

9:                                                ; preds = %2
  %10 = load %struct.comm_element*, %struct.comm_element** %3, align 8
  %11 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %10, i32 0, i32 13
  %12 = call i32 @init_cache_write_request(i32* %11)
  br label %65

13:                                               ; preds = %2
  %14 = load %struct.comm_element*, %struct.comm_element** %3, align 8
  %15 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %14, i32 0, i32 12
  %16 = call i32 @init_cache_write_response(i32* %15)
  br label %65

17:                                               ; preds = %2
  %18 = load %struct.comm_element*, %struct.comm_element** %3, align 8
  %19 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %18, i32 0, i32 11
  %20 = call i32 @init_cache_read_request(i32* %19)
  br label %65

21:                                               ; preds = %2
  %22 = load %struct.comm_element*, %struct.comm_element** %3, align 8
  %23 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %22, i32 0, i32 10
  %24 = call i32 @init_cache_read_response(i32* %23)
  br label %65

25:                                               ; preds = %2
  %26 = load %struct.comm_element*, %struct.comm_element** %3, align 8
  %27 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %26, i32 0, i32 9
  %28 = call i32 @init_cache_transform_request(i32* %27)
  br label %65

29:                                               ; preds = %2
  %30 = load %struct.comm_element*, %struct.comm_element** %3, align 8
  %31 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %30, i32 0, i32 8
  %32 = call i32 @init_cache_transform_response(i32* %31)
  br label %65

33:                                               ; preds = %2
  %34 = load %struct.comm_element*, %struct.comm_element** %3, align 8
  %35 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %34, i32 0, i32 7
  %36 = call i32 @init_cache_mp_write_session_request(i32* %35)
  br label %65

37:                                               ; preds = %2
  %38 = load %struct.comm_element*, %struct.comm_element** %3, align 8
  %39 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %38, i32 0, i32 6
  %40 = call i32 @init_cache_mp_write_session_response(i32* %39)
  br label %65

41:                                               ; preds = %2
  %42 = load %struct.comm_element*, %struct.comm_element** %3, align 8
  %43 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %42, i32 0, i32 5
  %44 = call i32 @init_cache_mp_write_session_write_request(i32* %43)
  br label %65

45:                                               ; preds = %2
  %46 = load %struct.comm_element*, %struct.comm_element** %3, align 8
  %47 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %46, i32 0, i32 4
  %48 = call i32 @init_cache_mp_write_session_write_response(i32* %47)
  br label %65

49:                                               ; preds = %2
  %50 = load %struct.comm_element*, %struct.comm_element** %3, align 8
  %51 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %50, i32 0, i32 3
  %52 = call i32 @init_cache_mp_read_session_request(i32* %51)
  br label %65

53:                                               ; preds = %2
  %54 = load %struct.comm_element*, %struct.comm_element** %3, align 8
  %55 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %54, i32 0, i32 2
  %56 = call i32 @init_cache_mp_read_session_response(i32* %55)
  br label %65

57:                                               ; preds = %2
  %58 = load %struct.comm_element*, %struct.comm_element** %3, align 8
  %59 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %58, i32 0, i32 1
  %60 = call i32 @init_cache_mp_read_session_read_response(i32* %59)
  br label %65

61:                                               ; preds = %2
  br label %65

62:                                               ; preds = %2
  %63 = call i32 @LOG_ERR_2(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %64 = call i32 @TRACE_OUT(void (%struct.comm_element*, i32)* @init_comm_element)
  br label %70

65:                                               ; preds = %61, %57, %53, %49, %45, %41, %37, %33, %29, %25, %21, %17, %13, %9
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.comm_element*, %struct.comm_element** %3, align 8
  %68 = getelementptr inbounds %struct.comm_element, %struct.comm_element* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = call i32 @TRACE_OUT(void (%struct.comm_element*, i32)* @init_comm_element)
  br label %70

70:                                               ; preds = %65, %62
  ret void
}

declare dso_local i32 @TRACE_IN(void (%struct.comm_element*, i32)*) #1

declare dso_local i32 @memset(%struct.comm_element*, i32, i32) #1

declare dso_local i32 @init_cache_write_request(i32*) #1

declare dso_local i32 @init_cache_write_response(i32*) #1

declare dso_local i32 @init_cache_read_request(i32*) #1

declare dso_local i32 @init_cache_read_response(i32*) #1

declare dso_local i32 @init_cache_transform_request(i32*) #1

declare dso_local i32 @init_cache_transform_response(i32*) #1

declare dso_local i32 @init_cache_mp_write_session_request(i32*) #1

declare dso_local i32 @init_cache_mp_write_session_response(i32*) #1

declare dso_local i32 @init_cache_mp_write_session_write_request(i32*) #1

declare dso_local i32 @init_cache_mp_write_session_write_response(i32*) #1

declare dso_local i32 @init_cache_mp_read_session_request(i32*) #1

declare dso_local i32 @init_cache_mp_read_session_response(i32*) #1

declare dso_local i32 @init_cache_mp_read_session_read_response(i32*) #1

declare dso_local i32 @LOG_ERR_2(i8*, i8*) #1

declare dso_local i32 @TRACE_OUT(void (%struct.comm_element*, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
