; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cmx/extr_cmx.c_cmx_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cmx/extr_cmx.c_cmx_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.cmx_softc* }
%struct.cmx_softc = type { i32, i32*, i32, i64 }
%struct.uio = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"called (len=%d flag=%b)\0A\00", align 1
@MODEBITS = common dso_local global i32 0, align 4
@CMX_MIN_WRLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SCR_HOST_TO_READER_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"uiomove failed (%d)\0A\00", align 1
@CCID_DRIVER_MINIMUM_TIMEOUT = common dso_local global i32 0, align 4
@SCR_HOST_TO_READER_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"cmd=%02x timeout=%lu\0A\00", align 1
@BSR_BULK_OUT_FULL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"buf[%02x]=%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"success\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @cmx_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmx_write(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cmx_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.cdev*, %struct.cdev** %5, align 8
  %13 = getelementptr inbounds %struct.cdev, %struct.cdev* %12, i32 0, i32 0
  %14 = load %struct.cmx_softc*, %struct.cmx_softc** %13, align 8
  store %struct.cmx_softc* %14, %struct.cmx_softc** %8, align 8
  %15 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %16 = icmp eq %struct.cmx_softc* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %19 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %3
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %4, align 4
  br label %163

24:                                               ; preds = %17
  %25 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %26 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.uio*, %struct.uio** %6, align 8
  %29 = getelementptr inbounds %struct.uio, %struct.uio* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @MODEBITS, align 4
  %33 = call i32 (i32, i8*, ...) @DEBUG_printf(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %32)
  %34 = load %struct.uio*, %struct.uio** %6, align 8
  %35 = getelementptr inbounds %struct.uio, %struct.uio* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %163

39:                                               ; preds = %24
  %40 = load %struct.uio*, %struct.uio** %6, align 8
  %41 = getelementptr inbounds %struct.uio, %struct.uio* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CMX_MIN_WRLEN, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %4, align 4
  br label %163

47:                                               ; preds = %39
  %48 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %49 = load i32, i32* @SCR_HOST_TO_READER_START, align 4
  %50 = call i32 @cmx_sync_write_SCR(%struct.cmx_softc* %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %163

54:                                               ; preds = %47
  %55 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %56 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %55, i32 0, i32 2
  store i32 0, i32* %56, align 8
  br label %57

57:                                               ; preds = %150, %54
  %58 = load %struct.uio*, %struct.uio** %6, align 8
  %59 = getelementptr inbounds %struct.uio, %struct.uio* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %151

62:                                               ; preds = %57
  %63 = load %struct.uio*, %struct.uio** %6, align 8
  %64 = getelementptr inbounds %struct.uio, %struct.uio* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @MIN(i32 %65, i32 8)
  store i32 %66, i32* %10, align 4
  %67 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %68 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.uio*, %struct.uio** %6, align 8
  %72 = call i32 @uiomove(i32* %69, i32 %70, %struct.uio* %71)
  store i32 %72, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %62
  %75 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %76 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 (i32, i8*, ...) @DEBUG_printf(i32 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @CCID_DRIVER_MINIMUM_TIMEOUT, align 4
  %81 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %82 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %84 = load i32, i32* @SCR_HOST_TO_READER_DONE, align 4
  %85 = call i32 @cmx_sync_write_SCR(%struct.cmx_softc* %83, i32 %84)
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %4, align 4
  br label %163

87:                                               ; preds = %62
  %88 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %89 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %113

92:                                               ; preds = %87
  %93 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %94 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @cmx_timeout_by_cmd(i32 %97)
  %99 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %100 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %102 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %105 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %110 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i32, i8*, ...) @DEBUG_printf(i32 %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %108, i32 %111)
  br label %113

113:                                              ; preds = %92, %87
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %147, %113
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %150

118:                                              ; preds = %114
  %119 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %120 = load i32, i32* @BSR_BULK_OUT_FULL, align 4
  %121 = call i32 @cmx_wait_BSR(%struct.cmx_softc* %119, i32 %120, i32 0)
  store i32 %121, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %4, align 4
  br label %163

125:                                              ; preds = %118
  %126 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %127 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %128 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @cmx_write_DTR(%struct.cmx_softc* %126, i32 %133)
  %135 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %136 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %140 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i32, i8*, ...) @DEBUG_printf(i32 %137, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %138, i32 %145)
  br label %147

147:                                              ; preds = %125
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %11, align 4
  br label %114

150:                                              ; preds = %114
  br label %57

151:                                              ; preds = %57
  %152 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %153 = load i32, i32* @SCR_HOST_TO_READER_DONE, align 4
  %154 = call i32 @cmx_sync_write_SCR(%struct.cmx_softc* %152, i32 %153)
  store i32 %154, i32* %9, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = load i32, i32* %9, align 4
  store i32 %157, i32* %4, align 4
  br label %163

158:                                              ; preds = %151
  %159 = load %struct.cmx_softc*, %struct.cmx_softc** %8, align 8
  %160 = getelementptr inbounds %struct.cmx_softc, %struct.cmx_softc* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 (i32, i8*, ...) @DEBUG_printf(i32 %161, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %158, %156, %123, %74, %52, %45, %38, %22
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32 @DEBUG_printf(i32, i8*, ...) #1

declare dso_local i32 @cmx_sync_write_SCR(%struct.cmx_softc*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @uiomove(i32*, i32, %struct.uio*) #1

declare dso_local i32 @cmx_timeout_by_cmd(i32) #1

declare dso_local i32 @cmx_wait_BSR(%struct.cmx_softc*, i32, i32) #1

declare dso_local i32 @cmx_write_DTR(%struct.cmx_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
