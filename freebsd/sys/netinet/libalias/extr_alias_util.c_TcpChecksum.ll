; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_util.c_TcpChecksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_util.c_TcpChecksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip = type { i32, i64, i32, i32, i32 }
%struct.tcphdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @TcpChecksum(%struct.ip* %0) #0 {
  %2 = alloca %struct.ip*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca %struct.tcphdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ip* %0, %struct.ip** %2, align 8
  %10 = load %struct.ip*, %struct.ip** %2, align 8
  %11 = getelementptr inbounds %struct.ip, %struct.ip* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = shl i32 %12, 2
  store i32 %13, i32* %5, align 4
  %14 = load %struct.ip*, %struct.ip** %2, align 8
  %15 = getelementptr inbounds %struct.ip, %struct.ip* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ntohs(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.ip*, %struct.ip** %2, align 8
  %21 = call i64 @ip_next(%struct.ip* %20)
  %22 = inttoptr i64 %21 to %struct.tcphdr*
  store %struct.tcphdr* %22, %struct.tcphdr** %4, align 8
  %23 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %24 = bitcast %struct.tcphdr* %23 to i64*
  store i64* %24, i64** %3, align 8
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %29, %1
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i64*, i64** %3, align 8
  %31 = getelementptr inbounds i64, i64* %30, i32 1
  store i64* %31, i64** %3, align 8
  %32 = load i64, i64* %30, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %37, 2
  store i32 %38, i32* %7, align 4
  br label %26

39:                                               ; preds = %26
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  %43 = load i64*, i64** %3, align 8
  %44 = load i64, i64* %43, align 8
  %45 = bitcast i32* %9 to i64*
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  store i64 %44, i64* %46, align 4
  %47 = bitcast i32* %9 to i64*
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  store i64 0, i64* %48, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %42, %39
  %53 = load %struct.ip*, %struct.ip** %2, align 8
  %54 = getelementptr inbounds %struct.ip, %struct.ip* %53, i32 0, i32 3
  %55 = bitcast i32* %54 to i8*
  %56 = bitcast i8* %55 to i64*
  store i64* %56, i64** %3, align 8
  %57 = load i64*, i64** %3, align 8
  %58 = getelementptr inbounds i64, i64* %57, i32 1
  store i64* %58, i64** %3, align 8
  %59 = load i64, i64* %57, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %8, align 4
  %64 = load i64*, i64** %3, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %8, align 4
  %70 = load %struct.ip*, %struct.ip** %2, align 8
  %71 = getelementptr inbounds %struct.ip, %struct.ip* %70, i32 0, i32 2
  %72 = bitcast i32* %71 to i8*
  %73 = bitcast i8* %72 to i64*
  store i64* %73, i64** %3, align 8
  %74 = load i64*, i64** %3, align 8
  %75 = getelementptr inbounds i64, i64* %74, i32 1
  store i64* %75, i64** %3, align 8
  %76 = load i64, i64* %74, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %8, align 4
  %81 = load i64*, i64** %3, align 8
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = call i64 @htons(i64 %88)
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %8, align 4
  %94 = load %struct.ip*, %struct.ip** %2, align 8
  %95 = getelementptr inbounds %struct.ip, %struct.ip* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @htons(i64 %96)
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = ashr i32 %102, 16
  %104 = load i32, i32* %8, align 4
  %105 = and i32 %104, 65535
  %106 = add nsw i32 %103, %105
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = ashr i32 %107, 16
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = xor i32 %111, -1
  %113 = sext i32 %112 to i64
  ret i64 %113
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @ip_next(%struct.ip*) #1

declare dso_local i64 @htons(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
