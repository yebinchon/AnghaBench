; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_notify_rescan_logical.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_notify_rescan_logical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { i32, i32*, %struct.ciss_ldrive**, %struct.TYPE_4__* }
%struct.ciss_ldrive = type { i64, i64, i32*, %struct.TYPE_6__, %struct.ciss_lun_report*, %struct.ciss_lun_report* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ciss_lun_report = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_4__ = type { i32 }

@CISS_OPCODE_REPORT_LOGICAL_LUNS = common dso_local global i32 0, align 4
@CISS_LD_ONLINE = common dso_local global i64 0, align 8
@CISS_MALLOC_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ciss_softc*)* @ciss_notify_rescan_logical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciss_notify_rescan_logical(%struct.ciss_softc* %0) #0 {
  %2 = alloca %struct.ciss_softc*, align 8
  %3 = alloca %struct.ciss_lun_report*, align 8
  %4 = alloca %struct.ciss_ldrive*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ciss_softc* %0, %struct.ciss_softc** %2, align 8
  %10 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %11 = load i32, i32* @CISS_OPCODE_REPORT_LOGICAL_LUNS, align 4
  %12 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %13 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %12, i32 0, i32 3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ciss_lun_report* @ciss_report_luns(%struct.ciss_softc* %10, i32 %11, i32 %16)
  store %struct.ciss_lun_report* %17, %struct.ciss_lun_report** %3, align 8
  %18 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %3, align 8
  %19 = icmp eq %struct.ciss_lun_report* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %186

21:                                               ; preds = %1
  %22 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %3, align 8
  %23 = getelementptr inbounds %struct.ciss_lun_report, %struct.ciss_lun_report* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ntohl(i32 %24)
  %26 = sext i32 %25 to i64
  %27 = udiv i64 %26, 4
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %104, %21
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %32 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %107

35:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %100, %35
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %39 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %37, %42
  br i1 %43, label %44, label %103

44:                                               ; preds = %36
  %45 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %46 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %45, i32 0, i32 2
  %47 = load %struct.ciss_ldrive**, %struct.ciss_ldrive*** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ciss_ldrive*, %struct.ciss_ldrive** %47, i64 %49
  %51 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %51, i64 %53
  store %struct.ciss_ldrive* %54, %struct.ciss_ldrive** %4, align 8
  %55 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %56 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %44
  br label %100

60:                                               ; preds = %44
  %61 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %62 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CISS_LD_ONLINE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %99

66:                                               ; preds = %60
  %67 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @ciss_cam_rescan_target(%struct.ciss_softc* %67, i32 %68, i32 %69)
  %71 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %72 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %74 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %73, i32 0, i32 5
  %75 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %74, align 8
  %76 = icmp ne %struct.ciss_lun_report* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %66
  %78 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %79 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %78, i32 0, i32 5
  %80 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %79, align 8
  %81 = load i32, i32* @CISS_MALLOC_CLASS, align 4
  %82 = call i32 @free(%struct.ciss_lun_report* %80, i32 %81)
  br label %83

83:                                               ; preds = %77, %66
  %84 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %85 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %84, i32 0, i32 4
  %86 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %85, align 8
  %87 = icmp ne %struct.ciss_lun_report* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %90 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %89, i32 0, i32 4
  %91 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %90, align 8
  %92 = load i32, i32* @CISS_MALLOC_CLASS, align 4
  %93 = call i32 @free(%struct.ciss_lun_report* %91, i32 %92)
  br label %94

94:                                               ; preds = %88, %83
  %95 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %96 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %95, i32 0, i32 5
  store %struct.ciss_lun_report* null, %struct.ciss_lun_report** %96, align 8
  %97 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %98 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %97, i32 0, i32 4
  store %struct.ciss_lun_report* null, %struct.ciss_lun_report** %98, align 8
  br label %99

99:                                               ; preds = %94, %60
  br label %100

100:                                              ; preds = %99, %59
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %36

103:                                              ; preds = %36
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %29

107:                                              ; preds = %29
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %179, %107
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %182

112:                                              ; preds = %108
  %113 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %3, align 8
  %114 = getelementptr inbounds %struct.ciss_lun_report, %struct.ciss_lun_report* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @CISS_LUN_TO_BUS(i32 %121)
  store i32 %122, i32* %8, align 4
  %123 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %3, align 8
  %124 = getelementptr inbounds %struct.ciss_lun_report, %struct.ciss_lun_report* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @CISS_LUN_TO_TARGET(i32 %131)
  store i32 %132, i32* %9, align 4
  %133 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %134 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %133, i32 0, i32 2
  %135 = load %struct.ciss_ldrive**, %struct.ciss_ldrive*** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.ciss_ldrive*, %struct.ciss_ldrive** %135, i64 %137
  %139 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %139, i64 %141
  store %struct.ciss_ldrive* %142, %struct.ciss_ldrive** %4, align 8
  %143 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %144 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %112
  br label %179

148:                                              ; preds = %112
  %149 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %150 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %149, i32 0, i32 0
  store i64 0, i64* %150, align 8
  %151 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %152 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %151, i32 0, i32 3
  %153 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %3, align 8
  %154 = getelementptr inbounds %struct.ciss_lun_report, %struct.ciss_lun_report* %153, i32 0, i32 0
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 %157
  %159 = bitcast %struct.TYPE_6__* %152 to i8*
  %160 = bitcast %struct.TYPE_6__* %158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %159, i8* align 4 %160, i64 4, i1 false)
  %161 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %162 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %168 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %167, i32 0, i32 2
  store i32* %166, i32** %168, align 8
  %169 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %170 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %171 = call i64 @ciss_identify_logical(%struct.ciss_softc* %169, %struct.ciss_ldrive* %170)
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %148
  %174 = load %struct.ciss_softc*, %struct.ciss_softc** %2, align 8
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @ciss_cam_rescan_target(%struct.ciss_softc* %174, i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %173, %148
  br label %179

179:                                              ; preds = %178, %147
  %180 = load i32, i32* %5, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %5, align 4
  br label %108

182:                                              ; preds = %108
  %183 = load %struct.ciss_lun_report*, %struct.ciss_lun_report** %3, align 8
  %184 = load i32, i32* @CISS_MALLOC_CLASS, align 4
  %185 = call i32 @free(%struct.ciss_lun_report* %183, i32 %184)
  br label %186

186:                                              ; preds = %182, %20
  ret void
}

declare dso_local %struct.ciss_lun_report* @ciss_report_luns(%struct.ciss_softc*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ciss_cam_rescan_target(%struct.ciss_softc*, i32, i32) #1

declare dso_local i32 @free(%struct.ciss_lun_report*, i32) #1

declare dso_local i32 @CISS_LUN_TO_BUS(i32) #1

declare dso_local i32 @CISS_LUN_TO_TARGET(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ciss_identify_logical(%struct.ciss_softc*, %struct.ciss_ldrive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
