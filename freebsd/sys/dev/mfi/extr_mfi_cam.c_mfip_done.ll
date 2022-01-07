; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_cam.c_mfip_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_cam.c_mfip_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_command = type { %struct.TYPE_7__*, %struct.TYPE_5__*, %union.ccb* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_5__ = type { %struct.mfi_pass_frame }
%struct.mfi_pass_frame = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i64 }
%union.ccb = type { %struct.ccb_scsiio }
%struct.ccb_scsiio = type { i32*, i32, i32, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32* }
%struct.ccb_hdr = type { i32, i32, %struct.mfip_softc* }
%struct.mfip_softc = type { i32 }

@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i32 0, align 4
@mfi_allow_disks = common dso_local global i32 0, align 4
@T_DIRECT = common dso_local global i32 0, align 4
@T_PROCESSOR = common dso_local global i32 0, align 4
@T_NODEVICE = common dso_local global i32 0, align 4
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@CAM_SEL_TIMEOUT = common dso_local global i32 0, align 4
@CAM_REQ_CMP_ERR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mfi_command*)* @mfip_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mfip_done(%struct.mfi_command* %0) #0 {
  %2 = alloca %struct.mfi_command*, align 8
  %3 = alloca %union.ccb*, align 8
  %4 = alloca %struct.ccb_hdr*, align 8
  %5 = alloca %struct.ccb_scsiio*, align 8
  %6 = alloca %struct.mfip_softc*, align 8
  %7 = alloca %struct.mfi_pass_frame*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mfi_command* %0, %struct.mfi_command** %2, align 8
  %11 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %12 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %11, i32 0, i32 2
  %13 = load %union.ccb*, %union.ccb** %12, align 8
  store %union.ccb* %13, %union.ccb** %3, align 8
  %14 = load %union.ccb*, %union.ccb** %3, align 8
  %15 = bitcast %union.ccb* %14 to %struct.ccb_hdr*
  store %struct.ccb_hdr* %15, %struct.ccb_hdr** %4, align 8
  %16 = load %union.ccb*, %union.ccb** %3, align 8
  %17 = bitcast %union.ccb* %16 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %17, %struct.ccb_scsiio** %5, align 8
  %18 = load %struct.ccb_hdr*, %struct.ccb_hdr** %4, align 8
  %19 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %18, i32 0, i32 2
  %20 = load %struct.mfip_softc*, %struct.mfip_softc** %19, align 8
  store %struct.mfip_softc* %20, %struct.mfip_softc** %6, align 8
  %21 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %22 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store %struct.mfi_pass_frame* %24, %struct.mfi_pass_frame** %7, align 8
  %25 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %7, align 8
  %26 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %163 [
    i32 130, label %29
    i32 129, label %95
    i32 131, label %148
    i32 128, label %152
  ]

29:                                               ; preds = %1
  %30 = load i32, i32* @CAM_REQ_CMP, align 4
  %31 = load %struct.ccb_hdr*, %struct.ccb_hdr** %4, align 8
  %32 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %7, align 8
  %34 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %38 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ccb_hdr*, %struct.ccb_hdr** %4, align 8
  %40 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CAM_CDB_POINTER, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %29
  %46 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %47 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  br label %59

52:                                               ; preds = %29
  %53 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %54 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %52, %45
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @INQUIRY, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %94

63:                                               ; preds = %59
  %64 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %65 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 31
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* @mfi_allow_disks, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @T_DIRECT, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %72, %63
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @T_PROCESSOR, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %76, %72
  %81 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %82 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 224
  %87 = load i32, i32* @T_NODEVICE, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %90 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 %88, i32* %92, align 4
  br label %93

93:                                               ; preds = %80, %76
  br label %94

94:                                               ; preds = %93, %59
  br label %174

95:                                               ; preds = %1
  %96 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %97 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.ccb_hdr*, %struct.ccb_hdr** %4, align 8
  %100 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %7, align 8
  %102 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %106 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %7, align 8
  %108 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %112 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = icmp slt i64 %110, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %95
  %116 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %117 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %7, align 8
  %120 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %118, %122
  %124 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %125 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %124, i32 0, i32 3
  store i64 %123, i64* %125, align 8
  br label %129

126:                                              ; preds = %95
  %127 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %128 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %127, i32 0, i32 3
  store i64 0, i64* %128, align 8
  br label %129

129:                                              ; preds = %126, %115
  %130 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %7, align 8
  %131 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @min(i64 %133, i32 4)
  store i32 %134, i32* %10, align 4
  %135 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %136 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %135, i32 0, i32 2
  %137 = call i32 @bzero(i32* %136, i32 4)
  %138 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %139 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %138, i32 0, i32 0
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %145 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %144, i32 0, i32 2
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @bcopy(i32* %143, i32* %145, i32 %146)
  br label %174

148:                                              ; preds = %1
  %149 = load i32, i32* @CAM_SEL_TIMEOUT, align 4
  %150 = load %struct.ccb_hdr*, %struct.ccb_hdr** %4, align 8
  %151 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  br label %174

152:                                              ; preds = %1
  %153 = load i8*, i8** @CAM_REQ_CMP_ERR, align 8
  %154 = ptrtoint i8* %153 to i32
  %155 = load %struct.ccb_hdr*, %struct.ccb_hdr** %4, align 8
  %156 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %7, align 8
  %158 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %162 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 8
  br label %174

163:                                              ; preds = %1
  %164 = load i8*, i8** @CAM_REQ_CMP_ERR, align 8
  %165 = ptrtoint i8* %164 to i32
  %166 = load %struct.ccb_hdr*, %struct.ccb_hdr** %4, align 8
  %167 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  %168 = load %struct.mfi_pass_frame*, %struct.mfi_pass_frame** %7, align 8
  %169 = getelementptr inbounds %struct.mfi_pass_frame, %struct.mfi_pass_frame* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %173 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 8
  br label %174

174:                                              ; preds = %163, %152, %148, %129, %94
  %175 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %176 = call i32 @mfi_release_command(%struct.mfi_command* %175)
  %177 = load %union.ccb*, %union.ccb** %3, align 8
  %178 = call i32 @xpt_done(%union.ccb* %177)
  ret void
}

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @mfi_release_command(%struct.mfi_command*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
