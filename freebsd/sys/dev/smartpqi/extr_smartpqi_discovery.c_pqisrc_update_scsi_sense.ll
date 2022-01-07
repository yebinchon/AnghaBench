; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_discovery.c_pqisrc_update_scsi_sense.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_discovery.c_pqisrc_update_scsi_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sense_header_scsi = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqisrc_update_scsi_sense(i32* %0, i32 %1, %struct.sense_header_scsi* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sense_header_scsi*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sense_header_scsi* %2, %struct.sense_header_scsi** %7, align 8
  %8 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %3
  store i32 0, i32* %4, align 4
  br label %121

15:                                               ; preds = %11
  %16 = load %struct.sense_header_scsi*, %struct.sense_header_scsi** %7, align 8
  %17 = call i32 @memset(%struct.sense_header_scsi* %16, i32 0, i32 20)
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 127
  %22 = load %struct.sense_header_scsi*, %struct.sense_header_scsi** %7, align 8
  %23 = getelementptr inbounds %struct.sense_header_scsi, %struct.sense_header_scsi* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.sense_header_scsi*, %struct.sense_header_scsi** %7, align 8
  %25 = call i32 @pqisrc_scsi_sense_valid(%struct.sense_header_scsi* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %121

28:                                               ; preds = %15
  %29 = load %struct.sense_header_scsi*, %struct.sense_header_scsi** %7, align 8
  %30 = getelementptr inbounds %struct.sense_header_scsi, %struct.sense_header_scsi* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sge i32 %31, 114
  br i1 %32, label %33, label %71

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 15
  %41 = load %struct.sense_header_scsi*, %struct.sense_header_scsi** %7, align 8
  %42 = getelementptr inbounds %struct.sense_header_scsi, %struct.sense_header_scsi* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %36, %33
  %44 = load i32, i32* %6, align 4
  %45 = icmp sgt i32 %44, 2
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sense_header_scsi*, %struct.sense_header_scsi** %7, align 8
  %51 = getelementptr inbounds %struct.sense_header_scsi, %struct.sense_header_scsi* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %46, %43
  %53 = load i32, i32* %6, align 4
  %54 = icmp sgt i32 %53, 3
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sense_header_scsi*, %struct.sense_header_scsi** %7, align 8
  %60 = getelementptr inbounds %struct.sense_header_scsi, %struct.sense_header_scsi* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %52
  %62 = load i32, i32* %6, align 4
  %63 = icmp sgt i32 %62, 7
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32*, i32** %5, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 7
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sense_header_scsi*, %struct.sense_header_scsi** %7, align 8
  %69 = getelementptr inbounds %struct.sense_header_scsi, %struct.sense_header_scsi* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %64, %61
  br label %119

71:                                               ; preds = %28
  %72 = load i32, i32* %6, align 4
  %73 = icmp sgt i32 %72, 2
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 15
  %79 = load %struct.sense_header_scsi*, %struct.sense_header_scsi** %7, align 8
  %80 = getelementptr inbounds %struct.sense_header_scsi, %struct.sense_header_scsi* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %74, %71
  %82 = load i32, i32* %6, align 4
  %83 = icmp sgt i32 %82, 7
  br i1 %83, label %84, label %118

84:                                               ; preds = %81
  %85 = load i32, i32* %6, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 7
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 8
  %90 = icmp slt i32 %85, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %6, align 4
  br label %98

93:                                               ; preds = %84
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 7
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 8
  br label %98

98:                                               ; preds = %93, %91
  %99 = phi i32 [ %92, %91 ], [ %97, %93 ]
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp sgt i32 %100, 12
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load i32*, i32** %5, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 12
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.sense_header_scsi*, %struct.sense_header_scsi** %7, align 8
  %107 = getelementptr inbounds %struct.sense_header_scsi, %struct.sense_header_scsi* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %102, %98
  %109 = load i32, i32* %6, align 4
  %110 = icmp sgt i32 %109, 13
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load i32*, i32** %5, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 13
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.sense_header_scsi*, %struct.sense_header_scsi** %7, align 8
  %116 = getelementptr inbounds %struct.sense_header_scsi, %struct.sense_header_scsi* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %111, %108
  br label %118

118:                                              ; preds = %117, %81
  br label %119

119:                                              ; preds = %118, %70
  %120 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %121

121:                                              ; preds = %119, %27, %14
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @memset(%struct.sense_header_scsi*, i32, i32) #1

declare dso_local i32 @pqisrc_scsi_sense_valid(%struct.sense_header_scsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
