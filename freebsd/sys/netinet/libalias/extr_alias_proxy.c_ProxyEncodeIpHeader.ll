; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_proxy.c_ProxyEncodeIpHeader.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_proxy.c_ProxyEncodeIpHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip = type { i32, i32, i64, i32 }
%struct.tcphdr = type { i32 }

@OPTION_LEN_BYTES = common dso_local global i32 0, align 4
@OPTION_LEN_INT16 = common dso_local global i32 0, align 4
@OPTION_LEN_INT32 = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip*, i32)* @ProxyEncodeIpHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ProxyEncodeIpHeader(%struct.ip* %0, i32 %1) #0 {
  %3 = alloca %struct.ip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [8 x i32], align 16
  %6 = alloca i32*, align 8
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  store %struct.ip* %0, %struct.ip** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.ip*, %struct.ip** %3, align 8
  %13 = getelementptr inbounds %struct.ip, %struct.ip* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %14, 13
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %109

17:                                               ; preds = %2
  %18 = load %struct.ip*, %struct.ip** %3, align 8
  %19 = bitcast %struct.ip* %18 to i32*
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 20
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 8
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.ip*, %struct.ip** %3, align 8
  %26 = getelementptr inbounds %struct.ip, %struct.ip* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @ntohs(i64 %27)
  %29 = sub nsw i32 %28, 20
  %30 = call i32 @memcpy(i32* %23, i32* %24, i32 %29)
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  store i32 100, i32* %31, align 16
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  store i32 8, i32* %32, align 4
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  %34 = load %struct.ip*, %struct.ip** %3, align 8
  %35 = getelementptr inbounds %struct.ip, %struct.ip* %34, i32 0, i32 3
  %36 = call i32 @memcpy(i32* %33, i32* %35, i32 4)
  %37 = load %struct.ip*, %struct.ip** %3, align 8
  %38 = call i64 @ip_next(%struct.ip* %37)
  %39 = inttoptr i64 %38 to %struct.tcphdr*
  store %struct.tcphdr* %39, %struct.tcphdr** %7, align 8
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 6
  %41 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %42 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %41, i32 0, i32 0
  %43 = call i32 @memcpy(i32* %40, i32* %42, i32 2)
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %46 = call i32 @memcpy(i32* %44, i32* %45, i32 8)
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %48 = bitcast i32* %47 to i64*
  store i64* %48, i64** %10, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %60, %17
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i64*, i64** %10, align 8
  %54 = getelementptr inbounds i64, i64* %53, i32 1
  store i64* %54, i64** %10, align 8
  %55 = load i64, i64* %53, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = sub nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %52
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %49

63:                                               ; preds = %49
  %64 = load %struct.ip*, %struct.ip** %3, align 8
  %65 = bitcast %struct.ip* %64 to i64*
  store i64* %65, i64** %10, align 8
  %66 = load i64*, i64** %10, align 8
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %9, align 4
  %72 = load %struct.ip*, %struct.ip** %3, align 8
  %73 = getelementptr inbounds %struct.ip, %struct.ip* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 2
  store i32 %75, i32* %73, align 8
  %76 = load i64*, i64** %10, align 8
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = sub nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %9, align 4
  %82 = load %struct.ip*, %struct.ip** %3, align 8
  %83 = getelementptr inbounds %struct.ip, %struct.ip* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %9, align 4
  %89 = load %struct.ip*, %struct.ip** %3, align 8
  %90 = getelementptr inbounds %struct.ip, %struct.ip* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @ntohs(i64 %91)
  %93 = add nsw i32 %92, 8
  %94 = call i64 @htons(i32 %93)
  %95 = load %struct.ip*, %struct.ip** %3, align 8
  %96 = getelementptr inbounds %struct.ip, %struct.ip* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  %97 = load %struct.ip*, %struct.ip** %3, align 8
  %98 = getelementptr inbounds %struct.ip, %struct.ip* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = sub nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.ip*, %struct.ip** %3, align 8
  %106 = getelementptr inbounds %struct.ip, %struct.ip* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ADJUST_CHECKSUM(i32 %104, i32 %107)
  br label %109

109:                                              ; preds = %63, %16
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i64 @ip_next(%struct.ip*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @ADJUST_CHECKSUM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
