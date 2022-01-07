; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_auth.c_sctp_delete_sharedkey_ep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_auth.c_sctp_delete_sharedkey_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_inpcb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_delete_sharedkey_ep(%struct.sctp_inpcb* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_inpcb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.sctp_inpcb* %0, %struct.sctp_inpcb** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %8 = icmp eq %struct.sctp_inpcb* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %36

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %13 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %11, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 -1, i32* %3, align 4
  br label %36

18:                                               ; preds = %10
  %19 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %20 = getelementptr inbounds %struct.sctp_inpcb, %struct.sctp_inpcb* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %5, align 8
  %23 = call i32* @sctp_find_sharedkey(i32* %21, i64 %22)
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %36

27:                                               ; preds = %18
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @next, align 4
  %30 = call i32 @LIST_REMOVE(i32* %28, i32 %29)
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @sctp_free_sharedkey(i32* %31)
  %33 = load %struct.sctp_inpcb*, %struct.sctp_inpcb** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @sctp_clear_cachedkeys_ep(%struct.sctp_inpcb* %33, i64 %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %27, %26, %17, %9
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32* @sctp_find_sharedkey(i32*, i64) #1

declare dso_local i32 @LIST_REMOVE(i32*, i32) #1

declare dso_local i32 @sctp_free_sharedkey(i32*) #1

declare dso_local i32 @sctp_clear_cachedkeys_ep(%struct.sctp_inpcb*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
