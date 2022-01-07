; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ac/extr_ac.c_log_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ac/extr_ac.c_log_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmpx = type { i64, i32, i32 }
%struct.utmpx_entry = type { i32, i32, i32 }
%struct.timeval = type { i32 }

@CurUtmpx = common dso_local global i32 0, align 4
@BOOT_TIME = common dso_local global i64 0, align 8
@SHUTDOWN_TIME = common dso_local global i64 0, align 8
@DEAD_PROCESS = common dso_local global i64 0, align 8
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.utmpx*)* @log_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_out(%struct.utmpx* %0) #0 {
  %2 = alloca %struct.utmpx*, align 8
  %3 = alloca %struct.utmpx_entry*, align 8
  %4 = alloca %struct.utmpx_entry*, align 8
  %5 = alloca %struct.utmpx_entry*, align 8
  %6 = alloca %struct.timeval, align 4
  store %struct.utmpx* %0, %struct.utmpx** %2, align 8
  %7 = call %struct.utmpx_entry* @SLIST_FIRST(i32* @CurUtmpx)
  store %struct.utmpx_entry* %7, %struct.utmpx_entry** %3, align 8
  store %struct.utmpx_entry* null, %struct.utmpx_entry** %4, align 8
  br label %8

8:                                                ; preds = %71, %1
  %9 = load %struct.utmpx_entry*, %struct.utmpx_entry** %3, align 8
  %10 = icmp ne %struct.utmpx_entry* %9, null
  br i1 %10, label %11, label %72

11:                                               ; preds = %8
  %12 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %13 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BOOT_TIME, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %38, label %17

17:                                               ; preds = %11
  %18 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %19 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SHUTDOWN_TIME, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %38, label %23

23:                                               ; preds = %17
  %24 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %25 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DEAD_PROCESS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %23
  %30 = load %struct.utmpx_entry*, %struct.utmpx_entry** %3, align 8
  %31 = getelementptr inbounds %struct.utmpx_entry, %struct.utmpx_entry* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %34 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @memcmp(i32 %32, i32 %35, i32 4)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %29, %17, %11
  %39 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %40 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %39, i32 0, i32 1
  %41 = load %struct.utmpx_entry*, %struct.utmpx_entry** %3, align 8
  %42 = getelementptr inbounds %struct.utmpx_entry, %struct.utmpx_entry* %41, i32 0, i32 1
  %43 = call i32 @timersub(i32* %40, i32* %42, %struct.timeval* %6)
  %44 = load %struct.utmpx_entry*, %struct.utmpx_entry** %3, align 8
  %45 = getelementptr inbounds %struct.utmpx_entry, %struct.utmpx_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @update_user(i32 %46, i32 %48)
  %50 = load %struct.utmpx_entry*, %struct.utmpx_entry** %3, align 8
  store %struct.utmpx_entry* %50, %struct.utmpx_entry** %5, align 8
  %51 = load %struct.utmpx_entry*, %struct.utmpx_entry** %3, align 8
  %52 = load i32, i32* @next, align 4
  %53 = call %struct.utmpx_entry* @SLIST_NEXT(%struct.utmpx_entry* %51, i32 %52)
  store %struct.utmpx_entry* %53, %struct.utmpx_entry** %3, align 8
  %54 = load %struct.utmpx_entry*, %struct.utmpx_entry** %4, align 8
  %55 = icmp eq %struct.utmpx_entry* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %38
  %57 = load i32, i32* @next, align 4
  %58 = call i32 @SLIST_REMOVE_HEAD(i32* @CurUtmpx, i32 %57)
  br label %63

59:                                               ; preds = %38
  %60 = load %struct.utmpx_entry*, %struct.utmpx_entry** %4, align 8
  %61 = load i32, i32* @next, align 4
  %62 = call i32 @SLIST_REMOVE_AFTER(%struct.utmpx_entry* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %56
  %64 = load %struct.utmpx_entry*, %struct.utmpx_entry** %5, align 8
  %65 = call i32 @free(%struct.utmpx_entry* %64)
  br label %71

66:                                               ; preds = %29, %23
  %67 = load %struct.utmpx_entry*, %struct.utmpx_entry** %3, align 8
  store %struct.utmpx_entry* %67, %struct.utmpx_entry** %4, align 8
  %68 = load %struct.utmpx_entry*, %struct.utmpx_entry** %3, align 8
  %69 = load i32, i32* @next, align 4
  %70 = call %struct.utmpx_entry* @SLIST_NEXT(%struct.utmpx_entry* %68, i32 %69)
  store %struct.utmpx_entry* %70, %struct.utmpx_entry** %3, align 8
  br label %71

71:                                               ; preds = %66, %63
  br label %8

72:                                               ; preds = %8
  ret void
}

declare dso_local %struct.utmpx_entry* @SLIST_FIRST(i32*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @timersub(i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @update_user(i32, i32) #1

declare dso_local %struct.utmpx_entry* @SLIST_NEXT(%struct.utmpx_entry*, i32) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @SLIST_REMOVE_AFTER(%struct.utmpx_entry*, i32) #1

declare dso_local i32 @free(%struct.utmpx_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
