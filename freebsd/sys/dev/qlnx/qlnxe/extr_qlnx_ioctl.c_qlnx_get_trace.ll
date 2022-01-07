; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_ioctl.c_qlnx_get_trace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_ioctl.c_qlnx_get_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.ecore_hwfn* }
%struct.ecore_hwfn = type { i32 }
%struct.TYPE_8__ = type { i32*, i32, i32*, i32* }
%struct.ecore_ptt = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"qlnx_zalloc [%d, 0x%x]failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"ecore_ptt_acquire [%d, 0x%x]failed\0A\00", align 1
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"cmd = 0x%x failed [0x%x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, %struct.TYPE_8__*)* @qlnx_get_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnx_get_trace(%struct.TYPE_9__* %0, i32 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_hwfn*, align 8
  %10 = alloca %struct.ecore_ptt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @qlnx_zalloc(i32 %19)
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @QL_DPRINT1(%struct.TYPE_9__* %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %4, align 4
  br label %160

31:                                               ; preds = %3
  %32 = call i32 (...) @ecore_dbg_get_fw_func_ver()
  %33 = call i32 @ecore_dbg_set_app_ver(i32 %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %37, i64 %39
  store %struct.ecore_hwfn* %40, %struct.ecore_hwfn** %9, align 8
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %42 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %41)
  store %struct.ecore_ptt* %42, %struct.ecore_ptt** %10, align 8
  %43 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %44 = icmp ne %struct.ecore_ptt* %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %31
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @QL_DPRINT1(%struct.TYPE_9__* %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %50)
  %52 = load i32, i32* @ENXIO, align 4
  store i32 %52, i32* %4, align 4
  br label %160

53:                                               ; preds = %31
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %122 [
    i32 130, label %57
    i32 128, label %70
    i32 131, label %83
    i32 129, label %96
    i32 132, label %109
  ]

57:                                               ; preds = %53
  %58 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %59 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = ashr i32 %67, 2
  %69 = call i32 @ecore_dbg_mcp_trace_dump(%struct.ecore_hwfn* %58, %struct.ecore_ptt* %59, i8* %60, i32 %68, i32* %11)
  store i32 %69, i32* %8, align 4
  br label %122

70:                                               ; preds = %53
  %71 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %72 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 2
  %82 = call i32 @ecore_dbg_reg_fifo_dump(%struct.ecore_hwfn* %71, %struct.ecore_ptt* %72, i8* %73, i32 %81, i32* %11)
  store i32 %82, i32* %8, align 4
  br label %122

83:                                               ; preds = %53
  %84 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %85 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 2
  %95 = call i32 @ecore_dbg_igu_fifo_dump(%struct.ecore_hwfn* %84, %struct.ecore_ptt* %85, i8* %86, i32 %94, i32* %11)
  store i32 %95, i32* %8, align 4
  br label %122

96:                                               ; preds = %53
  %97 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %98 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = ashr i32 %106, 2
  %108 = call i32 @ecore_dbg_protection_override_dump(%struct.ecore_hwfn* %97, %struct.ecore_ptt* %98, i8* %99, i32 %107, i32* %11)
  store i32 %108, i32* %8, align 4
  br label %122

109:                                              ; preds = %53
  %110 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %111 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = ashr i32 %119, 2
  %121 = call i32 @ecore_dbg_fw_asserts_dump(%struct.ecore_hwfn* %110, %struct.ecore_ptt* %111, i8* %112, i32 %120, i32* %11)
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %53, %109, %96, %83, %70, %57
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @DBG_STATUS_OK, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %122
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @QL_DPRINT1(%struct.TYPE_9__* %127, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %130, i32 %131)
  store i32 0, i32* %11, align 4
  br label %133

133:                                              ; preds = %126, %122
  %134 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %135 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %136 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %134, %struct.ecore_ptt* %135)
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %137, i32* %143, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %133
  %147 = load i8*, i8** %12, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %11, align 4
  %156 = shl i32 %155, 2
  %157 = call i32 @copyout(i8* %147, i32 %154, i32 %156)
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %146, %133
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %158, %45, %23
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i8* @qlnx_zalloc(i32) #1

declare dso_local i32 @QL_DPRINT1(%struct.TYPE_9__*, i8*, i32, i32) #1

declare dso_local i32 @ecore_dbg_set_app_ver(i32) #1

declare dso_local i32 @ecore_dbg_get_fw_func_ver(...) #1

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_dbg_mcp_trace_dump(%struct.ecore_hwfn*, %struct.ecore_ptt*, i8*, i32, i32*) #1

declare dso_local i32 @ecore_dbg_reg_fifo_dump(%struct.ecore_hwfn*, %struct.ecore_ptt*, i8*, i32, i32*) #1

declare dso_local i32 @ecore_dbg_igu_fifo_dump(%struct.ecore_hwfn*, %struct.ecore_ptt*, i8*, i32, i32*) #1

declare dso_local i32 @ecore_dbg_protection_override_dump(%struct.ecore_hwfn*, %struct.ecore_ptt*, i8*, i32, i32*) #1

declare dso_local i32 @ecore_dbg_fw_asserts_dump(%struct.ecore_hwfn*, %struct.ecore_ptt*, i8*, i32, i32*) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @copyout(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
