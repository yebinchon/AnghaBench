; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_mapping.c__mapping_clear_removed_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_mapping.c__mapping_clear_removed_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i64, i32*, i32, %struct.enc_mapping_table*, i64*, i64, %struct.map_removal_table*, i64, %struct.TYPE_4__ }
%struct.enc_mapping_table = type { i64, i32 }
%struct.map_removal_table = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@MPS_DPM_BAD_IDX = common dso_local global i64 0, align 8
@MPI2_IOCPAGE8_FLAGS_MASK_MAPPING_MODE = common dso_local global i32 0, align 4
@MPI2_IOCPAGE8_FLAGS_ENCLOSURE_SLOT_MAPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mps_softc*)* @_mapping_clear_removed_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_mapping_clear_removed_entries(%struct.mps_softc* %0) #0 {
  %2 = alloca %struct.mps_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.map_removal_table*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.enc_mapping_table*, align 8
  %11 = alloca %struct.enc_mapping_table*, align 8
  %12 = alloca %struct.enc_mapping_table*, align 8
  %13 = alloca i32, align 4
  store %struct.mps_softc* %0, %struct.mps_softc** %2, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %15 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %14, i32 0, i32 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @le16toh(i32 %17)
  store i32 %18, i32* %13, align 4
  %19 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %20 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %87

23:                                               ; preds = %1
  %24 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %25 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %24, i32 0, i32 6
  %26 = load %struct.map_removal_table*, %struct.map_removal_table** %25, align 8
  store %struct.map_removal_table* %26, %struct.map_removal_table** %4, align 8
  store i64 0, i64* %3, align 8
  br label %27

27:                                               ; preds = %81, %23
  %28 = load i64, i64* %3, align 8
  %29 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %30 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %86

33:                                               ; preds = %27
  %34 = load %struct.map_removal_table*, %struct.map_removal_table** %4, align 8
  %35 = getelementptr inbounds %struct.map_removal_table, %struct.map_removal_table* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MPS_DPM_BAD_IDX, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %80

39:                                               ; preds = %33
  %40 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %41 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  %45 = bitcast i32* %44 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %5, align 8
  %46 = load %struct.map_removal_table*, %struct.map_removal_table** %4, align 8
  %47 = getelementptr inbounds %struct.map_removal_table, %struct.map_removal_table* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %48
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %5, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %64 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.map_removal_table*, %struct.map_removal_table** %4, align 8
  %67 = getelementptr inbounds %struct.map_removal_table, %struct.map_removal_table* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 1, i32* %69, align 4
  %70 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %71 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %70, i32 0, i32 4
  %72 = load i64*, i64** %71, align 8
  %73 = load %struct.map_removal_table*, %struct.map_removal_table** %4, align 8
  %74 = getelementptr inbounds %struct.map_removal_table, %struct.map_removal_table* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i64, i64* %72, i64 %75
  store i64 0, i64* %76, align 8
  %77 = load i64, i64* @MPS_DPM_BAD_IDX, align 8
  %78 = load %struct.map_removal_table*, %struct.map_removal_table** %4, align 8
  %79 = getelementptr inbounds %struct.map_removal_table, %struct.map_removal_table* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %39, %33
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %3, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %3, align 8
  %84 = load %struct.map_removal_table*, %struct.map_removal_table** %4, align 8
  %85 = getelementptr inbounds %struct.map_removal_table, %struct.map_removal_table* %84, i32 1
  store %struct.map_removal_table* %85, %struct.map_removal_table** %4, align 8
  br label %27

86:                                               ; preds = %27
  br label %87

87:                                               ; preds = %86, %1
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @MPI2_IOCPAGE8_FLAGS_MASK_MAPPING_MODE, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @MPI2_IOCPAGE8_FLAGS_ENCLOSURE_SLOT_MAPPING, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %188

93:                                               ; preds = %87
  %94 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %95 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %186, %93
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  br i1 %100, label %101, label %187

101:                                              ; preds = %97
  store i32 1, i32* %6, align 4
  %102 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %103 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %102, i32 0, i32 3
  %104 = load %struct.enc_mapping_table*, %struct.enc_mapping_table** %103, align 8
  store %struct.enc_mapping_table* %104, %struct.enc_mapping_table** %10, align 8
  store i32 0, i32* %9, align 4
  br label %105

105:                                              ; preds = %181, %101
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %186

109:                                              ; preds = %105
  %110 = load %struct.enc_mapping_table*, %struct.enc_mapping_table** %10, align 8
  %111 = getelementptr inbounds %struct.enc_mapping_table, %struct.enc_mapping_table* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %180, label %114

114:                                              ; preds = %109
  %115 = load %struct.enc_mapping_table*, %struct.enc_mapping_table** %10, align 8
  %116 = getelementptr inbounds %struct.enc_mapping_table, %struct.enc_mapping_table* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %180

119:                                              ; preds = %114
  store i32 0, i32* %6, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %7, align 4
  %122 = sub nsw i32 %121, 1
  %123 = icmp ne i32 %120, %122
  br i1 %123, label %124, label %169

124:                                              ; preds = %119
  %125 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %126 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %125, i32 0, i32 3
  %127 = load %struct.enc_mapping_table*, %struct.enc_mapping_table** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.enc_mapping_table, %struct.enc_mapping_table* %127, i64 %130
  store %struct.enc_mapping_table* %131, %struct.enc_mapping_table** %11, align 8
  %132 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %133 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %132, i32 0, i32 3
  %134 = load %struct.enc_mapping_table*, %struct.enc_mapping_table** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.enc_mapping_table, %struct.enc_mapping_table* %134, i64 %136
  store %struct.enc_mapping_table* %137, %struct.enc_mapping_table** %12, align 8
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %152, %124
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %7, align 4
  %142 = sub nsw i32 %141, 1
  %143 = icmp slt i32 %140, %142
  br i1 %143, label %144, label %159

144:                                              ; preds = %139
  %145 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %146 = load %struct.enc_mapping_table*, %struct.enc_mapping_table** %12, align 8
  %147 = call i32 @_mapping_set_mid_to_eid(%struct.mps_softc* %145, %struct.enc_mapping_table* %146)
  %148 = load %struct.enc_mapping_table*, %struct.enc_mapping_table** %12, align 8
  %149 = load %struct.enc_mapping_table*, %struct.enc_mapping_table** %11, align 8
  %150 = bitcast %struct.enc_mapping_table* %148 to i8*
  %151 = bitcast %struct.enc_mapping_table* %149 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %150, i8* align 8 %151, i64 16, i1 false)
  br label %152

152:                                              ; preds = %144
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %8, align 4
  %155 = load %struct.enc_mapping_table*, %struct.enc_mapping_table** %11, align 8
  %156 = getelementptr inbounds %struct.enc_mapping_table, %struct.enc_mapping_table* %155, i32 1
  store %struct.enc_mapping_table* %156, %struct.enc_mapping_table** %11, align 8
  %157 = load %struct.enc_mapping_table*, %struct.enc_mapping_table** %12, align 8
  %158 = getelementptr inbounds %struct.enc_mapping_table, %struct.enc_mapping_table* %157, i32 1
  store %struct.enc_mapping_table* %158, %struct.enc_mapping_table** %12, align 8
  br label %139

159:                                              ; preds = %139
  %160 = load %struct.enc_mapping_table*, %struct.enc_mapping_table** %12, align 8
  %161 = call i32 @_mapping_clear_enc_entry(%struct.enc_mapping_table* %160)
  %162 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %163 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %163, align 8
  %166 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %167 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  store i32 %168, i32* %7, align 4
  br label %179

169:                                              ; preds = %119
  %170 = load %struct.enc_mapping_table*, %struct.enc_mapping_table** %10, align 8
  %171 = call i32 @_mapping_clear_enc_entry(%struct.enc_mapping_table* %170)
  %172 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %173 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %173, align 8
  %176 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %177 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  store i32 %178, i32* %7, align 4
  br label %179

179:                                              ; preds = %169, %159
  br label %180

180:                                              ; preds = %179, %114, %109
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %9, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %9, align 4
  %184 = load %struct.enc_mapping_table*, %struct.enc_mapping_table** %10, align 8
  %185 = getelementptr inbounds %struct.enc_mapping_table, %struct.enc_mapping_table* %184, i32 1
  store %struct.enc_mapping_table* %185, %struct.enc_mapping_table** %10, align 8
  br label %105

186:                                              ; preds = %105
  br label %97

187:                                              ; preds = %97
  br label %188

188:                                              ; preds = %187, %87
  ret void
}

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @_mapping_set_mid_to_eid(%struct.mps_softc*, %struct.enc_mapping_table*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @_mapping_clear_enc_entry(%struct.enc_mapping_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
