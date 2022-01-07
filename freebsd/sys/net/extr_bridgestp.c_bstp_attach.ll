; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bstp_cb_ops = type { i32, i32 }

@BSTP_DEFAULT_MAX_AGE = common dso_local global i32 0, align 4
@BSTP_DEFAULT_HELLO_TIME = common dso_local global i32 0, align 4
@BSTP_DEFAULT_FORWARD_DELAY = common dso_local global i32 0, align 4
@BSTP_DEFAULT_BRIDGE_PRIORITY = common dso_local global i32 0, align 4
@BSTP_DEFAULT_HOLD_TIME = common dso_local global i32 0, align 4
@BSTP_DEFAULT_MIGRATE_DELAY = common dso_local global i32 0, align 4
@BSTP_DEFAULT_HOLD_COUNT = common dso_local global i32 0, align 4
@BSTP_PROTO_RSTP = common dso_local global i32 0, align 4
@curvnet = common dso_local global i32 0, align 4
@bstp_list_mtx = common dso_local global i32 0, align 4
@bstp_list = common dso_local global i32 0, align 4
@bs_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bstp_attach(%struct.bstp_state* %0, %struct.bstp_cb_ops* %1) #0 {
  %3 = alloca %struct.bstp_state*, align 8
  %4 = alloca %struct.bstp_cb_ops*, align 8
  store %struct.bstp_state* %0, %struct.bstp_state** %3, align 8
  store %struct.bstp_cb_ops* %1, %struct.bstp_cb_ops** %4, align 8
  %5 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %6 = call i32 @BSTP_LOCK_INIT(%struct.bstp_state* %5)
  %7 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %8 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %7, i32 0, i32 14
  %9 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %10 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %9, i32 0, i32 13
  %11 = call i32 @callout_init_mtx(i32* %8, i32* %10, i32 0)
  %12 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %13 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %12, i32 0, i32 12
  %14 = call i32 @LIST_INIT(i32* %13)
  %15 = load i32, i32* @BSTP_DEFAULT_MAX_AGE, align 4
  %16 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %17 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %16, i32 0, i32 11
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @BSTP_DEFAULT_HELLO_TIME, align 4
  %19 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %20 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %19, i32 0, i32 10
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @BSTP_DEFAULT_FORWARD_DELAY, align 4
  %22 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %23 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @BSTP_DEFAULT_BRIDGE_PRIORITY, align 4
  %25 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %26 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @BSTP_DEFAULT_HOLD_TIME, align 4
  %28 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %29 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @BSTP_DEFAULT_MIGRATE_DELAY, align 4
  %31 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %32 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @BSTP_DEFAULT_HOLD_COUNT, align 4
  %34 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %35 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @BSTP_PROTO_RSTP, align 4
  %37 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %38 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load %struct.bstp_cb_ops*, %struct.bstp_cb_ops** %4, align 8
  %40 = getelementptr inbounds %struct.bstp_cb_ops, %struct.bstp_cb_ops* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %43 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.bstp_cb_ops*, %struct.bstp_cb_ops** %4, align 8
  %45 = getelementptr inbounds %struct.bstp_cb_ops, %struct.bstp_cb_ops* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %48 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @curvnet, align 4
  %50 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %51 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %53 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %52, i32 0, i32 0
  %54 = call i32 @getmicrotime(i32* %53)
  %55 = call i32 @mtx_lock(i32* @bstp_list_mtx)
  %56 = load %struct.bstp_state*, %struct.bstp_state** %3, align 8
  %57 = load i32, i32* @bs_list, align 4
  %58 = call i32 @LIST_INSERT_HEAD(i32* @bstp_list, %struct.bstp_state* %56, i32 %57)
  %59 = call i32 @mtx_unlock(i32* @bstp_list_mtx)
  ret void
}

declare dso_local i32 @BSTP_LOCK_INIT(%struct.bstp_state*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @getmicrotime(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.bstp_state*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
