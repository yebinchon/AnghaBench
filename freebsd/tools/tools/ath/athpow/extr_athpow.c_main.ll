; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athpow/extr_athpow.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athpow/extr_athpow.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_diag = type { i8*, i32, i8*, i32 }

@PWR_TABLE_SIZE = common dso_local global i32 0, align 4
@PWR_TABLE_SIZE_2413 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ATH\00", align 1
@ATH_DEFAULT = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"i:v\00", align 1
@optarg = common dso_local global i8* null, align 8
@HAL_DIAG_REVS = common dso_local global i32 0, align 4
@SIOCGATHDIAG = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@HAL_DIAG_TXRATES = common dso_local global i32 0, align 4
@HAL_DIAG_PCDAC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"PCDAC table:\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Power per rate table:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath_diag, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [37 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  %18 = load i32, i32* @PWR_TABLE_SIZE, align 4
  %19 = load i32, i32* @PWR_TABLE_SIZE_2413, align 4
  %20 = call i32 @MAX(i32 %18, i32 %19)
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %13, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  %24 = load i32, i32* @AF_INET, align 4
  %25 = load i32, i32* @SOCK_DGRAM, align 4
  %26 = call i32 @socket(i32 %24, i32 %25, i32 0)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %2
  %32 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** @ATH_DEFAULT, align 8
  store i8* %36, i8** %11, align 8
  br label %37

37:                                               ; preds = %35, %31
  br label %38

38:                                               ; preds = %55, %37
  %39 = load i32, i32* %4, align 4
  %40 = load i8**, i8*** %5, align 8
  %41 = call i32 @getopt(i32 %39, i8** %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %41, i32* %9, align 4
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  switch i32 %44, label %50 [
    i32 105, label %45
    i32 118, label %47
  ]

45:                                               ; preds = %43
  %46 = load i8*, i8** @optarg, align 8
  store i8* %46, i8** %11, align 8
  br label %55

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %55

50:                                               ; preds = %43
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @usage(i8* %53)
  br label %55

55:                                               ; preds = %50, %47, %45
  br label %38

56:                                               ; preds = %38
  %57 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %10, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @strncpy(i8* %58, i8* %59, i32 8)
  %61 = load i32, i32* @HAL_DIAG_REVS, align 4
  %62 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %10, i32 0, i32 3
  store i32 %61, i32* %62, align 8
  %63 = bitcast i32* %12 to i8*
  %64 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %10, i32 0, i32 2
  store i8* %63, i8** %64, align 8
  %65 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %10, i32 0, i32 1
  store i32 4, i32* %65, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @SIOCGATHDIAG, align 4
  %68 = call i64 @ioctl(i32 %66, i32 %67, %struct.ath_diag* %10)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %56
  %71 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %10, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @err(i32 1, i8* %72)
  br label %74

74:                                               ; preds = %70, %56
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* @stdout, align 4
  %79 = call i32 @printRevs(i32 %78, i32* %12)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* @HAL_DIAG_TXRATES, align 4
  %82 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %10, i32 0, i32 3
  store i32 %81, i32* %82, align 8
  %83 = getelementptr inbounds [37 x i32], [37 x i32]* %15, i64 0, i64 0
  %84 = bitcast i32* %83 to i8*
  %85 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %10, i32 0, i32 2
  store i8* %84, i8** %85, align 8
  %86 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %10, i32 0, i32 1
  store i32 148, i32* %86, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @SIOCGATHDIAG, align 4
  %89 = call i64 @ioctl(i32 %87, i32 %88, %struct.ath_diag* %10)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %80
  %92 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %10, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @err(i32 1, i8* %93)
  br label %95

95:                                               ; preds = %91, %80
  store i32 37, i32* %16, align 4
  %96 = load i32, i32* @HAL_DIAG_PCDAC, align 4
  %97 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %10, i32 0, i32 3
  store i32 %96, i32* %97, align 8
  %98 = bitcast i32* %23 to i8*
  %99 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %10, i32 0, i32 2
  store i8* %98, i8** %99, align 8
  %100 = mul nuw i64 4, %21
  %101 = trunc i64 %100 to i32
  %102 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %10, i32 0, i32 1
  store i32 %101, i32* %102, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @SIOCGATHDIAG, align 4
  %105 = call i64 @ioctl(i32 %103, i32 %104, %struct.ath_diag* %10)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %95
  %108 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %10, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @err(i32 1, i8* %109)
  br label %111

111:                                              ; preds = %107, %95
  %112 = call i64 @IS_2413(i32* %12)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = call i64 @IS_5413(i32* %12)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %114, %111
  %118 = load i32, i32* @PWR_TABLE_SIZE_2413, align 4
  store i32 %118, i32* %17, align 4
  br label %121

119:                                              ; preds = %114
  %120 = load i32, i32* @PWR_TABLE_SIZE, align 4
  store i32 %120, i32* %17, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %123 = load i32, i32* @stdout, align 4
  %124 = load i32, i32* %17, align 4
  %125 = call i32 @printPcdacTable(i32 %123, i32* %23, i32 %124)
  %126 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %127 = load i32, i32* @stdout, align 4
  %128 = getelementptr inbounds [37 x i32], [37 x i32]* %15, i64 0, i64 0
  %129 = load i32, i32* %16, align 4
  %130 = call i32 @printPowerPerRate(i32 %127, i32* %128, i32 %129)
  store i32 0, i32* %3, align 4
  %131 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %131)
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @MAX(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ath_diag*) #1

declare dso_local i32 @printRevs(i32, i32*) #1

declare dso_local i64 @IS_2413(i32*) #1

declare dso_local i64 @IS_5413(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @printPcdacTable(i32, i32*, i32) #1

declare dso_local i32 @printPowerPerRate(i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
