; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_slice_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_slice_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i32 }
%struct.TYPE_9__ = type { i32 }

@mxge_max_slices = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@mxge_fw_aligned = common dso_local global i8* null, align 8
@mxge_fw_rss_aligned = common dso_local global i8* null, align 8
@mxge_fw_rss_unaligned = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Falling back to a single slice\0A\00", align 1
@MXGEFW_CMD_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"failed reset\0A\00", align 1
@MXGEFW_CMD_GET_RX_RING_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Cannot determine rx ring size\0A\00", align 1
@MXGEFW_CMD_SET_INTRQ_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"failed MXGEFW_CMD_SET_INTRQ_SIZE\0A\00", align 1
@MXGEFW_CMD_GET_MAX_RSS_QUEUES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"failed MXGEFW_CMD_GET_MAX_RSS_QUEUES\0A\00", align 1
@mxge_verbose = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"using %d slices\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @mxge_slice_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxge_slice_probe(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load i32, i32* @mxge_max_slices, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @mxge_max_slices, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @mp_ncpus, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %12, %1
  br label %181

19:                                               ; preds = %15
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pci_msix_count(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %181

27:                                               ; preds = %19
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %4, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** @mxge_fw_aligned, align 8
  %33 = icmp eq i8* %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i8*, i8** @mxge_fw_rss_aligned, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  br label %42

38:                                               ; preds = %27
  %39 = load i8*, i8** @mxge_fw_rss_unaligned, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = call i32 @mxge_load_firmware(%struct.TYPE_8__* %43, i32 0)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i32, i8*, ...) @device_printf(i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %181

52:                                               ; preds = %42
  %53 = call i32 @memset(%struct.TYPE_9__* %3, i32 0, i32 4)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %55 = load i32, i32* @MXGEFW_CMD_RESET, align 4
  %56 = call i32 @mxge_send_cmd(%struct.TYPE_8__* %54, i32 %55, %struct.TYPE_9__* %3)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32, i8*, ...) @device_printf(i32 %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %175

64:                                               ; preds = %52
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %66 = load i32, i32* @MXGEFW_CMD_GET_RX_RING_SIZE, align 4
  %67 = call i32 @mxge_send_cmd(%struct.TYPE_8__* %65, i32 %66, %struct.TYPE_9__* %3)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i32, i8*, ...) @device_printf(i32 %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %175

75:                                               ; preds = %64
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = udiv i64 %78, 4
  %80 = mul i64 2, %79
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 4
  %85 = trunc i64 %84 to i32
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  store i32 %85, i32* %86, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %88 = load i32, i32* @MXGEFW_CMD_SET_INTRQ_SIZE, align 4
  %89 = call i32 @mxge_send_cmd(%struct.TYPE_8__* %87, i32 %88, %struct.TYPE_9__* %3)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %75
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i32, i8*, ...) @device_printf(i32 %95, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %175

97:                                               ; preds = %75
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %99 = load i32, i32* @MXGEFW_CMD_GET_MAX_RSS_QUEUES, align 4
  %100 = call i32 @mxge_send_cmd(%struct.TYPE_8__* %98, i32 %99, %struct.TYPE_9__* %3)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i32, i8*, ...) @device_printf(i32 %106, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %175

108:                                              ; preds = %97
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %108
  %119 = load i32, i32* %5, align 4
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %118, %108
  %123 = load i32, i32* @mxge_max_slices, align 4
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %136

125:                                              ; preds = %122
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @mp_ncpus, align 4
  %130 = icmp sgt i32 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load i32, i32* @mp_ncpus, align 4
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  br label %135

135:                                              ; preds = %131, %125
  br label %147

136:                                              ; preds = %122
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @mxge_max_slices, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load i32, i32* @mxge_max_slices, align 4
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  br label %146

146:                                              ; preds = %142, %136
  br label %147

147:                                              ; preds = %146, %135
  br label %148

148:                                              ; preds = %158, %147
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sub nsw i32 %154, 1
  %156 = and i32 %151, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %148
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %160, align 8
  br label %148

163:                                              ; preds = %148
  %164 = load i64, i64* @mxge_verbose, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %163
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 (i32, i8*, ...) @device_printf(i32 %169, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %166, %163
  br label %181

175:                                              ; preds = %103, %92, %70, %59
  %176 = load i8*, i8** %4, align 8
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  store i8* %176, i8** %178, align 8
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %180 = call i32 @mxge_load_firmware(%struct.TYPE_8__* %179, i32 0)
  br label %181

181:                                              ; preds = %175, %174, %47, %26, %18
  ret void
}

declare dso_local i32 @pci_msix_count(i32) #1

declare dso_local i32 @mxge_load_firmware(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @mxge_send_cmd(%struct.TYPE_8__*, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
