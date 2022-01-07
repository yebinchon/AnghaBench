; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_mii_bitbang.c_mii_bitbang_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_mii_bitbang.c_mii_bitbang_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MII_COMMAND_START = common dso_local global i32 0, align 4
@MII_COMMAND_READ = common dso_local global i32 0, align 4
@MDIRHOST = common dso_local global i32 0, align 4
@MDC = common dso_local global i32 0, align 4
@MREAD = common dso_local global i32 0, align 4
@MDI = common dso_local global i32 0, align 4
@MDIRPHY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mii_bitbang_readreg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @mii_bitbang_sync(i32 %12, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MII_COMMAND_START, align 4
  %18 = call i32 @mii_bitbang_sendbits(i32 %15, i32 %16, i32 %17, i32 2)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MII_COMMAND_READ, align 4
  %22 = call i32 @mii_bitbang_sendbits(i32 %19, i32 %20, i32 %21, i32 2)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @mii_bitbang_sendbits(i32 %23, i32 %24, i32 %25, i32 5)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @mii_bitbang_sendbits(i32 %27, i32 %28, i32 %29, i32 5)
  %31 = load i32, i32* @MDIRHOST, align 4
  %32 = call i32 @MWRITE(i32 %31)
  %33 = load i32, i32* @MDIRHOST, align 4
  %34 = load i32, i32* @MDC, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @MWRITE(i32 %35)
  %37 = load i32, i32* @MDIRHOST, align 4
  %38 = call i32 @MWRITE(i32 %37)
  %39 = load i32, i32* @MREAD, align 4
  %40 = load i32, i32* @MDI, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* @MDIRHOST, align 4
  %43 = load i32, i32* @MDC, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @MWRITE(i32 %44)
  %46 = load i32, i32* @MDIRHOST, align 4
  %47 = call i32 @MWRITE(i32 %46)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %71, %4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 16
  br i1 %50, label %51, label %74

51:                                               ; preds = %48
  %52 = load i32, i32* %11, align 4
  %53 = shl i32 %52, 1
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load i32, i32* @MREAD, align 4
  %58 = load i32, i32* @MDI, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %61, %56, %51
  %65 = load i32, i32* @MDIRHOST, align 4
  %66 = load i32, i32* @MDC, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @MWRITE(i32 %67)
  %69 = load i32, i32* @MDIRHOST, align 4
  %70 = call i32 @MWRITE(i32 %69)
  br label %71

71:                                               ; preds = %64
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %48

74:                                               ; preds = %48
  %75 = load i32, i32* @MDIRPHY, align 4
  %76 = call i32 @MWRITE(i32 %75)
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %11, align 4
  br label %82

82:                                               ; preds = %80, %79
  %83 = phi i32 [ 0, %79 ], [ %81, %80 ]
  ret i32 %83
}

declare dso_local i32 @mii_bitbang_sync(i32, i32) #1

declare dso_local i32 @mii_bitbang_sendbits(i32, i32, i32, i32) #1

declare dso_local i32 @MWRITE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
