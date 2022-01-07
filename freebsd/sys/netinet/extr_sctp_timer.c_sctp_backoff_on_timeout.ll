; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_timer.c_sctp_backoff_on_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_timer.c_sctp_backoff_on_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.sctp_tcb.0*, %struct.sctp_nets*)* }
%struct.sctp_tcb.0 = type opaque
%struct.sctp_nets = type opaque
%struct.sctp_nets.1 = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*, %struct.sctp_nets.1*, i32, i32, i32)* @sctp_backoff_on_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_backoff_on_timeout(%struct.sctp_tcb* %0, %struct.sctp_nets.1* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sctp_tcb*, align 8
  %7 = alloca %struct.sctp_nets.1*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %6, align 8
  store %struct.sctp_nets.1* %1, %struct.sctp_nets.1** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.sctp_nets.1*, %struct.sctp_nets.1** %7, align 8
  %12 = getelementptr inbounds %struct.sctp_nets.1, %struct.sctp_nets.1* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %5
  %16 = load %struct.sctp_nets.1*, %struct.sctp_nets.1** %7, align 8
  %17 = getelementptr inbounds %struct.sctp_nets.1, %struct.sctp_nets.1* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %22 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.sctp_nets.1*, %struct.sctp_nets.1** %7, align 8
  %26 = getelementptr inbounds %struct.sctp_nets.1, %struct.sctp_nets.1* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %34

27:                                               ; preds = %15
  %28 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %29 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sctp_nets.1*, %struct.sctp_nets.1** %7, align 8
  %33 = getelementptr inbounds %struct.sctp_nets.1, %struct.sctp_nets.1* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %27, %20
  br label %35

35:                                               ; preds = %34, %5
  %36 = load %struct.sctp_nets.1*, %struct.sctp_nets.1** %7, align 8
  %37 = getelementptr inbounds %struct.sctp_nets.1, %struct.sctp_nets.1* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = shl i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.sctp_nets.1*, %struct.sctp_nets.1** %7, align 8
  %41 = getelementptr inbounds %struct.sctp_nets.1, %struct.sctp_nets.1* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %44 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %42, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %35
  %49 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %50 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.sctp_nets.1*, %struct.sctp_nets.1** %7, align 8
  %54 = getelementptr inbounds %struct.sctp_nets.1, %struct.sctp_nets.1* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %48, %35
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %61, %58
  %65 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %66 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32 (%struct.sctp_tcb.0*, %struct.sctp_nets*)*, i32 (%struct.sctp_tcb.0*, %struct.sctp_nets*)** %68, align 8
  %70 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %71 = bitcast %struct.sctp_tcb* %70 to %struct.sctp_tcb.0*
  %72 = load %struct.sctp_nets.1*, %struct.sctp_nets.1** %7, align 8
  %73 = bitcast %struct.sctp_nets.1* %72 to %struct.sctp_nets*
  %74 = call i32 %69(%struct.sctp_tcb.0* %71, %struct.sctp_nets* %73)
  br label %75

75:                                               ; preds = %64, %61, %55
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
