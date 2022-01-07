; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_mdeu_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_mdeu_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptodesc = type { i32 }

@SEC_MDEU_MODE_PD = common dso_local global i32 0, align 4
@SEC_MDEU_MODE_INIT = common dso_local global i32 0, align 4
@SEC_EU_NONE = common dso_local global i32 0, align 4
@SEC_MDEU_MODE_HMAC = common dso_local global i32 0, align 4
@SEC_EU_MDEU_A = common dso_local global i32 0, align 4
@SEC_MDEU_MODE_MD5 = common dso_local global i32 0, align 4
@MD5_HASH_LEN = common dso_local global i32 0, align 4
@SEC_MDEU_MODE_SHA1 = common dso_local global i32 0, align 4
@SHA1_HASH_LEN = common dso_local global i32 0, align 4
@SEC_MDEU_MODE_SHA256 = common dso_local global i32 0, align 4
@SEC_MDEU_MODE_SHA384 = common dso_local global i32 0, align 4
@SEC_EU_MDEU_B = common dso_local global i32 0, align 4
@SEC_MDEU_MODE_SHA512 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SEC_HMAC_HASH_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cryptodesc*, i32*, i32*, i32*)* @sec_mdeu_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_mdeu_config(%struct.cryptodesc* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cryptodesc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.cryptodesc* %0, %struct.cryptodesc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* @SEC_MDEU_MODE_PD, align 4
  %11 = load i32, i32* @SEC_MDEU_MODE_INIT, align 4
  %12 = or i32 %10, %11
  %13 = load i32*, i32** %8, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @SEC_EU_NONE, align 4
  %15 = load i32*, i32** %7, align 8
  store i32 %14, i32* %15, align 4
  %16 = load %struct.cryptodesc*, %struct.cryptodesc** %6, align 8
  %17 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %74 [
    i32 133, label %19
    i32 134, label %24
    i32 131, label %33
    i32 132, label %38
    i32 130, label %47
    i32 129, label %56
    i32 128, label %65
  ]

19:                                               ; preds = %4
  %20 = load i32, i32* @SEC_MDEU_MODE_HMAC, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %4, %19
  %25 = load i32, i32* @SEC_EU_MDEU_A, align 4
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @SEC_MDEU_MODE_MD5, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %27
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @MD5_HASH_LEN, align 4
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  br label %76

33:                                               ; preds = %4
  %34 = load i32, i32* @SEC_MDEU_MODE_HMAC, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %4, %33
  %39 = load i32, i32* @SEC_EU_MDEU_A, align 4
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @SEC_MDEU_MODE_SHA1, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @SHA1_HASH_LEN, align 4
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  br label %76

47:                                               ; preds = %4
  %48 = load i32, i32* @SEC_MDEU_MODE_HMAC, align 4
  %49 = load i32, i32* @SEC_MDEU_MODE_SHA256, align 4
  %50 = or i32 %48, %49
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* @SEC_EU_MDEU_A, align 4
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  br label %76

56:                                               ; preds = %4
  %57 = load i32, i32* @SEC_MDEU_MODE_HMAC, align 4
  %58 = load i32, i32* @SEC_MDEU_MODE_SHA384, align 4
  %59 = or i32 %57, %58
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @SEC_EU_MDEU_B, align 4
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  br label %76

65:                                               ; preds = %4
  %66 = load i32, i32* @SEC_MDEU_MODE_HMAC, align 4
  %67 = load i32, i32* @SEC_MDEU_MODE_SHA512, align 4
  %68 = or i32 %66, %67
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %68
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* @SEC_EU_MDEU_B, align 4
  %73 = load i32*, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  br label %76

74:                                               ; preds = %4
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %5, align 4
  br label %86

76:                                               ; preds = %65, %56, %47, %38, %24
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @SEC_MDEU_MODE_HMAC, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* @SEC_HMAC_HASH_LEN, align 4
  %84 = load i32*, i32** %9, align 8
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %82, %76
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %74
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
