; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw2.c_tcpopts_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw2.c_tcpopts_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcphdr = type { i32 }

@TCPOPT_EOL = common dso_local global i32 0, align 4
@TCPOPT_NOP = common dso_local global i32 0, align 4
@IP_FW_TCPOPT_MSS = common dso_local global i32 0, align 4
@IP_FW_TCPOPT_WINDOW = common dso_local global i32 0, align 4
@IP_FW_TCPOPT_SACK = common dso_local global i32 0, align 4
@IP_FW_TCPOPT_TS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcphdr*, i32*)* @tcpopts_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpopts_parse(%struct.tcphdr* %0, i32* %1) #0 {
  %3 = alloca %struct.tcphdr*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tcphdr* %0, %struct.tcphdr** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.tcphdr*, %struct.tcphdr** %3, align 8
  %11 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %10, i64 1
  %12 = bitcast %struct.tcphdr* %11 to i32*
  store i32* %12, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.tcphdr*, %struct.tcphdr** %3, align 8
  %14 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %15, 2
  %17 = sext i32 %16 to i64
  %18 = sub i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %72, %2
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %80

23:                                               ; preds = %20
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @TCPOPT_EOL, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %80

31:                                               ; preds = %23
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @TCPOPT_NOP, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* %6, align 4
  br label %44

36:                                               ; preds = %31
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %80

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %35
  %45 = load i32, i32* %9, align 4
  switch i32 %45, label %46 [
    i32 132, label %47
    i32 128, label %59
    i32 130, label %63
    i32 131, label %63
    i32 129, label %67
  ]

46:                                               ; preds = %44
  br label %71

47:                                               ; preds = %44
  %48 = load i32, i32* @IP_FW_TCPOPT_MSS, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = call i32 @be16dec(i32* %55)
  %57 = load i32*, i32** %4, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %47
  br label %71

59:                                               ; preds = %44
  %60 = load i32, i32* @IP_FW_TCPOPT_WINDOW, align 4
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %71

63:                                               ; preds = %44, %44
  %64 = load i32, i32* @IP_FW_TCPOPT_SACK, align 4
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  br label %71

67:                                               ; preds = %44
  %68 = load i32, i32* @IP_FW_TCPOPT_TS, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %67, %63, %59, %58, %46
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %8, align 4
  %75 = sub nsw i32 %74, %73
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %5, align 8
  br label %20

80:                                               ; preds = %42, %30, %20
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @be16dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
