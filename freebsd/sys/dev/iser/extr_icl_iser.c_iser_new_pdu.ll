; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_icl_iser.c_iser_new_pdu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_icl_iser.c_iser_new_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_pdu = type { i32*, %struct.icl_conn* }
%struct.icl_conn = type { i32 }
%struct.icl_iser_pdu = type { %struct.TYPE_2__, %struct.icl_pdu, %struct.iser_conn* }
%struct.TYPE_2__ = type { i32 }
%struct.iser_conn = type { i32 }

@icl_pdu_zone = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to allocate %zd bytes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.icl_pdu* @iser_new_pdu(%struct.icl_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.icl_pdu*, align 8
  %4 = alloca %struct.icl_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.icl_iser_pdu*, align 8
  %7 = alloca %struct.icl_pdu*, align 8
  %8 = alloca %struct.iser_conn*, align 8
  store %struct.icl_conn* %0, %struct.icl_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %10 = call %struct.iser_conn* @icl_to_iser_conn(%struct.icl_conn* %9)
  store %struct.iser_conn* %10, %struct.iser_conn** %8, align 8
  %11 = load i32, i32* @icl_pdu_zone, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.icl_iser_pdu* @uma_zalloc(i32 %11, i32 %14)
  store %struct.icl_iser_pdu* %15, %struct.icl_iser_pdu** %6, align 8
  %16 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %6, align 8
  %17 = icmp eq %struct.icl_iser_pdu* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @ISER_WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 32)
  store %struct.icl_pdu* null, %struct.icl_pdu** %3, align 8
  br label %35

20:                                               ; preds = %2
  %21 = load %struct.iser_conn*, %struct.iser_conn** %8, align 8
  %22 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %6, align 8
  %23 = getelementptr inbounds %struct.icl_iser_pdu, %struct.icl_iser_pdu* %22, i32 0, i32 2
  store %struct.iser_conn* %21, %struct.iser_conn** %23, align 8
  %24 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %6, align 8
  %25 = getelementptr inbounds %struct.icl_iser_pdu, %struct.icl_iser_pdu* %24, i32 0, i32 1
  store %struct.icl_pdu* %25, %struct.icl_pdu** %7, align 8
  %26 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %27 = load %struct.icl_pdu*, %struct.icl_pdu** %7, align 8
  %28 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %27, i32 0, i32 1
  store %struct.icl_conn* %26, %struct.icl_conn** %28, align 8
  %29 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %6, align 8
  %30 = getelementptr inbounds %struct.icl_iser_pdu, %struct.icl_iser_pdu* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.icl_pdu*, %struct.icl_pdu** %7, align 8
  %33 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  %34 = load %struct.icl_pdu*, %struct.icl_pdu** %7, align 8
  store %struct.icl_pdu* %34, %struct.icl_pdu** %3, align 8
  br label %35

35:                                               ; preds = %20, %18
  %36 = load %struct.icl_pdu*, %struct.icl_pdu** %3, align 8
  ret %struct.icl_pdu* %36
}

declare dso_local %struct.iser_conn* @icl_to_iser_conn(%struct.icl_conn*) #1

declare dso_local %struct.icl_iser_pdu* @uma_zalloc(i32, i32) #1

declare dso_local i32 @ISER_WARN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
