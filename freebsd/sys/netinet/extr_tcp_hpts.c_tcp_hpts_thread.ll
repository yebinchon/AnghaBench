; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c_tcp_hpts_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c_tcp_hpts_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_hpts_entry = type { i32, i32, i32, i32, i32, i64, i32, i32, i64 }
%struct.epoch_tracker = type { i32 }
%struct.timeval = type { i32, i64 }

@HPTS_TICKS_PER_USEC = common dso_local global i32 0, align 4
@tcp_min_hptsi_time = common dso_local global i32 0, align 4
@tcp_hpts_callout_skip_swi = common dso_local global i64 0, align 8
@hpts_timeout_swi = common dso_local global i32 0, align 4
@C_DIRECT_EXEC = common dso_local global i32 0, align 4
@tcp_hpts_precision = common dso_local global i32 0, align 4
@hpts_timeout_dir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tcp_hpts_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_hpts_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tcp_hpts_entry*, align 8
  %4 = alloca %struct.epoch_tracker, align 4
  %5 = alloca %struct.timeval, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.tcp_hpts_entry*
  store %struct.tcp_hpts_entry* %8, %struct.tcp_hpts_entry** %3, align 8
  %9 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %10 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %9, i32 0, i32 4
  %11 = call i32 @mtx_lock(i32* %10)
  %12 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %13 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %18 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %17, i32 0, i32 7
  %19 = call i32 @callout_stop(i32* %18)
  br label %38

20:                                               ; preds = %1
  %21 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %22 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %21, i32 0, i32 7
  %23 = call i64 @callout_pending(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %27 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %26, i32 0, i32 7
  %28 = call i32 @callout_active(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %32 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %31, i32 0, i32 4
  %33 = call i32 @mtx_unlock(i32* %32)
  br label %124

34:                                               ; preds = %25
  %35 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %36 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %35, i32 0, i32 7
  %37 = call i32 @callout_deactivate(i32* %36)
  br label %38

38:                                               ; preds = %34, %16
  %39 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %40 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %39, i32 0, i32 8
  store i64 0, i64* %40, align 8
  %41 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %42 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %4, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @NET_EPOCH_ENTER(i32 %44)
  %46 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %47 = call i32 @tcp_hptsi(%struct.tcp_hpts_entry* %46)
  %48 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %4, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @NET_EPOCH_EXIT(i32 %49)
  %51 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %52 = call i32 @HPTS_MTX_ASSERT(%struct.tcp_hpts_entry* %51)
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %55 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @HPTS_TICKS_PER_USEC, align 4
  %58 = mul nsw i32 %56, %57
  %59 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = load i32, i32* @tcp_min_hptsi_time, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %38
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @tcp_min_hptsi_time, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %71 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @tcp_min_hptsi_time, align 4
  %73 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i32 %72, i32* %73, align 8
  %74 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %75 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %74, i32 0, i32 3
  store i32 1, i32* %75, align 4
  br label %81

76:                                               ; preds = %62, %38
  %77 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %78 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %77, i32 0, i32 2
  store i32 0, i32* %78, align 8
  %79 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %80 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %79, i32 0, i32 3
  store i32 0, i32* %80, align 4
  br label %81

81:                                               ; preds = %76, %67
  %82 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %83 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  %84 = bitcast %struct.timeval* %5 to { i32, i64 }*
  %85 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %84, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @tvtosbt(i32 %86, i64 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i64, i64* @tcp_hpts_callout_skip_swi, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %81
  %93 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %94 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %93, i32 0, i32 7
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @hpts_timeout_swi, align 4
  %97 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %98 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %99 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @C_DIRECT_EXEC, align 4
  %102 = load i32, i32* @tcp_hpts_precision, align 4
  %103 = call i32 @C_PREL(i32 %102)
  %104 = or i32 %101, %103
  %105 = call i32 @callout_reset_sbt_on(i32* %94, i32 %95, i32 0, i32 %96, %struct.tcp_hpts_entry* %97, i32 %100, i32 %104)
  br label %118

106:                                              ; preds = %81
  %107 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %108 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %107, i32 0, i32 7
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @hpts_timeout_dir, align 4
  %111 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %112 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %113 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @tcp_hpts_precision, align 4
  %116 = call i32 @C_PREL(i32 %115)
  %117 = call i32 @callout_reset_sbt_on(i32* %108, i32 %109, i32 0, i32 %110, %struct.tcp_hpts_entry* %111, i32 %114, i32 %116)
  br label %118

118:                                              ; preds = %106, %92
  %119 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %120 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %119, i32 0, i32 5
  store i64 0, i64* %120, align 8
  %121 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %3, align 8
  %122 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %121, i32 0, i32 4
  %123 = call i32 @mtx_unlock(i32* %122)
  br label %124

124:                                              ; preds = %118, %30
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i64 @callout_pending(i32*) #1

declare dso_local i32 @callout_active(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @callout_deactivate(i32*) #1

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local i32 @tcp_hptsi(%struct.tcp_hpts_entry*) #1

declare dso_local i32 @NET_EPOCH_EXIT(i32) #1

declare dso_local i32 @HPTS_MTX_ASSERT(%struct.tcp_hpts_entry*) #1

declare dso_local i32 @tvtosbt(i32, i64) #1

declare dso_local i32 @callout_reset_sbt_on(i32*, i32, i32, i32, %struct.tcp_hpts_entry*, i32, i32) #1

declare dso_local i32 @C_PREL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
