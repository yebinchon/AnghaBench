; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_icl_iser.c_iser_conn_pdu_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_icl_iser.c_iser_conn_pdu_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_conn = type { i32 }
%struct.icl_pdu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iser_conn = type { i64 }
%struct.icl_iser_pdu = type { i32 }

@ISER_CONN_UP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Failed to map TX descriptor pdu %p\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to send control pdu %p\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to send command pdu %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_conn_pdu_queue(%struct.icl_conn* %0, %struct.icl_pdu* %1) #0 {
  %3 = alloca %struct.icl_conn*, align 8
  %4 = alloca %struct.icl_pdu*, align 8
  %5 = alloca %struct.iser_conn*, align 8
  %6 = alloca %struct.icl_iser_pdu*, align 8
  %7 = alloca i32, align 4
  store %struct.icl_conn* %0, %struct.icl_conn** %3, align 8
  store %struct.icl_pdu* %1, %struct.icl_pdu** %4, align 8
  %8 = load %struct.icl_conn*, %struct.icl_conn** %3, align 8
  %9 = call %struct.iser_conn* @icl_to_iser_conn(%struct.icl_conn* %8)
  store %struct.iser_conn* %9, %struct.iser_conn** %5, align 8
  %10 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %11 = call %struct.icl_iser_pdu* @icl_to_iser_pdu(%struct.icl_pdu* %10)
  store %struct.icl_iser_pdu* %11, %struct.icl_iser_pdu** %6, align 8
  %12 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %13 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ISER_CONN_UP, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %57

18:                                               ; preds = %2
  %19 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %6, align 8
  %20 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %21 = call i32 @iser_initialize_headers(%struct.icl_iser_pdu* %19, %struct.iser_conn* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %6, align 8
  %26 = call i32 @ISER_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.icl_iser_pdu* %25)
  br label %57

27:                                               ; preds = %18
  %28 = load %struct.icl_pdu*, %struct.icl_pdu** %4, align 8
  %29 = getelementptr inbounds %struct.icl_pdu, %struct.icl_pdu* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @is_control_opcode(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %27
  %36 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %37 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %6, align 8
  %38 = call i32 @iser_send_control(%struct.iser_conn* %36, %struct.icl_iser_pdu* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %6, align 8
  %44 = call i32 @ISER_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.icl_iser_pdu* %43)
  br label %45

45:                                               ; preds = %42, %35
  br label %57

46:                                               ; preds = %27
  %47 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %48 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %6, align 8
  %49 = call i32 @iser_send_command(%struct.iser_conn* %47, %struct.icl_iser_pdu* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.icl_iser_pdu*, %struct.icl_iser_pdu** %6, align 8
  %55 = call i32 @ISER_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), %struct.icl_iser_pdu* %54)
  br label %56

56:                                               ; preds = %53, %46
  br label %57

57:                                               ; preds = %17, %24, %56, %45
  ret void
}

declare dso_local %struct.iser_conn* @icl_to_iser_conn(%struct.icl_conn*) #1

declare dso_local %struct.icl_iser_pdu* @icl_to_iser_pdu(%struct.icl_pdu*) #1

declare dso_local i32 @iser_initialize_headers(%struct.icl_iser_pdu*, %struct.iser_conn*) #1

declare dso_local i32 @ISER_ERR(i8*, %struct.icl_iser_pdu*) #1

declare dso_local i64 @is_control_opcode(i32) #1

declare dso_local i32 @iser_send_control(%struct.iser_conn*, %struct.icl_iser_pdu*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iser_send_command(%struct.iser_conn*, %struct.icl_iser_pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
