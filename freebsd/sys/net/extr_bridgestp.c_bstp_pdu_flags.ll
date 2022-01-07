; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_pdu_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_pdu_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_port = type { i32, i32, i32, i64, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@BSTP_PDU_F_P = common dso_local global i32 0, align 4
@BSTP_PDU_F_A = common dso_local global i32 0, align 4
@BSTP_PDU_F_TC = common dso_local global i32 0, align 4
@BSTP_PDU_F_TCA = common dso_local global i32 0, align 4
@BSTP_PDU_F_L = common dso_local global i32 0, align 4
@BSTP_PDU_F_F = common dso_local global i32 0, align 4
@BSTP_PDU_F_ROOT = common dso_local global i32 0, align 4
@BSTP_PDU_PRSHIFT = common dso_local global i32 0, align 4
@BSTP_PDU_F_ALT = common dso_local global i32 0, align 4
@BSTP_PDU_F_DESG = common dso_local global i32 0, align 4
@BSTP_PDU_STPMASK = common dso_local global i32 0, align 4
@BSTP_PDU_RSTPMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bstp_port*)* @bstp_pdu_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bstp_pdu_flags(%struct.bstp_port* %0) #0 {
  %2 = alloca %struct.bstp_port*, align 8
  %3 = alloca i32, align 4
  store %struct.bstp_port* %0, %struct.bstp_port** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %5 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %4, i32 0, i32 6
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %10 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 135
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load i32, i32* @BSTP_PDU_F_P, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %13, %8, %1
  %18 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %19 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @BSTP_PDU_F_A, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %28 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* @BSTP_PDU_F_TC, align 4
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %26
  %37 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %38 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @BSTP_PDU_F_TCA, align 4
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %47 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %59 [
    i32 134, label %49
    i32 135, label %53
  ]

49:                                               ; preds = %45
  %50 = load i32, i32* @BSTP_PDU_F_L, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %59

53:                                               ; preds = %45
  %54 = load i32, i32* @BSTP_PDU_F_L, align 4
  %55 = load i32, i32* @BSTP_PDU_F_F, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %45, %53, %49
  %60 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %61 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %81 [
    i32 128, label %63
    i32 131, label %69
    i32 130, label %69
    i32 129, label %75
  ]

63:                                               ; preds = %59
  %64 = load i32, i32* @BSTP_PDU_F_ROOT, align 4
  %65 = load i32, i32* @BSTP_PDU_PRSHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %3, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %3, align 4
  br label %81

69:                                               ; preds = %59, %59
  %70 = load i32, i32* @BSTP_PDU_F_ALT, align 4
  %71 = load i32, i32* @BSTP_PDU_PRSHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* %3, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %3, align 4
  br label %81

75:                                               ; preds = %59
  %76 = load i32, i32* @BSTP_PDU_F_DESG, align 4
  %77 = load i32, i32* @BSTP_PDU_PRSHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = load i32, i32* %3, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %59, %75, %69, %63
  %82 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %83 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  switch i32 %84, label %93 [
    i32 132, label %85
    i32 133, label %89
  ]

85:                                               ; preds = %81
  %86 = load i32, i32* @BSTP_PDU_STPMASK, align 4
  %87 = load i32, i32* %3, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %3, align 4
  br label %93

89:                                               ; preds = %81
  %90 = load i32, i32* @BSTP_PDU_RSTPMASK, align 4
  %91 = load i32, i32* %3, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %81, %89, %85
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
