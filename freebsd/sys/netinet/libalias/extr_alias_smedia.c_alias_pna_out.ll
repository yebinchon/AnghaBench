; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_smedia.c_alias_pna_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_smedia.c_alias_pna_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.ip = type { i32 }
%struct.alias_link = type { i32 }
%struct.tcphdr = type { i32, i64 }

@IPPROTO_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, %struct.ip*, %struct.alias_link*, i8*, i32)* @alias_pna_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alias_pna_out(%struct.libalias* %0, %struct.ip* %1, %struct.alias_link* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.libalias*, align 8
  %8 = alloca %struct.ip*, align 8
  %9 = alloca %struct.alias_link*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.alias_link*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca %struct.tcphdr*, align 8
  store %struct.libalias* %0, %struct.libalias** %7, align 8
  store %struct.ip* %1, %struct.ip** %8, align 8
  store %struct.alias_link* %2, %struct.alias_link** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i8*, i8** %10, align 8
  store i8* %19, i8** %15, align 8
  %20 = load i8*, i8** %15, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 5
  store i8* %21, i8** %15, align 8
  br label %22

22:                                               ; preds = %82, %5
  %23 = load i8*, i8** %15, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 4
  %25 = load i8*, i8** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = icmp ult i8* %24, %28
  br i1 %29, label %30, label %88

30:                                               ; preds = %22
  %31 = load i8*, i8** %15, align 8
  %32 = call i32 @memcpy(i8* %13, i8* %31, i32 2)
  %33 = load i8*, i8** %15, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  store i8* %34, i8** %15, align 8
  %35 = load i8*, i8** %15, align 8
  %36 = call i32 @memcpy(i8* %14, i8* %35, i32 2)
  %37 = load i8*, i8** %15, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  store i8* %38, i8** %15, align 8
  %39 = load i8, i8* %13, align 1
  %40 = call i32 @ntohs(i8 signext %39)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %89

43:                                               ; preds = %30
  %44 = load i8, i8* %13, align 1
  %45 = call i32 @ntohs(i8 signext %44)
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i8, i8* %13, align 1
  %49 = call i32 @ntohs(i8 signext %48)
  %50 = icmp eq i32 %49, 7
  br i1 %50, label %51, label %82

51:                                               ; preds = %47, %43
  %52 = load i8*, i8** %15, align 8
  %53 = call i32 @memcpy(i8* %17, i8* %52, i32 2)
  %54 = load %struct.libalias*, %struct.libalias** %7, align 8
  %55 = load %struct.ip*, %struct.ip** %8, align 8
  %56 = getelementptr inbounds %struct.ip, %struct.ip* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.alias_link*, %struct.alias_link** %9, align 8
  %59 = call i32 @GetDestAddress(%struct.alias_link* %58)
  %60 = load i8, i8* %17, align 1
  %61 = load i32, i32* @IPPROTO_UDP, align 4
  %62 = call %struct.alias_link* @FindUdpTcpOut(%struct.libalias* %54, i32 %57, i32 %59, i8 signext %60, i32 0, i32 %61, i32 1)
  store %struct.alias_link* %62, %struct.alias_link** %12, align 8
  %63 = load %struct.alias_link*, %struct.alias_link** %12, align 8
  %64 = icmp ne %struct.alias_link* %63, null
  br i1 %64, label %65, label %81

65:                                               ; preds = %51
  %66 = load %struct.alias_link*, %struct.alias_link** %12, align 8
  %67 = call i32 @PunchFWHole(%struct.alias_link* %66)
  %68 = load %struct.ip*, %struct.ip** %8, align 8
  %69 = call i64 @ip_next(%struct.ip* %68)
  %70 = inttoptr i64 %69 to %struct.tcphdr*
  store %struct.tcphdr* %70, %struct.tcphdr** %18, align 8
  %71 = load %struct.alias_link*, %struct.alias_link** %12, align 8
  %72 = call signext i8 @GetAliasPort(%struct.alias_link* %71)
  store i8 %72, i8* %16, align 1
  %73 = load i8*, i8** %15, align 8
  %74 = call i32 @memcpy(i8* %73, i8* %16, i32 2)
  %75 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %76 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.ip*, %struct.ip** %8, align 8
  %78 = call i64 @TcpChecksum(%struct.ip* %77)
  %79 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %80 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %65, %51
  br label %82

82:                                               ; preds = %81, %47
  %83 = load i8, i8* %14, align 1
  %84 = call i32 @ntohs(i8 signext %83)
  %85 = load i8*, i8** %15, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %15, align 8
  br label %22

88:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %88, %42
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ntohs(i8 signext) #1

declare dso_local %struct.alias_link* @FindUdpTcpOut(%struct.libalias*, i32, i32, i8 signext, i32, i32, i32) #1

declare dso_local i32 @GetDestAddress(%struct.alias_link*) #1

declare dso_local i32 @PunchFWHole(%struct.alias_link*) #1

declare dso_local i64 @ip_next(%struct.ip*) #1

declare dso_local signext i8 @GetAliasPort(%struct.alias_link*) #1

declare dso_local i64 @TcpChecksum(%struct.ip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
