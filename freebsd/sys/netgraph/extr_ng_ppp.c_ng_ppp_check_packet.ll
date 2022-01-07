; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ppp.c_ng_ppp_check_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ppp.c_ng_ppp_check_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.ng_ppp_frag = type { i64, i32, i32 }

@f_qent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ng_ppp_check_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_ppp_check_packet(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.ng_ppp_frag*, align 8
  %6 = alloca %struct.ng_ppp_frag*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.TYPE_5__* @NG_NODE_PRIVATE(i32 %7)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = call i64 @TAILQ_EMPTY(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = call %struct.ng_ppp_frag* @TAILQ_FIRST(i32* %16)
  store %struct.ng_ppp_frag* %17, %struct.ng_ppp_frag** %5, align 8
  %18 = load %struct.ng_ppp_frag*, %struct.ng_ppp_frag** %5, align 8
  %19 = getelementptr inbounds %struct.ng_ppp_frag, %struct.ng_ppp_frag* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %14
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = load %struct.ng_ppp_frag*, %struct.ng_ppp_frag** %5, align 8
  %25 = getelementptr inbounds %struct.ng_ppp_frag, %struct.ng_ppp_frag* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @MP_RECV_SEQ_DIFF(%struct.TYPE_5__* %23, i64 %26, i32 %29)
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %22, %14
  store i32 0, i32* %2, align 4
  br label %61

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %58, %33
  %35 = load %struct.ng_ppp_frag*, %struct.ng_ppp_frag** %5, align 8
  %36 = getelementptr inbounds %struct.ng_ppp_frag, %struct.ng_ppp_frag* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %60

40:                                               ; preds = %34
  %41 = load %struct.ng_ppp_frag*, %struct.ng_ppp_frag** %5, align 8
  %42 = load i32, i32* @f_qent, align 4
  %43 = call %struct.ng_ppp_frag* @TAILQ_NEXT(%struct.ng_ppp_frag* %41, i32 %42)
  store %struct.ng_ppp_frag* %43, %struct.ng_ppp_frag** %6, align 8
  %44 = load %struct.ng_ppp_frag*, %struct.ng_ppp_frag** %6, align 8
  %45 = icmp eq %struct.ng_ppp_frag* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %61

47:                                               ; preds = %40
  %48 = load %struct.ng_ppp_frag*, %struct.ng_ppp_frag** %6, align 8
  %49 = getelementptr inbounds %struct.ng_ppp_frag, %struct.ng_ppp_frag* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = load %struct.ng_ppp_frag*, %struct.ng_ppp_frag** %5, align 8
  %53 = getelementptr inbounds %struct.ng_ppp_frag, %struct.ng_ppp_frag* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @MP_NEXT_RECV_SEQ(%struct.TYPE_5__* %51, i64 %54)
  %56 = icmp ne i64 %50, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %61

58:                                               ; preds = %47
  %59 = load %struct.ng_ppp_frag*, %struct.ng_ppp_frag** %6, align 8
  store %struct.ng_ppp_frag* %59, %struct.ng_ppp_frag** %5, align 8
  br label %34

60:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %57, %46, %32, %13
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_5__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.ng_ppp_frag* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @MP_RECV_SEQ_DIFF(%struct.TYPE_5__*, i64, i32) #1

declare dso_local %struct.ng_ppp_frag* @TAILQ_NEXT(%struct.ng_ppp_frag*, i32) #1

declare dso_local i64 @MP_NEXT_RECV_SEQ(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
