; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_sis.c_pqisrc_send_sis_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_sis.c_pqisrc_send_sis_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, i32, i32, i32 }

@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@SIS_CMD_COMPLETE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@LEGACY_SIS_SRCV_MAILBOX = common dso_local global i64 0, align 8
@LEGACY_SIS_ODBR_R = common dso_local global i64 0, align 8
@LEGACY_SIS_IDBR = common dso_local global i64 0, align 8
@SIS_CMD_SUBMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"val : %x\0A\00", align 1
@SIS_CMD_COMPLETE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Sync command %x, timedout\0A\00", align 1
@PQI_STATUS_TIMEOUT = common dso_local global i32 0, align 4
@SIS_CMD_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"SIS cmd failed with status = 0x%x\0A\00", align 1
@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"OUT failed\0A\00", align 1
@SIS_POLL_START_WAIT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*)* @pqisrc_send_sis_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqisrc_send_sis_cmd(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* @SIS_CMD_COMPLETE_TIMEOUT, align 4
  store i32 %11, i32* %8, align 4
  %12 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %38, %2
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 6
  br i1 %15, label %16, label %41

16:                                               ; preds = %13
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i64, i64* @LEGACY_SIS_SRCV_MAILBOX, align 8
  %27 = load i32, i32* %7, align 4
  %28 = mul nsw i32 %27, 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %26, %29
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @LE_32(i32 %35)
  %37 = call i32 @PCI_MEM_PUT32(%struct.TYPE_7__* %17, i32* %25, i64 %30, i32 %36)
  br label %38

38:                                               ; preds = %16
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %13

41:                                               ; preds = %13
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  %47 = load i64, i64* @LEGACY_SIS_ODBR_R, align 8
  %48 = call i32 @LE_32(i32 4096)
  %49 = call i32 @PCI_MEM_PUT32(%struct.TYPE_7__* %42, i32* %46, i64 %47, i32 %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i64, i64* @LEGACY_SIS_IDBR, align 8
  %56 = load i32, i32* @SIS_CMD_SUBMIT, align 4
  %57 = call i32 @LE_32(i32 %56)
  %58 = call i32 @PCI_MEM_PUT32(%struct.TYPE_7__* %50, i32* %54, i64 %55, i32 %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i64, i64* @LEGACY_SIS_ODBR_R, align 8
  %65 = call i32 @PCI_MEM_GET32(%struct.TYPE_7__* %59, i32* %63, i64 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i64, i64* @LEGACY_SIS_ODBR_R, align 8
  %74 = call i32 @PCI_MEM_GET32(%struct.TYPE_7__* %68, i32* %72, i64 %73)
  %75 = load i32, i32* @SIS_CMD_COMPLETE, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @COND_WAIT(i32 %76, i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %41
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @DBG_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @PQI_STATUS_TIMEOUT, align 4
  store i32 %86, i32* %6, align 4
  br label %142

87:                                               ; preds = %41
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i64, i64* @LEGACY_SIS_SRCV_MAILBOX, align 8
  %96 = call i32 @PCI_MEM_GET32(%struct.TYPE_7__* %88, i32* %94, i64 %95)
  %97 = call i32 @LE_32(i32 %96)
  %98 = load i32*, i32** %5, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  store i32 %97, i32* %99, align 4
  %100 = load i32*, i32** %5, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @SIS_CMD_STATUS_SUCCESS, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %87
  %106 = load i32*, i32** %5, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @DBG_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %110, i32* %6, align 4
  br label %142

111:                                              ; preds = %87
  store i32 1, i32* %7, align 4
  br label %112

112:                                              ; preds = %136, %111
  %113 = load i32, i32* %7, align 4
  %114 = icmp slt i32 %113, 6
  br i1 %114, label %115, label %139

115:                                              ; preds = %112
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i64, i64* @LEGACY_SIS_SRCV_MAILBOX, align 8
  %126 = load i32, i32* %7, align 4
  %127 = mul nsw i32 %126, 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %125, %128
  %130 = call i32 @PCI_MEM_GET32(%struct.TYPE_7__* %116, i32* %124, i64 %129)
  %131 = call i32 @LE_32(i32 %130)
  %132 = load i32*, i32** %5, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %131, i32* %135, align 4
  br label %136

136:                                              ; preds = %115
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %112

139:                                              ; preds = %112
  %140 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %141 = load i32, i32* %6, align 4
  store i32 %141, i32* %3, align 4
  br label %145

142:                                              ; preds = %105, %81
  %143 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %144 = load i32, i32* %6, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %142, %139
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @DBG_FUNC(i8*, ...) #1

declare dso_local i32 @PCI_MEM_PUT32(%struct.TYPE_7__*, i32*, i64, i32) #1

declare dso_local i32 @LE_32(i32) #1

declare dso_local i32 @PCI_MEM_GET32(%struct.TYPE_7__*, i32*, i64) #1

declare dso_local i32 @COND_WAIT(i32, i32) #1

declare dso_local i32 @DBG_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
