; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_qp.c_to_ib_ah_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_qp.c_to_ib_ah_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ib_ah_attr = type { i32, i32, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mthca_qp_path = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@IB_AH_GRH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mthca_dev*, %struct.ib_ah_attr*, %struct.mthca_qp_path*)* @to_ib_ah_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @to_ib_ah_attr(%struct.mthca_dev* %0, %struct.ib_ah_attr* %1, %struct.mthca_qp_path* %2) #0 {
  %4 = alloca %struct.mthca_dev*, align 8
  %5 = alloca %struct.ib_ah_attr*, align 8
  %6 = alloca %struct.mthca_qp_path*, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %4, align 8
  store %struct.ib_ah_attr* %1, %struct.ib_ah_attr** %5, align 8
  store %struct.mthca_qp_path* %2, %struct.mthca_qp_path** %6, align 8
  %7 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %8 = call i32 @memset(%struct.ib_ah_attr* %7, i32 0, i32 44)
  %9 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %6, align 8
  %10 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @be32_to_cpu(i32 %11)
  %13 = ashr i32 %12, 24
  %14 = and i32 %13, 3
  %15 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %16 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %18 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %3
  %22 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %23 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %26 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21, %3
  br label %123

31:                                               ; preds = %21
  %32 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %6, align 8
  %33 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @be16_to_cpu(i32 %34)
  %36 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %37 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %6, align 8
  %39 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @be32_to_cpu(i32 %40)
  %42 = ashr i32 %41, 28
  %43 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %44 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %6, align 8
  %46 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 127
  %49 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %50 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %52 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %6, align 8
  %53 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 15
  %56 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %57 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @mthca_rate_to_ib(%struct.mthca_dev* %51, i32 %55, i32 %58)
  %60 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %61 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %6, align 8
  %63 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 128
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %31
  %68 = load i32, i32* @IB_AH_GRH, align 4
  br label %70

69:                                               ; preds = %31
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 0, %69 ]
  %72 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %73 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %75 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %123

78:                                               ; preds = %70
  %79 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %6, align 8
  %80 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %83 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, 1
  %87 = and i32 %81, %86
  %88 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %89 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  %91 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %6, align 8
  %92 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %95 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 4
  store i32 %93, i32* %96, align 4
  %97 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %6, align 8
  %98 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @be32_to_cpu(i32 %99)
  %101 = ashr i32 %100, 20
  %102 = and i32 %101, 255
  %103 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %104 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  %106 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %6, align 8
  %107 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @be32_to_cpu(i32 %108)
  %110 = and i32 %109, 1048575
  %111 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %112 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  store i32 %110, i32* %113, align 4
  %114 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %115 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %6, align 8
  %120 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @memcpy(i32 %118, i32 %121, i32 4)
  br label %123

123:                                              ; preds = %30, %78, %70
  ret void
}

declare dso_local i32 @memset(%struct.ib_ah_attr*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @mthca_rate_to_ib(%struct.mthca_dev*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
