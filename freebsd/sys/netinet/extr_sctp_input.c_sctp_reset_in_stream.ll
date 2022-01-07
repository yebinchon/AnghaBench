; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_reset_in_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_reset_in_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SCTP_NOTIFY_STR_RESET_RECV = common dso_local global i32 0, align 4
@SCTP_SO_NOT_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_reset_in_stream(%struct.sctp_tcb* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.sctp_tcb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %12

12:                                               ; preds = %37, %11
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %12
  %17 = load i64*, i64** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @ntohs(i64 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %24 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp uge i64 %22, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %37

29:                                               ; preds = %16
  %30 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %31 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 4
  br label %37

37:                                               ; preds = %29, %28
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %7, align 8
  br label %12

40:                                               ; preds = %12
  br label %61

41:                                               ; preds = %3
  store i64* null, i64** %6, align 8
  store i64 0, i64* %7, align 8
  br label %42

42:                                               ; preds = %57, %41
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %45 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %43, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %51 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 -1, i32* %56, align 4
  br label %57

57:                                               ; preds = %49
  %58 = load i64, i64* %7, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %7, align 8
  br label %42

60:                                               ; preds = %42
  br label %61

61:                                               ; preds = %60, %40
  %62 = load i32, i32* @SCTP_NOTIFY_STR_RESET_RECV, align 4
  %63 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i64*, i64** %6, align 8
  %66 = bitcast i64* %65 to i8*
  %67 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %68 = call i32 @sctp_ulp_notify(i32 %62, %struct.sctp_tcb* %63, i64 %64, i8* %66, i32 %67)
  ret void
}

declare dso_local i64 @ntohs(i64) #1

declare dso_local i32 @sctp_ulp_notify(i32, %struct.sctp_tcb*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
