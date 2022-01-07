; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_marshall.c_ib_copy_ah_attr_to_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_marshall.c_ib_copy_ah_attr_to_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uverbs_ah_attr = type { i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.ib_ah_attr = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IB_AH_GRH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_copy_ah_attr_to_user(%struct.ib_uverbs_ah_attr* %0, %struct.ib_ah_attr* %1) #0 {
  %3 = alloca %struct.ib_uverbs_ah_attr*, align 8
  %4 = alloca %struct.ib_ah_attr*, align 8
  store %struct.ib_uverbs_ah_attr* %0, %struct.ib_uverbs_ah_attr** %3, align 8
  store %struct.ib_ah_attr* %1, %struct.ib_ah_attr** %4, align 8
  %5 = load %struct.ib_uverbs_ah_attr*, %struct.ib_uverbs_ah_attr** %3, align 8
  %6 = getelementptr inbounds %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr* %5, i32 0, i32 7
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %10 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %9, i32 0, i32 6
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @memcpy(i32 %8, i32 %13, i32 4)
  %15 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %16 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ib_uverbs_ah_attr*, %struct.ib_uverbs_ah_attr** %3, align 8
  %20 = getelementptr inbounds %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 4
  store i32 %18, i32* %21, align 4
  %22 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %23 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ib_uverbs_ah_attr*, %struct.ib_uverbs_ah_attr** %3, align 8
  %27 = getelementptr inbounds %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 4
  %29 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %30 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ib_uverbs_ah_attr*, %struct.ib_uverbs_ah_attr** %3, align 8
  %34 = getelementptr inbounds %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 4
  %36 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %37 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ib_uverbs_ah_attr*, %struct.ib_uverbs_ah_attr** %3, align 8
  %41 = getelementptr inbounds %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr* %40, i32 0, i32 7
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.ib_uverbs_ah_attr*, %struct.ib_uverbs_ah_attr** %3, align 8
  %44 = getelementptr inbounds %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr* %43, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = call i32 @memset(i32* %45, i32 0, i32 4)
  %47 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %48 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ib_uverbs_ah_attr*, %struct.ib_uverbs_ah_attr** %3, align 8
  %51 = getelementptr inbounds %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %53 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ib_uverbs_ah_attr*, %struct.ib_uverbs_ah_attr** %3, align 8
  %56 = getelementptr inbounds %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %58 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ib_uverbs_ah_attr*, %struct.ib_uverbs_ah_attr** %3, align 8
  %61 = getelementptr inbounds %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %63 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ib_uverbs_ah_attr*, %struct.ib_uverbs_ah_attr** %3, align 8
  %66 = getelementptr inbounds %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %68 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IB_AH_GRH, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 1, i32 0
  %75 = load %struct.ib_uverbs_ah_attr*, %struct.ib_uverbs_ah_attr** %3, align 8
  %76 = getelementptr inbounds %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %78 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ib_uverbs_ah_attr*, %struct.ib_uverbs_ah_attr** %3, align 8
  %81 = getelementptr inbounds %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.ib_uverbs_ah_attr*, %struct.ib_uverbs_ah_attr** %3, align 8
  %83 = getelementptr inbounds %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
