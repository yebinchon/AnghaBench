; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_reass.c_ipreass_drain_tomax.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_reass.c_ipreass_drain_tomax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.ipq = type { i32 }

@IPREASS_NHASH = common dso_local global i32 0, align 4
@V_ipq = common dso_local global %struct.TYPE_3__* null, align 8
@V_ipreass_maxbucketsize = common dso_local global i64 0, align 8
@ipqhead = common dso_local global i32 0, align 4
@V_ipq_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ipreass_drain_tomax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipreass_drain_tomax() #0 {
  %1 = alloca %struct.ipq*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %42, %0
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @IPREASS_NHASH, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %45

9:                                                ; preds = %5
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @IPQ_LOCK(i32 %10)
  br label %12

12:                                               ; preds = %32, %9
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @V_ipq, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @V_ipreass_maxbucketsize, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %12
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @V_ipq, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* @ipqhead, align 4
  %28 = call %struct.ipq* @TAILQ_LAST(i32* %26, i32 %27)
  store %struct.ipq* %28, %struct.ipq** %1, align 8
  %29 = icmp ne %struct.ipq* %28, null
  br label %30

30:                                               ; preds = %21, %12
  %31 = phi i1 [ false, %12 ], [ %29, %21 ]
  br i1 %31, label %32, label %39

32:                                               ; preds = %30
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @V_ipq, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = load %struct.ipq*, %struct.ipq** %1, align 8
  %38 = call i32 @ipq_timeout(%struct.TYPE_3__* %36, %struct.ipq* %37)
  br label %12

39:                                               ; preds = %30
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @IPQ_UNLOCK(i32 %40)
  br label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %5

45:                                               ; preds = %5
  %46 = load i32, i32* @V_ipq_zone, align 4
  %47 = call i32 @uma_zone_get_max(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %83, %45
  %49 = load i32, i32* @V_ipq_zone, align 4
  %50 = call i32 @uma_zone_get_cur(i32 %49)
  %51 = load i32, i32* %2, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %84

53:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %80, %53
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @IPREASS_NHASH, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %83

58:                                               ; preds = %54
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @IPQ_LOCK(i32 %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @V_ipq, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* @ipqhead, align 4
  %67 = call %struct.ipq* @TAILQ_LAST(i32* %65, i32 %66)
  store %struct.ipq* %67, %struct.ipq** %1, align 8
  %68 = load %struct.ipq*, %struct.ipq** %1, align 8
  %69 = icmp ne %struct.ipq* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %58
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @V_ipq, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = load %struct.ipq*, %struct.ipq** %1, align 8
  %76 = call i32 @ipq_timeout(%struct.TYPE_3__* %74, %struct.ipq* %75)
  br label %77

77:                                               ; preds = %70, %58
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @IPQ_UNLOCK(i32 %78)
  br label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %54

83:                                               ; preds = %54
  br label %48

84:                                               ; preds = %48
  ret void
}

declare dso_local i32 @IPQ_LOCK(i32) #1

declare dso_local %struct.ipq* @TAILQ_LAST(i32*, i32) #1

declare dso_local i32 @ipq_timeout(%struct.TYPE_3__*, %struct.ipq*) #1

declare dso_local i32 @IPQ_UNLOCK(i32) #1

declare dso_local i32 @uma_zone_get_max(i32) #1

declare dso_local i32 @uma_zone_get_cur(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
