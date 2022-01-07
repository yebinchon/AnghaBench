; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_nvram_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_nvram_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Invalid parameter, offset 0x%x buf_size 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Invalid parameter, offset 0x%x + buf_size 0x%x > flash_size 0x%x\0A\00", align 1
@MCPR_NVM_COMMAND_FIRST = common dso_local global i32 0, align 4
@MCPR_NVM_COMMAND_LAST = common dso_local global i32 0, align 4
@NVRAM_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i32, i32*, i32)* @bxe_nvram_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_nvram_write(%struct.bxe_softc* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @bxe_nvram_write1(%struct.bxe_softc* %17, i32 %18, i32* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %133

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 3
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 3
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26, %22
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 (%struct.bxe_softc*, i8*, i32, i32, ...) @BLOGE(%struct.bxe_softc* %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  store i32 -1, i32* %5, align 4
  br label %133

35:                                               ; preds = %26
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %133

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %40, %41
  %43 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %44 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %42, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %39
  %49 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %53 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (%struct.bxe_softc*, i8*, i32, i32, ...) @BLOGE(%struct.bxe_softc* %49, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51, i32 %55)
  store i32 -1, i32* %5, align 4
  br label %133

57:                                               ; preds = %39
  %58 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %59 = call i32 @bxe_acquire_nvram_lock(%struct.bxe_softc* %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %5, align 4
  br label %133

64:                                               ; preds = %57
  %65 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %66 = call i32 @bxe_enable_nvram_access(%struct.bxe_softc* %65)
  store i32 0, i32* %12, align 4
  %67 = load i32, i32* @MCPR_NVM_COMMAND_FIRST, align 4
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %109, %64
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* %13, align 4
  %74 = icmp eq i32 %73, 0
  br label %75

75:                                               ; preds = %72, %68
  %76 = phi i1 [ false, %68 ], [ %74, %72 ]
  br i1 %76, label %77, label %127

77:                                               ; preds = %75
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = sub i64 %81, 4
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* @MCPR_NVM_COMMAND_LAST, align 4
  %86 = load i32, i32* %10, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %10, align 4
  br label %109

88:                                               ; preds = %77
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 4
  %91 = load i32, i32* @NVRAM_PAGE_SIZE, align 4
  %92 = srem i32 %90, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, i32* @MCPR_NVM_COMMAND_LAST, align 4
  %96 = load i32, i32* %10, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %10, align 4
  br label %108

98:                                               ; preds = %88
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @NVRAM_PAGE_SIZE, align 4
  %101 = srem i32 %99, %100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* @MCPR_NVM_COMMAND_FIRST, align 4
  %105 = load i32, i32* %10, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %103, %98
  br label %108

108:                                              ; preds = %107, %94
  br label %109

109:                                              ; preds = %108, %84
  %110 = load i32*, i32** %8, align 8
  %111 = call i32 @memcpy(i32* %11, i32* %110, i32 4)
  %112 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @bxe_nvram_write_dword(%struct.bxe_softc* %112, i32 %113, i32 %114, i32 %115)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = add i64 %118, 4
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %7, align 4
  %121 = load i32*, i32** %8, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 4
  store i32* %122, i32** %8, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = add i64 %124, 4
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %68

127:                                              ; preds = %75
  %128 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %129 = call i32 @bxe_disable_nvram_access(%struct.bxe_softc* %128)
  %130 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %131 = call i32 @bxe_release_nvram_lock(%struct.bxe_softc* %130)
  %132 = load i32, i32* %13, align 4
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %127, %62, %48, %38, %30, %16
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @bxe_nvram_write1(%struct.bxe_softc*, i32, i32*, i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32, i32, ...) #1

declare dso_local i32 @bxe_acquire_nvram_lock(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_enable_nvram_access(%struct.bxe_softc*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @bxe_nvram_write_dword(%struct.bxe_softc*, i32, i32, i32) #1

declare dso_local i32 @bxe_disable_nvram_access(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_release_nvram_lock(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
