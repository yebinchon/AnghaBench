; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lqr.c_SendLqrData.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lqr.c_SendLqrData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mbuf = type { i32, i32 }

@PROTO_LQR = common dso_local global i32 0, align 4
@MB_LQROUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lcp*)* @SendLqrData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SendLqrData(%struct.lcp* %0) #0 {
  %2 = alloca %struct.lcp*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca i32, align 4
  store %struct.lcp* %0, %struct.lcp** %2, align 8
  %5 = load %struct.lcp*, %struct.lcp** %2, align 8
  %6 = load i32, i32* @PROTO_LQR, align 4
  %7 = call i32 @proto_WrapperOctets(%struct.lcp* %5, i32 %6)
  %8 = load %struct.lcp*, %struct.lcp** %2, align 8
  %9 = load i32, i32* @PROTO_LQR, align 4
  %10 = call i32 @acf_WrapperOctets(%struct.lcp* %8, i32 %9)
  %11 = add nsw i32 %7, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = add i64 4, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @MB_LQROUT, align 4
  %17 = call %struct.mbuf* @m_get(i32 %15, i32 %16)
  store %struct.mbuf* %17, %struct.mbuf** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %20 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.lcp*, %struct.lcp** %2, align 8
  %29 = getelementptr inbounds %struct.lcp, %struct.lcp* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %33 = load %struct.lcp*, %struct.lcp** %2, align 8
  %34 = getelementptr inbounds %struct.lcp, %struct.lcp* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.lcp*, %struct.lcp** %2, align 8
  %38 = getelementptr inbounds %struct.lcp, %struct.lcp* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @LINK_QUEUES(i32 %40)
  %42 = sub nsw i64 %41, 1
  %43 = load i32, i32* @PROTO_LQR, align 4
  %44 = call i32 @link_PushPacket(i32 %31, %struct.mbuf* %32, i32 %36, i64 %42, i32 %43)
  ret void
}

declare dso_local i32 @proto_WrapperOctets(%struct.lcp*, i32) #1

declare dso_local i32 @acf_WrapperOctets(%struct.lcp*, i32) #1

declare dso_local %struct.mbuf* @m_get(i32, i32) #1

declare dso_local i32 @link_PushPacket(i32, %struct.mbuf*, i32, i64, i32) #1

declare dso_local i64 @LINK_QUEUES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
