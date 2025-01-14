; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_set_path_cost.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_set_path_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_port = type { i64, i32, i32, %struct.bstp_state* }
%struct.bstp_state = type { i32 }

@BSTP_MAX_PATH_COST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BSTP_PROTO_STP = common dso_local global i64 0, align 8
@BSTP_PORT_ADMCOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bstp_set_path_cost(%struct.bstp_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bstp_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bstp_state*, align 8
  store %struct.bstp_port* %0, %struct.bstp_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %8 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %7, i32 0, i32 3
  %9 = load %struct.bstp_state*, %struct.bstp_state** %8, align 8
  store %struct.bstp_state* %9, %struct.bstp_state** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @BSTP_MAX_PATH_COST, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %55

15:                                               ; preds = %2
  %16 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %17 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BSTP_PROTO_STP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 65535
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 65535, i32* %5, align 4
  br label %25

25:                                               ; preds = %24, %21, %15
  %26 = load %struct.bstp_state*, %struct.bstp_state** %6, align 8
  %27 = call i32 @BSTP_LOCK(%struct.bstp_state* %26)
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load i32, i32* @BSTP_PORT_ADMCOST, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %34 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %38 = call i32 @bstp_calc_path_cost(%struct.bstp_port* %37)
  %39 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %40 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  br label %50

41:                                               ; preds = %25
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %44 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @BSTP_PORT_ADMCOST, align 4
  %46 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %47 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %41, %30
  %51 = load %struct.bstp_state*, %struct.bstp_state** %6, align 8
  %52 = call i32 @bstp_reinit(%struct.bstp_state* %51)
  %53 = load %struct.bstp_state*, %struct.bstp_state** %6, align 8
  %54 = call i32 @BSTP_UNLOCK(%struct.bstp_state* %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %50, %13
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @BSTP_LOCK(%struct.bstp_state*) #1

declare dso_local i32 @bstp_calc_path_cost(%struct.bstp_port*) #1

declare dso_local i32 @bstp_reinit(%struct.bstp_state*) #1

declare dso_local i32 @BSTP_UNLOCK(%struct.bstp_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
