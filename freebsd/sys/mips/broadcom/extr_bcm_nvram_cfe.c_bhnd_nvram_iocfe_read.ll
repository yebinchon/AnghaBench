; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_nvram_cfe.c_bhnd_nvram_iocfe_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_nvram_cfe.c_bhnd_nvram_iocfe_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_io = type { i32 }
%struct.bcm_nvram_iocfe = type { i64, i64, i32 }

@INT64_MAX = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cfe_readblk() failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"cfe_readblk() returned unexpected short read (%d/%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_io*, i64, i8*, i64)* @bhnd_nvram_iocfe_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_iocfe_read(%struct.bhnd_nvram_io* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bhnd_nvram_io*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bcm_nvram_iocfe*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.bhnd_nvram_io* %0, %struct.bhnd_nvram_io** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %6, align 8
  %19 = bitcast %struct.bhnd_nvram_io* %18 to %struct.bcm_nvram_iocfe*
  store %struct.bcm_nvram_iocfe* %19, %struct.bcm_nvram_iocfe** %10, align 8
  %20 = load i64, i64* @INT64_MAX, align 8
  %21 = load i64, i64* %7, align 8
  %22 = sub i64 %20, %21
  %23 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %10, align 8
  %24 = getelementptr inbounds %struct.bcm_nvram_iocfe, %struct.bcm_nvram_iocfe* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %5, align 4
  br label %118

29:                                               ; preds = %4
  %30 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %10, align 8
  %31 = getelementptr inbounds %struct.bcm_nvram_iocfe, %struct.bcm_nvram_iocfe* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %32, %33
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* @INT64_MAX, align 8
  %36 = load i64, i64* %12, align 8
  %37 = sub i64 %35, %36
  %38 = load i64, i64* %9, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %5, align 4
  br label %118

42:                                               ; preds = %29
  %43 = load i64, i64* %9, align 8
  store i64 %43, i64* %11, align 8
  br label %44

44:                                               ; preds = %107, %42
  %45 = load i64, i64* %11, align 8
  %46 = icmp ugt i64 %45, 0
  br i1 %46, label %47, label %112

47:                                               ; preds = %44
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %11, align 8
  %50 = sub i64 %48, %49
  store i64 %50, i64* %16, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* %16, align 8
  %53 = add i64 %51, %52
  store i64 %53, i64* %17, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = bitcast i8* %54 to i32*
  %56 = load i64, i64* %16, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = bitcast i32* %57 to i8*
  store i8* %58, i8** %15, align 8
  %59 = load i32, i32* @INT_MAX, align 4
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @ummin(i32 %59, i64 %60)
  store i32 %61, i32* %14, align 4
  %62 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %10, align 8
  %63 = getelementptr inbounds %struct.bcm_nvram_iocfe, %struct.bcm_nvram_iocfe* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* %17, align 8
  %66 = load i8*, i8** %15, align 8
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @cfe_readblk(i32 %64, i64 %65, i8* %66, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %47
  %72 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %10, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 (%struct.bcm_nvram_iocfe*, i8*, i32, ...) @IOCFE_LOG(%struct.bcm_nvram_iocfe* %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @ENXIO, align 4
  store i32 %75, i32* %5, align 4
  br label %118

76:                                               ; preds = %47
  %77 = load i32, i32* %13, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %76
  %80 = load i64, i64* %11, align 8
  %81 = icmp ugt i64 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %79
  %83 = load i64, i64* %11, align 8
  %84 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %10, align 8
  %85 = getelementptr inbounds %struct.bcm_nvram_iocfe, %struct.bcm_nvram_iocfe* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ult i64 %83, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %82
  %89 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %10, align 8
  %90 = getelementptr inbounds %struct.bcm_nvram_iocfe, %struct.bcm_nvram_iocfe* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %11, align 8
  %93 = sub i64 %91, %92
  %94 = load i64, i64* %7, align 8
  %95 = icmp ugt i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %88
  %97 = load %struct.bcm_nvram_iocfe*, %struct.bcm_nvram_iocfe** %10, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %14, align 4
  %100 = call i32 (%struct.bcm_nvram_iocfe*, i8*, i32, ...) @IOCFE_LOG(%struct.bcm_nvram_iocfe* %97, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load i32, i32* @ENXIO, align 4
  store i32 %101, i32* %5, align 4
  br label %118

102:                                              ; preds = %88, %82
  br label %103

103:                                              ; preds = %102, %79, %76
  %104 = load i32, i32* %13, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %112

107:                                              ; preds = %103
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %11, align 8
  %111 = sub i64 %110, %109
  store i64 %111, i64* %11, align 8
  br label %44

112:                                              ; preds = %106, %44
  %113 = load i64, i64* %11, align 8
  %114 = icmp ugt i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* @ENXIO, align 4
  store i32 %116, i32* %5, align 4
  br label %118

117:                                              ; preds = %112
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %117, %115, %96, %71, %40, %27
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @ummin(i32, i64) #1

declare dso_local i32 @cfe_readblk(i32, i64, i8*, i32) #1

declare dso_local i32 @IOCFE_LOG(%struct.bcm_nvram_iocfe*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
