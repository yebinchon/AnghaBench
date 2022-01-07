; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_ipsec_output.c_ipsec_prepend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_ipsec_output.c_ipsec_prepend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i32, %struct.TYPE_2__, %struct.mbuf*, i32 }
%struct.TYPE_2__ = type { i32 }

@MHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"wrong length\00", align 1
@IPSEC_TRAILINGSPACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.mbuf*, i32, i32)* @ipsec_prepend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @ipsec_prepend(%struct.mbuf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mbuf*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %10 = call i32 @M_ASSERTPKTHDR(%struct.mbuf* %9)
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MHLEN, align 4
  %13 = icmp slt i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @IPSEC_ASSERT(i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %17 = call i32 @M_LEADINGSPACE(%struct.mbuf* %16)
  %18 = load i32, i32* %6, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %23 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, %31
  store i32 %36, i32* %34, align 8
  %37 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %37, %struct.mbuf** %4, align 8
  br label %81

38:                                               ; preds = %3
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %41 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.mbuf* @m_gethdr(i32 %39, i32 %42)
  store %struct.mbuf* %43, %struct.mbuf** %8, align 8
  %44 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %45 = icmp eq %struct.mbuf* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %48 = call i32 @m_freem(%struct.mbuf* %47)
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  br label %81

49:                                               ; preds = %38
  %50 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %51 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %52 = call i32 @m_move_pkthdr(%struct.mbuf* %50, %struct.mbuf* %51)
  %53 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %54 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %55 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %54, i32 0, i32 3
  store %struct.mbuf* %53, %struct.mbuf** %55, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* @IPSEC_TRAILINGSPACE, align 8
  %59 = add nsw i64 %57, %58
  %60 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %61 = call i64 @M_SIZE(%struct.mbuf* %60)
  %62 = icmp slt i64 %59, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %49
  %64 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* @IPSEC_TRAILINGSPACE, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @m_align(%struct.mbuf* %64, i64 %68)
  br label %70

70:                                               ; preds = %63, %49
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %73 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %76 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, %74
  store i32 %79, i32* %77, align 8
  %80 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  store %struct.mbuf* %80, %struct.mbuf** %4, align 8
  br label %81

81:                                               ; preds = %70, %46, %20
  %82 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  ret %struct.mbuf* %82
}

declare dso_local i32 @M_ASSERTPKTHDR(%struct.mbuf*) #1

declare dso_local i32 @IPSEC_ASSERT(i32, i8*) #1

declare dso_local i32 @M_LEADINGSPACE(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @m_gethdr(i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @m_move_pkthdr(%struct.mbuf*, %struct.mbuf*) #1

declare dso_local i64 @M_SIZE(%struct.mbuf*) #1

declare dso_local i32 @m_align(%struct.mbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
