; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw2.c_ipopts_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw2.c_ipopts_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip = type { i32 }

@IPOPT_OPTVAL = common dso_local global i64 0, align 8
@IPOPT_EOL = common dso_local global i32 0, align 4
@IPOPT_NOP = common dso_local global i32 0, align 4
@IPOPT_OLEN = common dso_local global i64 0, align 8
@IP_FW_IPOPT_LSRR = common dso_local global i32 0, align 4
@IP_FW_IPOPT_SSRR = common dso_local global i32 0, align 4
@IP_FW_IPOPT_RR = common dso_local global i32 0, align 4
@IP_FW_IPOPT_TS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip*, i32*)* @ipopts_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipopts_match(%struct.ip* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ip* %0, %struct.ip** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.ip*, %struct.ip** %4, align 8
  %12 = getelementptr inbounds %struct.ip, %struct.ip* %11, i64 1
  %13 = bitcast %struct.ip* %12 to i32*
  store i32* %13, i32** %8, align 8
  %14 = load %struct.ip*, %struct.ip** %4, align 8
  %15 = getelementptr inbounds %struct.ip, %struct.ip* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 2
  %18 = sext i32 %17 to i64
  %19 = sub i64 %18, 4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %71, %2
  %22 = load i32, i32* %9, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %79

24:                                               ; preds = %21
  %25 = load i32*, i32** %8, align 8
  %26 = load i64, i64* @IPOPT_OPTVAL, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @IPOPT_EOL, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %79

33:                                               ; preds = %24
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @IPOPT_NOP, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %6, align 4
  br label %51

38:                                               ; preds = %33
  %39 = load i32*, i32** %8, align 8
  %40 = load i64, i64* @IPOPT_OLEN, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %38
  store i32 0, i32* %3, align 4
  br label %83

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %37
  %52 = load i32, i32* %10, align 4
  switch i32 %52, label %53 [
    i32 131, label %54
    i32 129, label %58
    i32 130, label %62
    i32 128, label %66
  ]

53:                                               ; preds = %51
  br label %70

54:                                               ; preds = %51
  %55 = load i32, i32* @IP_FW_IPOPT_LSRR, align 4
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %70

58:                                               ; preds = %51
  %59 = load i32, i32* @IP_FW_IPOPT_SSRR, align 4
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %70

62:                                               ; preds = %51
  %63 = load i32, i32* @IP_FW_IPOPT_RR, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %70

66:                                               ; preds = %51
  %67 = load i32, i32* @IP_FW_IPOPT_TS, align 4
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %66, %62, %58, %54, %53
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %9, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %8, align 8
  br label %21

79:                                               ; preds = %32, %21
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @flags_match(i32* %80, i32 %81)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %49
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @flags_match(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
