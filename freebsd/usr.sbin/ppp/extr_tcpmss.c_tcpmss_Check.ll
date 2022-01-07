; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tcpmss.c_tcpmss_Check.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tcpmss.c_tcpmss_Check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mbuf = type { i32 }
%struct.ip = type { i32, i64, i32, i32 }
%struct.tcphdr = type { i32 }

@OPT_TCPMSSFIXUP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IP_OFFMASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.bundle*, %struct.mbuf*)* @tcpmss_Check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @tcpmss_Check(%struct.bundle* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.bundle*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.ip*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.bundle* %0, %struct.bundle** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %9 = load %struct.bundle*, %struct.bundle** %4, align 8
  %10 = load i32, i32* @OPT_TCPMSSFIXUP, align 4
  %11 = call i32 @Enabled(%struct.bundle* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %14, %struct.mbuf** %3, align 8
  br label %75

15:                                               ; preds = %2
  %16 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %17 = call %struct.mbuf* @m_pullup(%struct.mbuf* %16)
  store %struct.mbuf* %17, %struct.mbuf** %5, align 8
  %18 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %19 = call i64 @m_length(%struct.mbuf* %18)
  store i64 %19, i64* %8, align 8
  %20 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %21 = call i64 @MBUF_CTOP(%struct.mbuf* %20)
  %22 = inttoptr i64 %21 to %struct.ip*
  store %struct.ip* %22, %struct.ip** %6, align 8
  %23 = load %struct.ip*, %struct.ip** %6, align 8
  %24 = getelementptr inbounds %struct.ip, %struct.ip* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 %25, 2
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %7, align 8
  %28 = load %struct.ip*, %struct.ip** %6, align 8
  %29 = getelementptr inbounds %struct.ip, %struct.ip* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IPPROTO_TCP, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %73

33:                                               ; preds = %15
  %34 = load %struct.ip*, %struct.ip** %6, align 8
  %35 = getelementptr inbounds %struct.ip, %struct.ip* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ntohs(i32 %36)
  %38 = load i64, i64* @IP_OFFMASK, align 8
  %39 = and i64 %37, %38
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %33
  %42 = load %struct.ip*, %struct.ip** %6, align 8
  %43 = getelementptr inbounds %struct.ip, %struct.ip* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @ntohs(i32 %44)
  %46 = load i64, i64* %8, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %41
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ule i64 %49, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %7, align 8
  %55 = add i64 4, %54
  %56 = icmp uge i64 %53, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %52
  %58 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %59 = call i64 @MBUF_CTOP(%struct.mbuf* %58)
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %59, %60
  %62 = inttoptr i64 %61 to %struct.tcphdr*
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %7, align 8
  %65 = sub i64 %63, %64
  %66 = load %struct.bundle*, %struct.bundle** %4, align 8
  %67 = getelementptr inbounds %struct.bundle, %struct.bundle* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @MAXMSS(i32 %70)
  %72 = call i32 @MSSFixup(%struct.tcphdr* %62, i64 %65, i32 %71)
  br label %73

73:                                               ; preds = %57, %52, %48, %41, %33, %15
  %74 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %74, %struct.mbuf** %3, align 8
  br label %75

75:                                               ; preds = %73, %13
  %76 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  ret %struct.mbuf* %76
}

declare dso_local i32 @Enabled(%struct.bundle*, i32) #1

declare dso_local %struct.mbuf* @m_pullup(%struct.mbuf*) #1

declare dso_local i64 @m_length(%struct.mbuf*) #1

declare dso_local i64 @MBUF_CTOP(%struct.mbuf*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @MSSFixup(%struct.tcphdr*, i64, i32) #1

declare dso_local i32 @MAXMSS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
