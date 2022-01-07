; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_pdu_receive_ahs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_pdu_receive_ahs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { i64, i32*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"failed to receive AHS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icl_pdu*, i64*)* @icl_pdu_receive_ahs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_pdu_receive_ahs(%struct.icl_pdu* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.icl_pdu*, align 8
  %5 = alloca i64*, align 8
  store %struct.icl_pdu* %0, %struct.icl_pdu** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %7 = call i64 @icl_pdu_ahs_length(%struct.icl_pdu* %6)
  %8 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %9 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %8, i32 0, i32 0
  store i64 %7, i64* %9, align 8
  %10 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %11 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %17 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %20 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32* @icl_conn_receive(i32 %18, i64 %21)
  %23 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %24 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  %25 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %26 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %15
  %30 = call i32 @ICL_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %38

31:                                               ; preds = %15
  %32 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %33 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %5, align 8
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %36, %34
  store i64 %37, i64* %35, align 8
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %31, %29, %14
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @icl_pdu_ahs_length(%struct.icl_pdu*) #1

declare dso_local i32* @icl_conn_receive(i32, i64) #1

declare dso_local i32 @ICL_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
