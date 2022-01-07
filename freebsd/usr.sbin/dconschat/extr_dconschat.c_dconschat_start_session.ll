; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dconschat/extr_dconschat.c_dconschat_start_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dconschat/extr_dconschat.c_dconschat_start_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcons_state = type { i32 }

@poll_hz = common dso_local global i32 0, align 4
@DCONS_POLL_OFFLINE = common dso_local global i32 0, align 4
@F_READY = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%d/%d \00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dcons_state*)* @dconschat_start_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dconschat_start_session(%struct.dcons_state* %0) #0 {
  %2 = alloca %struct.dcons_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dcons_state* %0, %struct.dcons_state** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %9 = load i32, i32* @poll_hz, align 4
  %10 = sdiv i32 %9, 10
  %11 = call i32 @MAX(i32 1, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @poll_hz, align 4
  %13 = load i32, i32* @DCONS_POLL_OFFLINE, align 4
  %14 = mul nsw i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sdiv i32 %16, %17
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %1, %62
  %20 = load %struct.dcons_state*, %struct.dcons_state** %2, align 8
  %21 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @F_READY, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %37, %31
  %40 = load i64, i64* @verbose, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* @stdout, align 4
  %47 = call i32 @fflush(i32 %46)
  br label %48

48:                                               ; preds = %42, %39
  %49 = load %struct.dcons_state*, %struct.dcons_state** %2, align 8
  %50 = call i32 @dconschat_fetch_header(%struct.dcons_state* %49)
  br label %51

51:                                               ; preds = %48, %26, %19
  %52 = load %struct.dcons_state*, %struct.dcons_state** %2, align 8
  %53 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @F_READY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %7, align 4
  %60 = load %struct.dcons_state*, %struct.dcons_state** %2, align 8
  %61 = call i32 @dconschat_proc_dcons(%struct.dcons_state* %60)
  br label %62

62:                                               ; preds = %58, %51
  %63 = load %struct.dcons_state*, %struct.dcons_state** %2, align 8
  %64 = call i32 @dconschat_proc_socket(%struct.dcons_state* %63)
  br label %19
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @dconschat_fetch_header(%struct.dcons_state*) #1

declare dso_local i32 @dconschat_proc_dcons(%struct.dcons_state*) #1

declare dso_local i32 @dconschat_proc_socket(%struct.dcons_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
