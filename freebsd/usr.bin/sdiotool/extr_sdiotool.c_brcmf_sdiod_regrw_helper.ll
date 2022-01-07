; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sdiotool/extr_sdiotool.c_brcmf_sdiod_regrw_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sdiotool/extr_sdiotool.c_brcmf_sdiod_regrw_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_sdio_dev = type { i64 }

@BRCMF_SDIOD_NOMEDIUM = common dso_local global i64 0, align 8
@ENOMEDIUM = common dso_local global i32 0, align 4
@REG_F0_REG_MASK = common dso_local global i32 0, align 4
@SDIO_FUNC_0 = common dso_local global i32 0, align 4
@SDIO_FUNC_1 = common dso_local global i32 0, align 4
@SDIOH_API_ACCESS_RETRY_LIMIT = common dso_local global i64 0, align 8
@SBSDIO_FUNC1_SLEEPCSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to %s data F%d@0x%05x, err: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@SDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_sdio_dev*, i32, i32, i8*, i32)* @brcmf_sdiod_regrw_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_sdiod_regrw_helper(%struct.brcmf_sdio_dev* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.brcmf_sdio_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.brcmf_sdio_dev* %0, %struct.brcmf_sdio_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %13, align 8
  %15 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %7, align 8
  %16 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BRCMF_SDIOD_NOMEDIUM, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOMEDIUM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %108

23:                                               ; preds = %5
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @REG_F0_REG_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @SDIO_FUNC_0, align 4
  store i32 %30, i32* %12, align 4
  br label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @SDIO_FUNC_1, align 4
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %31, %29
  br label %34

34:                                               ; preds = %67, %33
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i8*, i8** %10, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @memset(i8* %38, i32 0, i32 %39)
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i64, i64* %13, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %46

46:                                               ; preds = %44, %41
  %47 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %7, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @brcmf_sdiod_request_data(%struct.brcmf_sdio_dev* %47, i32 %48, i32 %49, i32 %50, i8* %51, i32 %52)
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @ENOMEDIUM, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i64, i64* %13, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* @SDIOH_API_ACCESS_RETRY_LIMIT, align 8
  %66 = icmp slt i64 %63, %65
  br label %67

67:                                               ; preds = %62, %57, %54
  %68 = phi i1 [ false, %57 ], [ false, %54 ], [ %66, %62 ]
  br i1 %68, label %34, label %69

69:                                               ; preds = %67
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @ENOMEDIUM, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %7, align 8
  %76 = load i64, i64* @BRCMF_SDIOD_NOMEDIUM, align 8
  %77 = call i32 @brcmf_sdiod_change_state(%struct.brcmf_sdio_dev* %75, i64 %76)
  br label %106

78:                                               ; preds = %69
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %105

81:                                               ; preds = %78
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @SBSDIO_FUNC1_SLEEPCSR, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @brcmf_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %89, i32 %90, i32 %91, i32 %92)
  br label %104

94:                                               ; preds = %81
  %95 = load i32, i32* @SDIO, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @brcmf_dbg(i32 %95, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %99, i32 %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %94, %85
  br label %105

105:                                              ; preds = %104, %78
  br label %106

106:                                              ; preds = %105, %74
  %107 = load i32, i32* %14, align 4
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %106, %20
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @brcmf_sdiod_request_data(%struct.brcmf_sdio_dev*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @brcmf_sdiod_change_state(%struct.brcmf_sdio_dev*, i64) #1

declare dso_local i32 @brcmf_err(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
