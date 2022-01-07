; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_reass.c_ipq_reuse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_reass.c_ipq_reuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.ipq = type { %struct.mbuf*, i32 }
%struct.mbuf = type { %struct.mbuf* }

@IPREASS_NHASH = common dso_local global i32 0, align 4
@V_ipq = common dso_local global %struct.TYPE_2__* null, align 8
@ipqhead = common dso_local global i32 0, align 4
@ips_fragtimeout = common dso_local global i32 0, align 4
@nfrags = common dso_local global i32 0, align 4
@ipq_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipq* (i32)* @ipq_reuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipq* @ipq_reuse(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @IPQ_LOCK_ASSERT(i32 %7)
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %94, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @IPREASS_NHASH, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %97

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %14, %15
  %17 = load i32, i32* @IPREASS_NHASH, align 4
  %18 = srem i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @IPQ_TRYLOCK(i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %94

27:                                               ; preds = %22, %13
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @V_ipq, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* @ipqhead, align 4
  %34 = call %struct.ipq* @TAILQ_LAST(i32* %32, i32 %33)
  store %struct.ipq* %34, %struct.ipq** %3, align 8
  %35 = load %struct.ipq*, %struct.ipq** %3, align 8
  %36 = icmp ne %struct.ipq* %35, null
  br i1 %36, label %37, label %86

37:                                               ; preds = %27
  %38 = load i32, i32* @ips_fragtimeout, align 4
  %39 = load %struct.ipq*, %struct.ipq** %3, align 8
  %40 = getelementptr inbounds %struct.ipq, %struct.ipq* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @IPSTAT_ADD(i32 %38, i32 %41)
  %43 = load %struct.ipq*, %struct.ipq** %3, align 8
  %44 = getelementptr inbounds %struct.ipq, %struct.ipq* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @atomic_subtract_int(i32* @nfrags, i32 %45)
  br label %47

47:                                               ; preds = %52, %37
  %48 = load %struct.ipq*, %struct.ipq** %3, align 8
  %49 = getelementptr inbounds %struct.ipq, %struct.ipq* %48, i32 0, i32 0
  %50 = load %struct.mbuf*, %struct.mbuf** %49, align 8
  %51 = icmp ne %struct.mbuf* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load %struct.ipq*, %struct.ipq** %3, align 8
  %54 = getelementptr inbounds %struct.ipq, %struct.ipq* %53, i32 0, i32 0
  %55 = load %struct.mbuf*, %struct.mbuf** %54, align 8
  store %struct.mbuf* %55, %struct.mbuf** %6, align 8
  %56 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 0
  %58 = load %struct.mbuf*, %struct.mbuf** %57, align 8
  %59 = load %struct.ipq*, %struct.ipq** %3, align 8
  %60 = getelementptr inbounds %struct.ipq, %struct.ipq* %59, i32 0, i32 0
  store %struct.mbuf* %58, %struct.mbuf** %60, align 8
  %61 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %62 = call i32 @m_freem(%struct.mbuf* %61)
  br label %47

63:                                               ; preds = %47
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @V_ipq, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load %struct.ipq*, %struct.ipq** %3, align 8
  %70 = load i32, i32* @ipq_list, align 4
  %71 = call i32 @TAILQ_REMOVE(i32* %68, %struct.ipq* %69, i32 %70)
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @V_ipq, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %2, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %63
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @IPQ_UNLOCK(i32 %83)
  br label %85

85:                                               ; preds = %82, %63
  br label %97

86:                                               ; preds = %27
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %2, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @IPQ_UNLOCK(i32 %91)
  br label %93

93:                                               ; preds = %90, %86
  br label %94

94:                                               ; preds = %93, %26
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %9

97:                                               ; preds = %85, %9
  %98 = load i32, i32* %2, align 4
  %99 = call i32 @IPQ_LOCK_ASSERT(i32 %98)
  %100 = load %struct.ipq*, %struct.ipq** %3, align 8
  ret %struct.ipq* %100
}

declare dso_local i32 @IPQ_LOCK_ASSERT(i32) #1

declare dso_local i64 @IPQ_TRYLOCK(i32) #1

declare dso_local %struct.ipq* @TAILQ_LAST(i32*, i32) #1

declare dso_local i32 @IPSTAT_ADD(i32, i32) #1

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ipq*, i32) #1

declare dso_local i32 @IPQ_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
