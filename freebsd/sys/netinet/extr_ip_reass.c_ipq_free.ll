; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_reass.c_ipq_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_reass.c_ipq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipqbucket = type { i32, i32 }
%struct.ipq = type { %struct.mbuf*, i32 }
%struct.mbuf = type { %struct.mbuf* }

@nfrags = common dso_local global i32 0, align 4
@ipq_list = common dso_local global i32 0, align 4
@V_ipq_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipqbucket*, %struct.ipq*)* @ipq_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipq_free(%struct.ipqbucket* %0, %struct.ipq* %1) #0 {
  %3 = alloca %struct.ipqbucket*, align 8
  %4 = alloca %struct.ipq*, align 8
  %5 = alloca %struct.mbuf*, align 8
  store %struct.ipqbucket* %0, %struct.ipqbucket** %3, align 8
  store %struct.ipq* %1, %struct.ipq** %4, align 8
  %6 = load %struct.ipq*, %struct.ipq** %4, align 8
  %7 = getelementptr inbounds %struct.ipq, %struct.ipq* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @atomic_subtract_int(i32* @nfrags, i32 %8)
  br label %10

10:                                               ; preds = %15, %2
  %11 = load %struct.ipq*, %struct.ipq** %4, align 8
  %12 = getelementptr inbounds %struct.ipq, %struct.ipq* %11, i32 0, i32 0
  %13 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %14 = icmp ne %struct.mbuf* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = load %struct.ipq*, %struct.ipq** %4, align 8
  %17 = getelementptr inbounds %struct.ipq, %struct.ipq* %16, i32 0, i32 0
  %18 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  store %struct.mbuf* %18, %struct.mbuf** %5, align 8
  %19 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %20 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %19, i32 0, i32 0
  %21 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  %22 = load %struct.ipq*, %struct.ipq** %4, align 8
  %23 = getelementptr inbounds %struct.ipq, %struct.ipq* %22, i32 0, i32 0
  store %struct.mbuf* %21, %struct.mbuf** %23, align 8
  %24 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %25 = call i32 @m_freem(%struct.mbuf* %24)
  br label %10

26:                                               ; preds = %10
  %27 = load %struct.ipqbucket*, %struct.ipqbucket** %3, align 8
  %28 = getelementptr inbounds %struct.ipqbucket, %struct.ipqbucket* %27, i32 0, i32 1
  %29 = load %struct.ipq*, %struct.ipq** %4, align 8
  %30 = load i32, i32* @ipq_list, align 4
  %31 = call i32 @TAILQ_REMOVE(i32* %28, %struct.ipq* %29, i32 %30)
  %32 = load %struct.ipqbucket*, %struct.ipqbucket** %3, align 8
  %33 = getelementptr inbounds %struct.ipqbucket, %struct.ipqbucket* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @V_ipq_zone, align 4
  %37 = load %struct.ipq*, %struct.ipq** %4, align 8
  %38 = call i32 @uma_zfree(i32 %36, %struct.ipq* %37)
  ret void
}

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ipq*, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.ipq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
