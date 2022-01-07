; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_auth.c_sctp_clear_cachedkeys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_auth.c_sctp_clear_cachedkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_clear_cachedkeys(%struct.sctp_tcb* %0, i64 %1) #0 {
  %3 = alloca %struct.sctp_tcb*, align 8
  %4 = alloca i64, align 8
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %6 = icmp eq %struct.sctp_tcb* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %46

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %11 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %9, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %8
  %17 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %18 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @sctp_free_key(i32* %21)
  %23 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %24 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %16, %8
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %30 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %28, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %27
  %36 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %37 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @sctp_free_key(i32* %40)
  %42 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %43 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %7, %35, %27
  ret void
}

declare dso_local i32 @sctp_free_key(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
