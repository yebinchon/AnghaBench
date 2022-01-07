; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_tcpmss.c_correct_mss.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_tcpmss.c_correct_mss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcphdr = type { i64 }

@TCPOPT_EOL = common dso_local global i64 0, align 8
@TCPOPT_NOP = common dso_local global i64 0, align 8
@TCPOPT_MAXSEG = common dso_local global i64 0, align 8
@TCPOLEN_MAXSEG = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcphdr*, i32, i32, i32)* @correct_mss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @correct_mss(%struct.tcphdr* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tcphdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.tcphdr* %0, %struct.tcphdr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = sub i64 %16, 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %20 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %19, i64 1
  %21 = bitcast %struct.tcphdr* %20 to i64*
  store i64* %21, i64** %11, align 8
  br label %22

22:                                               ; preds = %94, %4
  %23 = load i32, i32* %9, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %102

25:                                               ; preds = %22
  %26 = load i64*, i64** %11, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TCPOPT_EOL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %102

31:                                               ; preds = %25
  %32 = load i64*, i64** %11, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TCPOPT_NOP, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 1, i32* %10, align 4
  br label %92

37:                                               ; preds = %31
  %38 = load i64*, i64** %11, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %37
  br label %102

49:                                               ; preds = %44
  %50 = load i64*, i64** %11, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TCPOPT_MAXSEG, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %91

54:                                               ; preds = %49
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @TCPOLEN_MAXSEG, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %94

59:                                               ; preds = %54
  %60 = load i64*, i64** %11, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 2
  %62 = call i32 @be16dec(i64* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %90

66:                                               ; preds = %59
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @CSUM_TCP, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %12, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %12, align 4
  %75 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %76 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %75, i32 0, i32 0
  %77 = call i32 @be16dec(i64* %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @TCPMSS_ADJUST_CHECKSUM(i32 %78, i32 %79)
  %81 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %82 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %81, i32 0, i32 0
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @be16enc(i64* %82, i32 %83)
  br label %85

85:                                               ; preds = %71, %66
  %86 = load i64*, i64** %11, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 2
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @be16enc(i64* %87, i32 %88)
  store i32 1, i32* %13, align 4
  br label %90

90:                                               ; preds = %85, %59
  br label %91

91:                                               ; preds = %90, %49
  br label %92

92:                                               ; preds = %91, %36
  br label %93

93:                                               ; preds = %92
  br label %94

94:                                               ; preds = %93, %58
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %9, align 4
  %97 = sub nsw i32 %96, %95
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i64*, i64** %11, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  store i64* %101, i64** %11, align 8
  br label %22

102:                                              ; preds = %48, %30, %22
  %103 = load i32, i32* %13, align 4
  ret i32 %103
}

declare dso_local i32 @be16dec(i64*) #1

declare dso_local i32 @TCPMSS_ADJUST_CHECKSUM(i32, i32) #1

declare dso_local i32 @be16enc(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
