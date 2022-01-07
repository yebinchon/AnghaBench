; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_build_cdb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_build_cdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_rw_6 = type { i32, i64, i32, i32 }
%struct.scsi_rw_10 = type { i64, i32, i64, i32, i64, i32 }
%struct.scsi_rw_12 = type { i64, i32, i64, i32, i64, i32 }
%struct.scsi_rw_16 = type { i64, i32, i64, i32, i64, i32 }

@READ_6 = common dso_local global i32 0, align 4
@WRITE_6 = common dso_local global i32 0, align 4
@READ_10 = common dso_local global i32 0, align 4
@WRITE_10 = common dso_local global i32 0, align 4
@READ_12 = common dso_local global i32 0, align 4
@WRITE_12 = common dso_local global i32 0, align 4
@READ_16 = common dso_local global i32 0, align 4
@WRITE_16 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mfi_build_cdb(i32 %0, i64 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.scsi_rw_6*, align 8
  %13 = alloca %struct.scsi_rw_10*, align 8
  %14 = alloca %struct.scsi_rw_12*, align 8
  %15 = alloca %struct.scsi_rw_16*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64* %4, i64** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, 2097151
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, 255
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %20
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %25
  %29 = load i64*, i64** %10, align 8
  %30 = bitcast i64* %29 to %struct.scsi_rw_6*
  store %struct.scsi_rw_6* %30, %struct.scsi_rw_6** %12, align 8
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @READ_6, align 4
  br label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @WRITE_6, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = load %struct.scsi_rw_6*, %struct.scsi_rw_6** %12, align 8
  %40 = getelementptr inbounds %struct.scsi_rw_6, %struct.scsi_rw_6* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.scsi_rw_6*, %struct.scsi_rw_6** %12, align 8
  %43 = getelementptr inbounds %struct.scsi_rw_6, %struct.scsi_rw_6* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @scsi_ulto3b(i32 %41, i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, 255
  %48 = load %struct.scsi_rw_6*, %struct.scsi_rw_6** %12, align 8
  %49 = getelementptr inbounds %struct.scsi_rw_6, %struct.scsi_rw_6* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.scsi_rw_6*, %struct.scsi_rw_6** %12, align 8
  %51 = getelementptr inbounds %struct.scsi_rw_6, %struct.scsi_rw_6* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  store i32 24, i32* %11, align 4
  br label %161

52:                                               ; preds = %25, %20, %5
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, 65535
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %91

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %91

61:                                               ; preds = %57
  %62 = load i64*, i64** %10, align 8
  %63 = bitcast i64* %62 to %struct.scsi_rw_10*
  store %struct.scsi_rw_10* %63, %struct.scsi_rw_10** %13, align 8
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @READ_10, align 4
  br label %70

68:                                               ; preds = %61
  %69 = load i32, i32* @WRITE_10, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %13, align 8
  %73 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %13, align 8
  %76 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %75, i32 0, i32 4
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %13, align 8
  %79 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @scsi_ulto4b(i32 %77, i32 %80)
  %82 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %13, align 8
  %83 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %82, i32 0, i32 2
  store i64 0, i64* %83, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %13, align 8
  %86 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @scsi_ulto2b(i32 %84, i32 %87)
  %89 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %13, align 8
  %90 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  store i32 48, i32* %11, align 4
  br label %160

91:                                               ; preds = %57, %52
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %129

95:                                               ; preds = %91
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %129

99:                                               ; preds = %95
  %100 = load i64*, i64** %10, align 8
  %101 = bitcast i64* %100 to %struct.scsi_rw_12*
  store %struct.scsi_rw_12* %101, %struct.scsi_rw_12** %14, align 8
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* @READ_12, align 4
  br label %108

106:                                              ; preds = %99
  %107 = load i32, i32* @WRITE_12, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  %110 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %14, align 8
  %111 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 8
  %112 = load i64, i64* %7, align 8
  %113 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %14, align 8
  %114 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %113, i32 0, i32 4
  store i64 %112, i64* %114, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %14, align 8
  %117 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @scsi_ulto4b(i32 %115, i32 %118)
  %120 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %14, align 8
  %121 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %120, i32 0, i32 2
  store i64 0, i64* %121, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %14, align 8
  %124 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @scsi_ulto4b(i32 %122, i32 %125)
  %127 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %14, align 8
  %128 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %127, i32 0, i32 0
  store i64 0, i64* %128, align 8
  store i32 48, i32* %11, align 4
  br label %159

129:                                              ; preds = %95, %91
  %130 = load i64*, i64** %10, align 8
  %131 = bitcast i64* %130 to %struct.scsi_rw_16*
  store %struct.scsi_rw_16* %131, %struct.scsi_rw_16** %15, align 8
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i32, i32* @READ_16, align 4
  br label %138

136:                                              ; preds = %129
  %137 = load i32, i32* @WRITE_16, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  %140 = load %struct.scsi_rw_16*, %struct.scsi_rw_16** %15, align 8
  %141 = getelementptr inbounds %struct.scsi_rw_16, %struct.scsi_rw_16* %140, i32 0, i32 5
  store i32 %139, i32* %141, align 8
  %142 = load i64, i64* %7, align 8
  %143 = load %struct.scsi_rw_16*, %struct.scsi_rw_16** %15, align 8
  %144 = getelementptr inbounds %struct.scsi_rw_16, %struct.scsi_rw_16* %143, i32 0, i32 4
  store i64 %142, i64* %144, align 8
  %145 = load i32, i32* %8, align 4
  %146 = load %struct.scsi_rw_16*, %struct.scsi_rw_16** %15, align 8
  %147 = getelementptr inbounds %struct.scsi_rw_16, %struct.scsi_rw_16* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @scsi_u64to8b(i32 %145, i32 %148)
  %150 = load %struct.scsi_rw_16*, %struct.scsi_rw_16** %15, align 8
  %151 = getelementptr inbounds %struct.scsi_rw_16, %struct.scsi_rw_16* %150, i32 0, i32 2
  store i64 0, i64* %151, align 8
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.scsi_rw_16*, %struct.scsi_rw_16** %15, align 8
  %154 = getelementptr inbounds %struct.scsi_rw_16, %struct.scsi_rw_16* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @scsi_ulto4b(i32 %152, i32 %155)
  %157 = load %struct.scsi_rw_16*, %struct.scsi_rw_16** %15, align 8
  %158 = getelementptr inbounds %struct.scsi_rw_16, %struct.scsi_rw_16* %157, i32 0, i32 0
  store i64 0, i64* %158, align 8
  store i32 48, i32* %11, align 4
  br label %159

159:                                              ; preds = %138, %108
  br label %160

160:                                              ; preds = %159, %70
  br label %161

161:                                              ; preds = %160, %37
  %162 = load i32, i32* %11, align 4
  ret i32 %162
}

declare dso_local i32 @scsi_ulto3b(i32, i32) #1

declare dso_local i32 @scsi_ulto4b(i32, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @scsi_u64to8b(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
