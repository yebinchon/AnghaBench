; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_input.c_tcp_pulloutofband.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_input.c_tcp_pulloutofband.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.tcphdr = type { i32 }
%struct.mbuf = type { i32, i32, %struct.mbuf*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tcpcb = type { i8, i32, i32 }

@caddr_t = common dso_local global i32 0, align 4
@TCPOOB_HAVEDATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"tcp_pulloutofband\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_pulloutofband(%struct.socket* %0, %struct.tcphdr* %1, %struct.mbuf* %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.tcphdr*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tcpcb*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %14 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %12, %15
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %88, %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %89

21:                                               ; preds = %18
  %22 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %23 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %76

27:                                               ; preds = %21
  %28 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %29 = load i32, i32* @caddr_t, align 4
  %30 = call i8* @mtod(%struct.mbuf* %28, i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8* %33, i8** %10, align 8
  %34 = load %struct.socket*, %struct.socket** %5, align 8
  %35 = call %struct.tcpcb* @sototcpcb(%struct.socket* %34)
  store %struct.tcpcb* %35, %struct.tcpcb** %11, align 8
  %36 = load %struct.tcpcb*, %struct.tcpcb** %11, align 8
  %37 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @INP_WLOCK_ASSERT(i32 %38)
  %40 = load i8*, i8** %10, align 8
  %41 = load i8, i8* %40, align 1
  %42 = load %struct.tcpcb*, %struct.tcpcb** %11, align 8
  %43 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %42, i32 0, i32 0
  store i8 %41, i8* %43, align 4
  %44 = load i32, i32* @TCPOOB_HAVEDATA, align 4
  %45 = load %struct.tcpcb*, %struct.tcpcb** %11, align 8
  %46 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8*, i8** %10, align 8
  %52 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %53 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sub nsw i32 %54, %55
  %57 = sub nsw i32 %56, 1
  %58 = call i32 @bcopy(i8* %50, i8* %51, i32 %57)
  %59 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %60 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 8
  %63 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %64 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @M_PKTHDR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %27
  %70 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %71 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %69, %27
  br label %91

76:                                               ; preds = %21
  %77 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %78 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* %9, align 4
  %82 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %83 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %82, i32 0, i32 2
  %84 = load %struct.mbuf*, %struct.mbuf** %83, align 8
  store %struct.mbuf* %84, %struct.mbuf** %7, align 8
  %85 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %86 = icmp eq %struct.mbuf* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  br label %89

88:                                               ; preds = %76
  br label %18

89:                                               ; preds = %87, %18
  %90 = call i32 @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %75
  ret void
}

declare dso_local i8* @mtod(%struct.mbuf*, i32) #1

declare dso_local %struct.tcpcb* @sototcpcb(%struct.socket*) #1

declare dso_local i32 @INP_WLOCK_ASSERT(i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
