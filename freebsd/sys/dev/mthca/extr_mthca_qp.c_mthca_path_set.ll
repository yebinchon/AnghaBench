; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_qp.c_mthca_path_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_qp.c_mthca_path_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ib_ah_attr = type { i32, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mthca_qp_path = type { i32, i64, i8*, i32, i32, i32, i32 }

@IB_AH_GRH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"sgid_index (%u) too large. max is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mthca_dev*, %struct.ib_ah_attr*, %struct.mthca_qp_path*, i32)* @mthca_path_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_path_set(%struct.mthca_dev* %0, %struct.ib_ah_attr* %1, %struct.mthca_qp_path* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mthca_dev*, align 8
  %7 = alloca %struct.ib_ah_attr*, align 8
  %8 = alloca %struct.mthca_qp_path*, align 8
  %9 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %6, align 8
  store %struct.ib_ah_attr* %1, %struct.ib_ah_attr** %7, align 8
  store %struct.mthca_qp_path* %2, %struct.mthca_qp_path** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %11 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 127
  %14 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %8, align 8
  %15 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %17 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @cpu_to_be16(i32 %18)
  %20 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %8, align 8
  %21 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %23 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %24 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @mthca_get_rate(%struct.mthca_dev* %22, i32 %25, i32 %26)
  %28 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %8, align 8
  %29 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %31 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IB_AH_GRH, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %102

36:                                               ; preds = %4
  %37 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %38 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %42 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %40, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %36
  %47 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %48 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %49 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %53 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %55, 1
  %57 = call i32 @mthca_dbg(%struct.mthca_dev* %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %51, i64 %56)
  store i32 -1, i32* %5, align 4
  br label %111

58:                                               ; preds = %36
  %59 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %8, align 8
  %60 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, 128
  store i32 %62, i32* %60, align 8
  %63 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %64 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %8, align 8
  %68 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %70 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %8, align 8
  %74 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %76 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = shl i32 %77, 28
  %79 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %80 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = shl i32 %82, 20
  %84 = or i32 %78, %83
  %85 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %86 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %84, %88
  %90 = call i8* @cpu_to_be32(i32 %89)
  %91 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %8, align 8
  %92 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %8, align 8
  %94 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %97 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @memcpy(i32 %95, i32 %100, i32 16)
  br label %110

102:                                              ; preds = %4
  %103 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %104 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = shl i32 %105, 28
  %107 = call i8* @cpu_to_be32(i32 %106)
  %108 = load %struct.mthca_qp_path*, %struct.mthca_qp_path** %8, align 8
  %109 = getelementptr inbounds %struct.mthca_qp_path, %struct.mthca_qp_path* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %102, %58
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %110, %46
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @mthca_get_rate(%struct.mthca_dev*, i32, i32) #1

declare dso_local i32 @mthca_dbg(%struct.mthca_dev*, i8*, i64, i64) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
