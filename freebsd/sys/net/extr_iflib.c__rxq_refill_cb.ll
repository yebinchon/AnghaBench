; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c__rxq_refill_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c__rxq_refill_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxq_refill_cb_arg = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32, i32)* @_rxq_refill_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rxq_refill_cb(i8* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rxq_refill_cb_arg*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.rxq_refill_cb_arg*
  store %struct.rxq_refill_cb_arg* %11, %struct.rxq_refill_cb_arg** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.rxq_refill_cb_arg*, %struct.rxq_refill_cb_arg** %9, align 8
  %14 = getelementptr inbounds %struct.rxq_refill_cb_arg, %struct.rxq_refill_cb_arg* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rxq_refill_cb_arg*, %struct.rxq_refill_cb_arg** %9, align 8
  %19 = getelementptr inbounds %struct.rxq_refill_cb_arg, %struct.rxq_refill_cb_arg* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.rxq_refill_cb_arg*, %struct.rxq_refill_cb_arg** %9, align 8
  %22 = getelementptr inbounds %struct.rxq_refill_cb_arg, %struct.rxq_refill_cb_arg* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
