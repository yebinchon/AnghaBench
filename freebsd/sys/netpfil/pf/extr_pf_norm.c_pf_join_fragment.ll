; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_join_fragment.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_norm.c_pf_join_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.pf_fragment = type { i32 }
%struct.pf_frent = type { i64, i64, %struct.mbuf* }

@fr_next = common dso_local global i32 0, align 4
@V_pf_frent_z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.pf_fragment*)* @pf_join_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @pf_join_fragment(%struct.pf_fragment* %0) #0 {
  %2 = alloca %struct.pf_fragment*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.pf_frent*, align 8
  %6 = alloca %struct.pf_frent*, align 8
  store %struct.pf_fragment* %0, %struct.pf_fragment** %2, align 8
  %7 = load %struct.pf_fragment*, %struct.pf_fragment** %2, align 8
  %8 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %7, i32 0, i32 0
  %9 = call %struct.pf_frent* @TAILQ_FIRST(i32* %8)
  store %struct.pf_frent* %9, %struct.pf_frent** %5, align 8
  %10 = load %struct.pf_frent*, %struct.pf_frent** %5, align 8
  %11 = load i32, i32* @fr_next, align 4
  %12 = call %struct.pf_frent* @TAILQ_NEXT(%struct.pf_frent* %10, i32 %11)
  store %struct.pf_frent* %12, %struct.pf_frent** %6, align 8
  %13 = load %struct.pf_frent*, %struct.pf_frent** %5, align 8
  %14 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %13, i32 0, i32 2
  %15 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  store %struct.mbuf* %15, %struct.mbuf** %3, align 8
  %16 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %17 = load %struct.pf_frent*, %struct.pf_frent** %5, align 8
  %18 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.pf_frent*, %struct.pf_frent** %5, align 8
  %21 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %23, %27
  %29 = call i32 @m_adj(%struct.mbuf* %16, i64 %28)
  %30 = load i32, i32* @V_pf_frent_z, align 4
  %31 = load %struct.pf_frent*, %struct.pf_frent** %5, align 8
  %32 = call i32 @uma_zfree(i32 %30, %struct.pf_frent* %31)
  %33 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  store %struct.pf_frent* %33, %struct.pf_frent** %5, align 8
  br label %34

34:                                               ; preds = %65, %1
  %35 = load %struct.pf_frent*, %struct.pf_frent** %5, align 8
  %36 = icmp ne %struct.pf_frent* %35, null
  br i1 %36, label %37, label %67

37:                                               ; preds = %34
  %38 = load %struct.pf_frent*, %struct.pf_frent** %5, align 8
  %39 = load i32, i32* @fr_next, align 4
  %40 = call %struct.pf_frent* @TAILQ_NEXT(%struct.pf_frent* %38, i32 %39)
  store %struct.pf_frent* %40, %struct.pf_frent** %6, align 8
  %41 = load %struct.pf_frent*, %struct.pf_frent** %5, align 8
  %42 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %41, i32 0, i32 2
  %43 = load %struct.mbuf*, %struct.mbuf** %42, align 8
  store %struct.mbuf* %43, %struct.mbuf** %4, align 8
  %44 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %45 = load %struct.pf_frent*, %struct.pf_frent** %5, align 8
  %46 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @m_adj(%struct.mbuf* %44, i64 %47)
  %49 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %50 = load %struct.pf_frent*, %struct.pf_frent** %5, align 8
  %51 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %54 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %52, %56
  %58 = call i32 @m_adj(%struct.mbuf* %49, i64 %57)
  %59 = load i32, i32* @V_pf_frent_z, align 4
  %60 = load %struct.pf_frent*, %struct.pf_frent** %5, align 8
  %61 = call i32 @uma_zfree(i32 %59, %struct.pf_frent* %60)
  %62 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %63 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %64 = call i32 @m_cat(%struct.mbuf* %62, %struct.mbuf* %63)
  br label %65

65:                                               ; preds = %37
  %66 = load %struct.pf_frent*, %struct.pf_frent** %6, align 8
  store %struct.pf_frent* %66, %struct.pf_frent** %5, align 8
  br label %34

67:                                               ; preds = %34
  %68 = load %struct.pf_fragment*, %struct.pf_fragment** %2, align 8
  %69 = call i32 @pf_remove_fragment(%struct.pf_fragment* %68)
  %70 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  ret %struct.mbuf* %70
}

declare dso_local %struct.pf_frent* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.pf_frent* @TAILQ_NEXT(%struct.pf_frent*, i32) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i64) #1

declare dso_local i32 @uma_zfree(i32, %struct.pf_frent*) #1

declare dso_local i32 @m_cat(%struct.mbuf*, %struct.mbuf*) #1

declare dso_local i32 @pf_remove_fragment(%struct.pf_fragment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
