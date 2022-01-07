; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncp.c_ncp_DeleteQueues.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncp.c_ncp_DeleteQueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp = type { %struct.mp, %struct.ipcp, %struct.ipv6cp }
%struct.mp = type { i32 }
%struct.ipcp = type { %struct.mqueue* }
%struct.mqueue = type { i64 }
%struct.ipv6cp = type { %struct.mqueue* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ncp_DeleteQueues(%struct.ncp* %0) #0 {
  %2 = alloca %struct.ncp*, align 8
  %3 = alloca %struct.ipv6cp*, align 8
  %4 = alloca %struct.ipcp*, align 8
  %5 = alloca %struct.mp*, align 8
  %6 = alloca %struct.mqueue*, align 8
  store %struct.ncp* %0, %struct.ncp** %2, align 8
  %7 = load %struct.ncp*, %struct.ncp** %2, align 8
  %8 = getelementptr inbounds %struct.ncp, %struct.ncp* %7, i32 0, i32 2
  store %struct.ipv6cp* %8, %struct.ipv6cp** %3, align 8
  %9 = load %struct.ncp*, %struct.ncp** %2, align 8
  %10 = getelementptr inbounds %struct.ncp, %struct.ncp* %9, i32 0, i32 1
  store %struct.ipcp* %10, %struct.ipcp** %4, align 8
  %11 = load %struct.ncp*, %struct.ncp** %2, align 8
  %12 = getelementptr inbounds %struct.ncp, %struct.ncp* %11, i32 0, i32 0
  store %struct.mp* %12, %struct.mp** %5, align 8
  %13 = load %struct.ipcp*, %struct.ipcp** %4, align 8
  %14 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %13, i32 0, i32 0
  %15 = load %struct.mqueue*, %struct.mqueue** %14, align 8
  store %struct.mqueue* %15, %struct.mqueue** %6, align 8
  br label %16

16:                                               ; preds = %37, %1
  %17 = load %struct.mqueue*, %struct.mqueue** %6, align 8
  %18 = load %struct.ipcp*, %struct.ipcp** %4, align 8
  %19 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %18, i32 0, i32 0
  %20 = load %struct.mqueue*, %struct.mqueue** %19, align 8
  %21 = load %struct.ipcp*, %struct.ipcp** %4, align 8
  %22 = call i32 @IPCP_QUEUES(%struct.ipcp* %21)
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %20, i64 %23
  %25 = icmp ult %struct.mqueue* %17, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %32, %26
  %28 = load %struct.mqueue*, %struct.mqueue** %6, align 8
  %29 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.mqueue*, %struct.mqueue** %6, align 8
  %34 = call i32 @m_dequeue(%struct.mqueue* %33)
  %35 = call i32 @m_freem(i32 %34)
  br label %27

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.mqueue*, %struct.mqueue** %6, align 8
  %39 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %38, i32 1
  store %struct.mqueue* %39, %struct.mqueue** %6, align 8
  br label %16

40:                                               ; preds = %16
  %41 = load %struct.ipv6cp*, %struct.ipv6cp** %3, align 8
  %42 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %41, i32 0, i32 0
  %43 = load %struct.mqueue*, %struct.mqueue** %42, align 8
  store %struct.mqueue* %43, %struct.mqueue** %6, align 8
  br label %44

44:                                               ; preds = %65, %40
  %45 = load %struct.mqueue*, %struct.mqueue** %6, align 8
  %46 = load %struct.ipv6cp*, %struct.ipv6cp** %3, align 8
  %47 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %46, i32 0, i32 0
  %48 = load %struct.mqueue*, %struct.mqueue** %47, align 8
  %49 = load %struct.ipv6cp*, %struct.ipv6cp** %3, align 8
  %50 = call i32 @IPV6CP_QUEUES(%struct.ipv6cp* %49)
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %48, i64 %51
  %53 = icmp ult %struct.mqueue* %45, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %60, %54
  %56 = load %struct.mqueue*, %struct.mqueue** %6, align 8
  %57 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.mqueue*, %struct.mqueue** %6, align 8
  %62 = call i32 @m_dequeue(%struct.mqueue* %61)
  %63 = call i32 @m_freem(i32 %62)
  br label %55

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.mqueue*, %struct.mqueue** %6, align 8
  %67 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %66, i32 1
  store %struct.mqueue* %67, %struct.mqueue** %6, align 8
  br label %44

68:                                               ; preds = %44
  %69 = load %struct.mp*, %struct.mp** %5, align 8
  %70 = getelementptr inbounds %struct.mp, %struct.mp* %69, i32 0, i32 0
  %71 = call i32 @link_DeleteQueue(i32* %70)
  ret void
}

declare dso_local i32 @IPCP_QUEUES(%struct.ipcp*) #1

declare dso_local i32 @m_freem(i32) #1

declare dso_local i32 @m_dequeue(%struct.mqueue*) #1

declare dso_local i32 @IPV6CP_QUEUES(%struct.ipv6cp*) #1

declare dso_local i32 @link_DeleteQueue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
