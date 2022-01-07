; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_nvram_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_nvram_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Invalid parameter, offset 0x%x buf_size 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Invalid parameter, offset 0x%x + buf_size 0x%x > flash_size 0x%x\0A\00", align 1
@MCPR_NVM_COMMAND_FIRST = common dso_local global i32 0, align 4
@MCPR_NVM_COMMAND_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i32, i32*, i32)* @bxe_nvram_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_nvram_read(%struct.bxe_softc* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 3
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = and i32 %17, 3
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20, %16, %4
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 (%struct.bxe_softc*, i8*, i32, i32, ...) @BLOGE(%struct.bxe_softc* %24, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  store i32 -1, i32* %5, align 4
  br label %102

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %29, %30
  %32 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %33 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %31, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %28
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %42 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.bxe_softc*, i8*, i32, i32, ...) @BLOGE(%struct.bxe_softc* %38, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40, i32 %44)
  store i32 -1, i32* %5, align 4
  br label %102

46:                                               ; preds = %28
  %47 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %48 = call i32 @bxe_acquire_nvram_lock(%struct.bxe_softc* %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %5, align 4
  br label %102

53:                                               ; preds = %46
  %54 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %55 = call i32 @bxe_enable_nvram_access(%struct.bxe_softc* %54)
  %56 = load i32, i32* @MCPR_NVM_COMMAND_FIRST, align 4
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %66, %53
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ugt i64 %59, 4
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* %12, align 4
  %63 = icmp eq i32 %62, 0
  br label %64

64:                                               ; preds = %61, %57
  %65 = phi i1 [ false, %57 ], [ %63, %61 ]
  br i1 %65, label %66, label %83

66:                                               ; preds = %64
  %67 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @bxe_nvram_read_dword(%struct.bxe_softc* %67, i32 %68, i32* %11, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @memcpy(i32* %71, i32* %11, i32 4)
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 %74, 4
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %7, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  store i32* %78, i32** %8, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = sub i64 %80, 4
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %57

83:                                               ; preds = %64
  %84 = load i32, i32* %12, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load i32, i32* @MCPR_NVM_COMMAND_LAST, align 4
  %88 = load i32, i32* %10, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @bxe_nvram_read_dword(%struct.bxe_softc* %90, i32 %91, i32* %11, i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @memcpy(i32* %94, i32* %11, i32 4)
  br label %96

96:                                               ; preds = %86, %83
  %97 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %98 = call i32 @bxe_disable_nvram_access(%struct.bxe_softc* %97)
  %99 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %100 = call i32 @bxe_release_nvram_lock(%struct.bxe_softc* %99)
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %96, %51, %37, %23
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32, i32, ...) #1

declare dso_local i32 @bxe_acquire_nvram_lock(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_enable_nvram_access(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_nvram_read_dword(%struct.bxe_softc*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @bxe_disable_nvram_access(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_release_nvram_lock(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
