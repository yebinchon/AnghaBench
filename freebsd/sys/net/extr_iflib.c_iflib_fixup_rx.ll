; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_fixup_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_fixup_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, i64, %struct.mbuf* }

@MCLBYTES = common dso_local global i64 0, align 8
@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.mbuf*)* @iflib_fixup_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @iflib_fixup_rx(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  %5 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %6 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MCLBYTES, align 8
  %9 = load i64, i64* @ETHER_HDR_LEN, align 8
  %10 = sub nsw i64 %8, %9
  %11 = icmp sle i64 %7, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %14 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %17 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ETHER_HDR_LEN, align 8
  %20 = add nsw i64 %18, %19
  %21 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %22 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @bcopy(i64 %15, i64 %20, i64 %23)
  %25 = load i64, i64* @ETHER_HDR_LEN, align 8
  %26 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %27 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, %25
  store i64 %29, i64* %27, align 8
  %30 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  store %struct.mbuf* %30, %struct.mbuf** %4, align 8
  br label %69

31:                                               ; preds = %1
  %32 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %33 = load i32, i32* @M_NOWAIT, align 4
  %34 = load i32, i32* @MT_DATA, align 4
  %35 = call i32 @MGETHDR(%struct.mbuf* %32, i32 %33, i32 %34)
  %36 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %37 = icmp eq %struct.mbuf* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %40 = call i32 @m_freem(%struct.mbuf* %39)
  store %struct.mbuf* null, %struct.mbuf** %2, align 8
  br label %71

41:                                               ; preds = %31
  %42 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %43 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %46 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ETHER_HDR_LEN, align 8
  %49 = call i32 @bcopy(i64 %44, i64 %47, i64 %48)
  %50 = load i64, i64* @ETHER_HDR_LEN, align 8
  %51 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %52 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, %50
  store i64 %54, i64* %52, align 8
  %55 = load i64, i64* @ETHER_HDR_LEN, align 8
  %56 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %58, %55
  store i64 %59, i64* %57, align 8
  %60 = load i64, i64* @ETHER_HDR_LEN, align 8
  %61 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %62 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %64 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %65 = call i32 @M_MOVE_PKTHDR(%struct.mbuf* %63, %struct.mbuf* %64)
  %66 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %67 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %68 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %67, i32 0, i32 2
  store %struct.mbuf* %66, %struct.mbuf** %68, align 8
  br label %69

69:                                               ; preds = %41, %12
  %70 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  store %struct.mbuf* %70, %struct.mbuf** %2, align 8
  br label %71

71:                                               ; preds = %69, %38
  %72 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  ret %struct.mbuf* %72
}

declare dso_local i32 @bcopy(i64, i64, i64) #1

declare dso_local i32 @MGETHDR(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @M_MOVE_PKTHDR(%struct.mbuf*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
