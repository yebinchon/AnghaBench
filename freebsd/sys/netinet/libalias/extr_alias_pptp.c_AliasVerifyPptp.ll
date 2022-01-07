; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_pptp.c_AliasVerifyPptp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_pptp.c_AliasVerifyPptp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.tcphdr = type { i32 }

@PPTP_CTRL_MSG_TYPE = common dso_local global i64 0, align 8
@PPTP_MAGIC = common dso_local global i64 0, align 8
@PPTP_OutCallReply = common dso_local global i64 0, align 8
@PPTP_InCallReply = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.ip*, i64*)* @AliasVerifyPptp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @AliasVerifyPptp(%struct.ip* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ip*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca %struct.tcphdr*, align 8
  store %struct.ip* %0, %struct.ip** %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load %struct.ip*, %struct.ip** %4, align 8
  %12 = call i64 @ip_next(%struct.ip* %11)
  %13 = inttoptr i64 %12 to %struct.tcphdr*
  store %struct.tcphdr* %13, %struct.tcphdr** %10, align 8
  %14 = load %struct.ip*, %struct.ip** %4, align 8
  %15 = getelementptr inbounds %struct.ip, %struct.ip* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %18 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  %21 = shl i32 %20, 2
  store i32 %21, i32* %6, align 4
  %22 = load %struct.ip*, %struct.ip** %4, align 8
  %23 = getelementptr inbounds %struct.ip, %struct.ip* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @ntohs(i32 %24)
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 8
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %74

33:                                               ; preds = %2
  %34 = load %struct.tcphdr*, %struct.tcphdr** %10, align 8
  %35 = call i64 @tcp_next(%struct.tcphdr* %34)
  %36 = inttoptr i64 %35 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %36, %struct.TYPE_2__** %9, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @ntohs(i32 %39)
  %41 = load i64*, i64** %5, align 8
  store i64 %40, i64* %41, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @ntohs(i32 %44)
  %46 = load i64, i64* @PPTP_CTRL_MSG_TYPE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %33
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @ntohl(i32 %51)
  %53 = load i64, i64* @PPTP_MAGIC, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48, %33
  store i32* null, i32** %3, align 8
  br label %74

56:                                               ; preds = %48
  %57 = load i64*, i64** %5, align 8
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PPTP_OutCallReply, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load i64*, i64** %5, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PPTP_InCallReply, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %61, %56
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 12
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32* null, i32** %3, align 8
  br label %74

70:                                               ; preds = %66, %61
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 1
  %73 = bitcast %struct.TYPE_2__* %72 to i32*
  store i32* %73, i32** %3, align 8
  br label %74

74:                                               ; preds = %70, %69, %55, %32
  %75 = load i32*, i32** %3, align 8
  ret i32* %75
}

declare dso_local i64 @ip_next(%struct.ip*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @tcp_next(%struct.tcphdr*) #1

declare dso_local i64 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
