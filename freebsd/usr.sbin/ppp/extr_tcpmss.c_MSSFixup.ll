; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tcpmss.c_MSSFixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tcpmss.c_MSSFixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcphdr = type { i32, i32, i32 }

@TH_SYN = common dso_local global i32 0, align 4
@TCPOPT_EOL = common dso_local global i64 0, align 8
@TCPOPT_NOP = common dso_local global i64 0, align 8
@TCPOPT_MAXSEG = common dso_local global i64 0, align 8
@TCPOLEN_MAXSEG = common dso_local global i64 0, align 8
@LogDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"MSS: %u -> %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcphdr*, i64, i32)* @MSSFixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MSSFixup(%struct.tcphdr* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.tcphdr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.tcphdr* %0, %struct.tcphdr** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %14 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %15, 2
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ule i64 %18, 12
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %3
  br label %116

25:                                               ; preds = %20
  %26 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %27 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TH_SYN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  br label %116

33:                                               ; preds = %25
  %34 = load i64, i64* %7, align 8
  %35 = sub i64 %34, 12
  store i64 %35, i64* %8, align 8
  %36 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %37 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %36, i64 1
  %38 = bitcast %struct.tcphdr* %37 to i64*
  store i64* %38, i64** %10, align 8
  br label %39

39:                                               ; preds = %109, %33
  %40 = load i64, i64* %8, align 8
  %41 = icmp ugt i64 %40, 0
  br i1 %41, label %42, label %116

42:                                               ; preds = %39
  %43 = load i64*, i64** %10, align 8
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TCPOPT_EOL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %116

48:                                               ; preds = %42
  %49 = load i64*, i64** %10, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TCPOPT_NOP, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i64 1, i64* %9, align 8
  br label %107

54:                                               ; preds = %48
  %55 = load i64*, i64** %10, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ule i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %8, align 8
  %63 = icmp ugt i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60, %54
  br label %116

65:                                               ; preds = %60
  %66 = load i64*, i64** %10, align 8
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @TCPOPT_MAXSEG, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %106

70:                                               ; preds = %65
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* @TCPOLEN_MAXSEG, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %109

75:                                               ; preds = %70
  %76 = load i64*, i64** %10, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 2
  %78 = bitcast i64* %77 to i32*
  store i32* %78, i32** %11, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ntohs(i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %105

84:                                               ; preds = %75
  %85 = load i32, i32* @LogDEBUG, align 4
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ntohs(i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @log_Printf(i32 %85, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %89)
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @htons(i32 %93)
  %95 = load i32*, i32** %11, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32*, i32** %11, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %12, align 4
  %99 = sub nsw i32 %98, %97
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %102 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ADJUST_CHECKSUM(i32 %100, i32 %103)
  br label %105

105:                                              ; preds = %84, %75
  br label %106

106:                                              ; preds = %105, %65
  br label %107

107:                                              ; preds = %106, %53
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108, %74
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* %8, align 8
  %112 = sub i64 %111, %110
  store i64 %112, i64* %8, align 8
  %113 = load i64, i64* %9, align 8
  %114 = load i64*, i64** %10, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 %113
  store i64* %115, i64** %10, align 8
  br label %39

116:                                              ; preds = %24, %32, %64, %47, %39
  ret void
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ADJUST_CHECKSUM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
