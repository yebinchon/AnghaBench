; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_ss_functions.c_sctp_ss_default_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_ss_functions.c_sctp_ss_default_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.sctp_tcb.0*, %struct.TYPE_8__*, i32*, i32*, i32)* }
%struct.sctp_tcb.0 = type opaque
%struct.sctp_association = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32*, i32* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*, %struct.sctp_association*, i32)* @sctp_ss_default_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_ss_default_init(%struct.sctp_tcb* %0, %struct.sctp_association* %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_tcb*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %4, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %12 = call i32 @SCTP_TCB_SEND_LOCK(%struct.sctp_tcb* %11)
  br label %13

13:                                               ; preds = %10, %3
  %14 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %15 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %18 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store i32* null, i32** %19, align 8
  %20 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %21 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i32 @TAILQ_INIT(i32* %23)
  store i64 0, i64* %7, align 8
  br label %25

25:                                               ; preds = %49, %13
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %28 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %26, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %25
  %33 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %34 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32 (%struct.sctp_tcb.0*, %struct.TYPE_8__*, i32*, i32*, i32)*, i32 (%struct.sctp_tcb.0*, %struct.TYPE_8__*, i32*, i32*, i32)** %36, align 8
  %38 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %39 = bitcast %struct.sctp_tcb* %38 to %struct.sctp_tcb.0*
  %40 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %41 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %40, i32 0, i32 0
  %42 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %43 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = call i32 %37(%struct.sctp_tcb.0* %39, %struct.TYPE_8__* %41, i32* %47, i32* null, i32 1)
  br label %49

49:                                               ; preds = %32
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %25

52:                                               ; preds = %25
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.sctp_tcb*, %struct.sctp_tcb** %4, align 8
  %57 = call i32 @SCTP_TCB_SEND_UNLOCK(%struct.sctp_tcb* %56)
  br label %58

58:                                               ; preds = %55, %52
  ret void
}

declare dso_local i32 @SCTP_TCB_SEND_LOCK(%struct.sctp_tcb*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @SCTP_TCB_SEND_UNLOCK(%struct.sctp_tcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
