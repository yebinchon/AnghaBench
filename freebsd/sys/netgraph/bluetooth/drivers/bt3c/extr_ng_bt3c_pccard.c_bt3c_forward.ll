; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/bt3c/extr_ng_bt3c_pccard.c_bt3c_forward.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/bt3c/extr_ng_bt3c_pccard.c_bt3c_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32* }
%struct.mbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32)* @bt3c_forward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt3c_forward(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @NG_NODE_PRIVATE(i32 %12)
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %9, align 8
  store %struct.mbuf* null, %struct.mbuf** %10, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %17 = icmp eq %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %78

19:                                               ; preds = %4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %55

24:                                               ; preds = %19
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @NG_HOOK_IS_VALID(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %53, %30
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %35 = call i32 @IF_DEQUEUE(i32* %33, %struct.mbuf* %34)
  %36 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %37 = icmp eq %struct.mbuf* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %54

39:                                               ; preds = %31
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %45 = call i32 @NG_SEND_DATA_ONLY(i32 %40, i32* %43, %struct.mbuf* %44)
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @NG_BT3C_STAT_IERROR(i32 %51)
  br label %53

53:                                               ; preds = %48, %39
  br label %31

54:                                               ; preds = %38
  br label %78

55:                                               ; preds = %24, %19
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @IF_LOCK(i32* %57)
  br label %59

59:                                               ; preds = %67, %55
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %63 = call i32 @_IF_DEQUEUE(i32* %61, %struct.mbuf* %62)
  %64 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %65 = icmp eq %struct.mbuf* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %74

67:                                               ; preds = %59
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @NG_BT3C_STAT_IERROR(i32 %70)
  %72 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %73 = call i32 @NG_FREE_M(%struct.mbuf* %72)
  br label %59

74:                                               ; preds = %66
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @IF_UNLOCK(i32* %76)
  br label %78

78:                                               ; preds = %18, %74, %54
  ret void
}

declare dso_local i32 @NG_NODE_PRIVATE(i32) #1

declare dso_local i64 @NG_HOOK_IS_VALID(i32*) #1

declare dso_local i32 @IF_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @NG_SEND_DATA_ONLY(i32, i32*, %struct.mbuf*) #1

declare dso_local i32 @NG_BT3C_STAT_IERROR(i32) #1

declare dso_local i32 @IF_LOCK(i32*) #1

declare dso_local i32 @_IF_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @NG_FREE_M(%struct.mbuf*) #1

declare dso_local i32 @IF_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
