; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_pdu_receive_bhs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_pdu_receive_bhs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"failed to receive BHS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icl_pdu*, i64*)* @icl_pdu_receive_bhs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_pdu_receive_bhs(%struct.icl_pdu* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.icl_pdu*, align 8
  %5 = alloca i64*, align 8
  store %struct.icl_pdu* %0, %struct.icl_pdu** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %7 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %10 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @icl_conn_receive_buf(i32 %8, i32 %11, i32 4)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @ICL_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load i64*, i64** %5, align 8
  %18 = load i64, i64* %17, align 8
  %19 = sub i64 %18, 4
  store i64 %19, i64* %17, align 8
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %14
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i64 @icl_conn_receive_buf(i32, i32, i32) #1

declare dso_local i32 @ICL_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
