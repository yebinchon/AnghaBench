; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_x86_mem.c_x86_mrsetvariable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_x86_mem.c_x86_mrsetvariable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_range_softc = type { i32, i32, %struct.mem_range_desc* }
%struct.mem_range_desc = type { i32, i64, i64, i32 }

@MR686_FIXMTRR = common dso_local global i32 0, align 4
@MTRR_N64K = common dso_local global i32 0, align 4
@MTRR_N16K = common dso_local global i32 0, align 4
@MTRR_N4K = common dso_local global i32 0, align 4
@MDF_ACTIVE = common dso_local global i32 0, align 4
@MDF_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MDF_FORCE = common dso_local global i32 0, align 4
@MDF_ATTRMASK = common dso_local global i32 0, align 4
@MDF_UNKNOWN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_range_softc*, %struct.mem_range_desc*, i32*)* @x86_mrsetvariable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x86_mrsetvariable(%struct.mem_range_softc* %0, %struct.mem_range_desc* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem_range_softc*, align 8
  %6 = alloca %struct.mem_range_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mem_range_desc*, align 8
  %9 = alloca %struct.mem_range_desc*, align 8
  %10 = alloca i32, align 4
  store %struct.mem_range_softc* %0, %struct.mem_range_softc** %5, align 8
  store %struct.mem_range_desc* %1, %struct.mem_range_desc** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.mem_range_softc*, %struct.mem_range_softc** %5, align 8
  %12 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MR686_FIXMTRR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i32, i32* @MTRR_N64K, align 4
  %19 = load i32, i32* @MTRR_N16K, align 4
  %20 = add nsw i32 %18, %19
  %21 = load i32, i32* @MTRR_N4K, align 4
  %22 = add nsw i32 %20, %21
  br label %24

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %17
  %25 = phi i32 [ %22, %17 ], [ 0, %23 ]
  store i32 %25, i32* %10, align 4
  %26 = load %struct.mem_range_softc*, %struct.mem_range_softc** %5, align 8
  %27 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %26, i32 0, i32 2
  %28 = load %struct.mem_range_desc*, %struct.mem_range_desc** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %28, i64 %30
  store %struct.mem_range_desc* %31, %struct.mem_range_desc** %8, align 8
  store %struct.mem_range_desc* null, %struct.mem_range_desc** %9, align 8
  br label %32

32:                                               ; preds = %114, %24
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.mem_range_softc*, %struct.mem_range_softc** %5, align 8
  %35 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %119

38:                                               ; preds = %32
  %39 = load %struct.mem_range_desc*, %struct.mem_range_desc** %8, align 8
  %40 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MDF_ACTIVE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %107

45:                                               ; preds = %38
  %46 = load %struct.mem_range_desc*, %struct.mem_range_desc** %8, align 8
  %47 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.mem_range_desc*, %struct.mem_range_desc** %6, align 8
  %50 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %89

53:                                               ; preds = %45
  %54 = load %struct.mem_range_desc*, %struct.mem_range_desc** %8, align 8
  %55 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.mem_range_desc*, %struct.mem_range_desc** %6, align 8
  %58 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %89

61:                                               ; preds = %53
  %62 = load %struct.mem_range_desc*, %struct.mem_range_desc** %8, align 8
  %63 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @MDF_BUSY, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* @EBUSY, align 4
  store i32 %69, i32* %4, align 4
  br label %149

70:                                               ; preds = %61
  %71 = load %struct.mem_range_desc*, %struct.mem_range_desc** %6, align 8
  %72 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @MDF_FORCE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %70
  %78 = load %struct.mem_range_desc*, %struct.mem_range_desc** %8, align 8
  %79 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @MDF_ATTRMASK, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @MDF_UNKNOWN, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* @EACCES, align 4
  store i32 %86, i32* %4, align 4
  br label %149

87:                                               ; preds = %77, %70
  %88 = load %struct.mem_range_desc*, %struct.mem_range_desc** %8, align 8
  store %struct.mem_range_desc* %88, %struct.mem_range_desc** %9, align 8
  br label %119

89:                                               ; preds = %53, %45
  %90 = load %struct.mem_range_desc*, %struct.mem_range_desc** %8, align 8
  %91 = load %struct.mem_range_desc*, %struct.mem_range_desc** %6, align 8
  %92 = call i64 @mroverlap(%struct.mem_range_desc* %90, %struct.mem_range_desc* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %89
  %95 = load %struct.mem_range_desc*, %struct.mem_range_desc** %8, align 8
  %96 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.mem_range_desc*, %struct.mem_range_desc** %6, align 8
  %99 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @x86_mtrrconflict(i32 %97, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* @EINVAL, align 4
  store i32 %104, i32* %4, align 4
  br label %149

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %105, %89
  br label %113

107:                                              ; preds = %38
  %108 = load %struct.mem_range_desc*, %struct.mem_range_desc** %9, align 8
  %109 = icmp eq %struct.mem_range_desc* %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load %struct.mem_range_desc*, %struct.mem_range_desc** %8, align 8
  store %struct.mem_range_desc* %111, %struct.mem_range_desc** %9, align 8
  br label %112

112:                                              ; preds = %110, %107
  br label %113

113:                                              ; preds = %112, %106
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  %117 = load %struct.mem_range_desc*, %struct.mem_range_desc** %8, align 8
  %118 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %117, i32 1
  store %struct.mem_range_desc* %118, %struct.mem_range_desc** %8, align 8
  br label %32

119:                                              ; preds = %87, %32
  %120 = load %struct.mem_range_desc*, %struct.mem_range_desc** %9, align 8
  %121 = icmp eq %struct.mem_range_desc* %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32, i32* @ENOSPC, align 4
  store i32 %123, i32* %4, align 4
  br label %149

124:                                              ; preds = %119
  %125 = load %struct.mem_range_desc*, %struct.mem_range_desc** %6, align 8
  %126 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.mem_range_desc*, %struct.mem_range_desc** %9, align 8
  %129 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  %130 = load %struct.mem_range_desc*, %struct.mem_range_desc** %6, align 8
  %131 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.mem_range_desc*, %struct.mem_range_desc** %9, align 8
  %134 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %133, i32 0, i32 2
  store i64 %132, i64* %134, align 8
  %135 = load i32, i32* @MDF_ACTIVE, align 4
  %136 = load %struct.mem_range_desc*, %struct.mem_range_desc** %6, align 8
  %137 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @mrcopyflags(i32 %135, i32 %138)
  %140 = load %struct.mem_range_desc*, %struct.mem_range_desc** %9, align 8
  %141 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.mem_range_desc*, %struct.mem_range_desc** %6, align 8
  %143 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.mem_range_desc*, %struct.mem_range_desc** %9, align 8
  %146 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @bcopy(i32 %144, i32 %147, i32 4)
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %124, %122, %103, %85, %68
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i64 @mroverlap(%struct.mem_range_desc*, %struct.mem_range_desc*) #1

declare dso_local i64 @x86_mtrrconflict(i32, i32) #1

declare dso_local i32 @mrcopyflags(i32, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
