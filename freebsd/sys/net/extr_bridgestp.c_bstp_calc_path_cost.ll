; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_calc_path_cost.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_calc_path_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_port = type { i32, i32, i64, %struct.ifnet* }
%struct.ifnet = type { i64, i32 }

@BSTP_PORT_ADMCOST = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i64 0, align 8
@BSTP_PORT_PNDCOST = common dso_local global i32 0, align 4
@BSTP_DEFAULT_PATH_COST = common dso_local global i32 0, align 4
@BSTP_MAX_PATH_COST = common dso_local global i32 0, align 4
@BSTP_PROTO_STP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bstp_port*)* @bstp_calc_path_cost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bstp_calc_path_cost(%struct.bstp_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bstp_port*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store %struct.bstp_port* %0, %struct.bstp_port** %3, align 8
  %6 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %7 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %6, i32 0, i32 3
  %8 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  store %struct.ifnet* %8, %struct.ifnet** %4, align 8
  %9 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %10 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @BSTP_PORT_ADMCOST, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %17 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %2, align 4
  br label %64

19:                                               ; preds = %1
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @LINK_STATE_DOWN, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load i32, i32* @BSTP_PORT_PNDCOST, align 4
  %27 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %28 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load i32, i32* @BSTP_DEFAULT_PATH_COST, align 4
  store i32 %31, i32* %2, align 4
  br label %64

32:                                               ; preds = %19
  %33 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 1000
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @BSTP_DEFAULT_PATH_COST, align 4
  store i32 %38, i32* %2, align 4
  br label %64

39:                                               ; preds = %32
  %40 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sdiv i32 %42, 1000
  %44 = sext i32 %43 to i64
  %45 = udiv i64 20000000000, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @BSTP_MAX_PATH_COST, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* @BSTP_MAX_PATH_COST, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %39
  %53 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %54 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BSTP_PROTO_STP, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i32, i32* %5, align 4
  %60 = icmp sgt i32 %59, 65535
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 65535, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %58, %52
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %37, %25, %15
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
