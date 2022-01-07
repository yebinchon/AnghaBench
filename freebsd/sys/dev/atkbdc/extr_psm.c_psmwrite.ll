; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_psmwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_psmwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.psm_softc* }
%struct.psm_softc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.uio = type { i64 }

@PSM_SMALLBUFSIZE = common dso_local global i32 0, align 4
@PSM_VALID = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PSM_LEVEL_NATIVE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"psm: cmd 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"psm: cmd 0x%x failed.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @psmwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psmwrite(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.psm_softc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.cdev*, %struct.cdev** %5, align 8
  %16 = getelementptr inbounds %struct.cdev, %struct.cdev* %15, i32 0, i32 0
  %17 = load %struct.psm_softc*, %struct.psm_softc** %16, align 8
  store %struct.psm_softc* %17, %struct.psm_softc** %8, align 8
  %18 = load i32, i32* @PSM_SMALLBUFSIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %22 = load %struct.psm_softc*, %struct.psm_softc** %8, align 8
  %23 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @PSM_VALID, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @EIO, align 4
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %95

30:                                               ; preds = %3
  %31 = load %struct.psm_softc*, %struct.psm_softc** %8, align 8
  %32 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PSM_LEVEL_NATIVE, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @ENODEV, align 4
  store i32 %38, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %95

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %92, %39
  %41 = load %struct.uio*, %struct.uio** %6, align 8
  %42 = getelementptr inbounds %struct.uio, %struct.uio* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %93

45:                                               ; preds = %40
  %46 = load i32, i32* @PSM_SMALLBUFSIZE, align 4
  %47 = load %struct.uio*, %struct.uio** %6, align 8
  %48 = getelementptr inbounds %struct.uio, %struct.uio* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @imin(i32 %46, i64 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.uio*, %struct.uio** %6, align 8
  %53 = call i32 @uiomove(i32* %21, i32 %51, %struct.uio* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %93

57:                                               ; preds = %45
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %89, %57
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %92

62:                                               ; preds = %58
  %63 = load i32, i32* @LOG_DEBUG, align 4
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %21, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @VLOG(i32 4, i32 %67)
  %69 = load %struct.psm_softc*, %struct.psm_softc** %8, align 8
  %70 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %21, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @write_aux_command(i32 %71, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %62
  %79 = load i32, i32* @LOG_DEBUG, align 4
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %21, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @VLOG(i32 2, i32 %83)
  %85 = load %struct.psm_softc*, %struct.psm_softc** %8, align 8
  %86 = load i32, i32* @FALSE, align 4
  %87 = call i32 @reinitialize(%struct.psm_softc* %85, i32 %86)
  store i32 %87, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %95

88:                                               ; preds = %62
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %58

92:                                               ; preds = %58
  br label %40

93:                                               ; preds = %56, %40
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %95

95:                                               ; preds = %93, %78, %37, %28
  %96 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @imin(i32, i64) #2

declare dso_local i32 @uiomove(i32*, i32, %struct.uio*) #2

declare dso_local i32 @VLOG(i32, i32) #2

declare dso_local i32 @write_aux_command(i32, i32) #2

declare dso_local i32 @reinitialize(%struct.psm_softc*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
