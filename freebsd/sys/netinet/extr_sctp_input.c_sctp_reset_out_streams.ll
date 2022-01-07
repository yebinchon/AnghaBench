; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_reset_out_streams.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_input.c_sctp_reset_out_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@SCTP_NOTIFY_STR_RESET_SEND = common dso_local global i32 0, align 4
@SCTP_SO_NOT_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*, i64, i64*)* @sctp_reset_out_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_reset_out_streams(%struct.sctp_tcb* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.sctp_tcb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %12

12:                                               ; preds = %44, %11
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %47

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
  br label %44

29:                                               ; preds = %16
  %30 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %31 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %38 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %29, %28
  %45 = load i64, i64* %7, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %7, align 8
  br label %12

47:                                               ; preds = %12
  br label %75

48:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %49

49:                                               ; preds = %71, %48
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %52 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %50, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %49
  %57 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %58 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %65 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %56
  %72 = load i64, i64* %7, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %7, align 8
  br label %49

74:                                               ; preds = %49
  br label %75

75:                                               ; preds = %74, %47
  %76 = load i32, i32* @SCTP_NOTIFY_STR_RESET_SEND, align 4
  %77 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %78 = load i64, i64* %5, align 8
  %79 = load i64*, i64** %6, align 8
  %80 = bitcast i64* %79 to i8*
  %81 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %82 = call i32 @sctp_ulp_notify(i32 %76, %struct.sctp_tcb* %77, i64 %78, i8* %80, i32 %81)
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
