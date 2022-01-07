; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mppe.c_MPPE_InitState.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mppe.c_MPPE_InitState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mppe_state = type { i32, i32, i32 }
%struct.fsm_opt = type { i32 }

@MPPE_OPT_BITMASK = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unexpected MPPE options 0x%08x\0A\00", align 1
@MPPE_OPT_STATELESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mppe_state* (%struct.fsm_opt*)* @MPPE_InitState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mppe_state* @MPPE_InitState(%struct.fsm_opt* %0) #0 {
  %2 = alloca %struct.mppe_state*, align 8
  %3 = alloca %struct.fsm_opt*, align 8
  %4 = alloca %struct.mppe_state*, align 8
  %5 = alloca i32, align 4
  store %struct.fsm_opt* %0, %struct.fsm_opt** %3, align 8
  %6 = call %struct.mppe_state* @calloc(i32 1, i32 12)
  store %struct.mppe_state* %6, %struct.mppe_state** %4, align 8
  %7 = icmp ne %struct.mppe_state* %6, null
  br i1 %7, label %8, label %47

8:                                                ; preds = %1
  %9 = load %struct.fsm_opt*, %struct.fsm_opt** %3, align 8
  %10 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ua_ntohl(i32 %11, i32* %5)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @MPPE_OPT_BITMASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %31 [
    i32 130, label %16
    i32 128, label %21
    i32 129, label %26
  ]

16:                                               ; preds = %8
  %17 = load %struct.mppe_state*, %struct.mppe_state** %4, align 8
  %18 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %17, i32 0, i32 0
  store i32 16, i32* %18, align 4
  %19 = load %struct.mppe_state*, %struct.mppe_state** %4, align 8
  %20 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %19, i32 0, i32 1
  store i32 128, i32* %20, align 4
  br label %37

21:                                               ; preds = %8
  %22 = load %struct.mppe_state*, %struct.mppe_state** %4, align 8
  %23 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %22, i32 0, i32 0
  store i32 8, i32* %23, align 4
  %24 = load %struct.mppe_state*, %struct.mppe_state** %4, align 8
  %25 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %24, i32 0, i32 1
  store i32 56, i32* %25, align 4
  br label %37

26:                                               ; preds = %8
  %27 = load %struct.mppe_state*, %struct.mppe_state** %4, align 8
  %28 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %27, i32 0, i32 0
  store i32 8, i32* %28, align 4
  %29 = load %struct.mppe_state*, %struct.mppe_state** %4, align 8
  %30 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %29, i32 0, i32 1
  store i32 40, i32* %30, align 4
  br label %37

31:                                               ; preds = %8
  %32 = load i32, i32* @LogWARN, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @log_Printf(i32 %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.mppe_state*, %struct.mppe_state** %4, align 8
  %36 = call i32 @free(%struct.mppe_state* %35)
  store %struct.mppe_state* null, %struct.mppe_state** %2, align 8
  br label %49

37:                                               ; preds = %26, %21, %16
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MPPE_OPT_STATELESS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load %struct.mppe_state*, %struct.mppe_state** %4, align 8
  %46 = getelementptr inbounds %struct.mppe_state, %struct.mppe_state* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %37, %1
  %48 = load %struct.mppe_state*, %struct.mppe_state** %4, align 8
  store %struct.mppe_state* %48, %struct.mppe_state** %2, align 8
  br label %49

49:                                               ; preds = %47, %31
  %50 = load %struct.mppe_state*, %struct.mppe_state** %2, align 8
  ret %struct.mppe_state* %50
}

declare dso_local %struct.mppe_state* @calloc(i32, i32) #1

declare dso_local i32 @ua_ntohl(i32, i32*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @free(%struct.mppe_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
