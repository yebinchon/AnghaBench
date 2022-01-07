; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_nm_bdg_polling_start_kthreads.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_nm_bdg_polling_start_kthreads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nm_bdg_polling_state = type { i32, i32, %struct.nm_bdg_kthread* }
%struct.nm_bdg_kthread = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"polling is not configured\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"error in nm_kthread_start(): %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nm_bdg_polling_state*)* @nm_bdg_polling_start_kthreads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nm_bdg_polling_start_kthreads(%struct.nm_bdg_polling_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nm_bdg_polling_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nm_bdg_kthread*, align 8
  %8 = alloca %struct.nm_bdg_kthread*, align 8
  store %struct.nm_bdg_polling_state* %0, %struct.nm_bdg_polling_state** %3, align 8
  %9 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %3, align 8
  %10 = icmp ne %struct.nm_bdg_polling_state* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @nm_prerr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EFAULT, align 4
  store i32 %13, i32* %2, align 4
  br label %67

14:                                               ; preds = %1
  %15 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %3, align 8
  %16 = getelementptr inbounds %struct.nm_bdg_polling_state, %struct.nm_bdg_polling_state* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %40, %14
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %3, align 8
  %20 = getelementptr inbounds %struct.nm_bdg_polling_state, %struct.nm_bdg_polling_state* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %17
  %24 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %3, align 8
  %25 = getelementptr inbounds %struct.nm_bdg_polling_state, %struct.nm_bdg_polling_state* %24, i32 0, i32 2
  %26 = load %struct.nm_bdg_kthread*, %struct.nm_bdg_kthread** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.nm_bdg_kthread, %struct.nm_bdg_kthread* %26, i64 %28
  store %struct.nm_bdg_kthread* %29, %struct.nm_bdg_kthread** %7, align 8
  %30 = load %struct.nm_bdg_kthread*, %struct.nm_bdg_kthread** %7, align 8
  %31 = getelementptr inbounds %struct.nm_bdg_kthread, %struct.nm_bdg_kthread* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @nm_os_kctx_worker_start(i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = load i32, i32* %4, align 4
  %38 = call i32 (i8*, ...) @nm_prerr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %44

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %17

43:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %67

44:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %60, %44
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %3, align 8
  %51 = getelementptr inbounds %struct.nm_bdg_polling_state, %struct.nm_bdg_polling_state* %50, i32 0, i32 2
  %52 = load %struct.nm_bdg_kthread*, %struct.nm_bdg_kthread** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.nm_bdg_kthread, %struct.nm_bdg_kthread* %52, i64 %54
  store %struct.nm_bdg_kthread* %55, %struct.nm_bdg_kthread** %8, align 8
  %56 = load %struct.nm_bdg_kthread*, %struct.nm_bdg_kthread** %8, align 8
  %57 = getelementptr inbounds %struct.nm_bdg_kthread, %struct.nm_bdg_kthread* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @nm_os_kctx_worker_stop(i32 %58)
  br label %60

60:                                               ; preds = %49
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %45

63:                                               ; preds = %45
  %64 = load %struct.nm_bdg_polling_state*, %struct.nm_bdg_polling_state** %3, align 8
  %65 = getelementptr inbounds %struct.nm_bdg_polling_state, %struct.nm_bdg_polling_state* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %63, %43, %11
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @nm_prerr(i8*, ...) #1

declare dso_local i32 @nm_os_kctx_worker_start(i32) #1

declare dso_local i32 @nm_os_kctx_worker_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
