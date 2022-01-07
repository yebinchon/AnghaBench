; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_marshall.c_ib_copy_qp_attr_to_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_marshall.c_ib_copy_qp_attr_to_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uverbs_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_copy_qp_attr_to_user(%struct.ib_uverbs_qp_attr* %0, %struct.ib_qp_attr* %1) #0 {
  %3 = alloca %struct.ib_uverbs_qp_attr*, align 8
  %4 = alloca %struct.ib_qp_attr*, align 8
  store %struct.ib_uverbs_qp_attr* %0, %struct.ib_uverbs_qp_attr** %3, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %4, align 8
  %5 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %6 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %5, i32 0, i32 24
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %9 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %8, i32 0, i32 29
  store i32 %7, i32* %9, align 4
  %10 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %11 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %10, i32 0, i32 23
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %14 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %13, i32 0, i32 28
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %16 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %15, i32 0, i32 22
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %19 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %18, i32 0, i32 27
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %21 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %20, i32 0, i32 21
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %24 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %23, i32 0, i32 26
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %26 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %25, i32 0, i32 20
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %29 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %28, i32 0, i32 25
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %31 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %30, i32 0, i32 19
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %34 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %33, i32 0, i32 24
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %36 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %35, i32 0, i32 18
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %39 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %38, i32 0, i32 23
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %41 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %40, i32 0, i32 17
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %44 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %43, i32 0, i32 22
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %46 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %45, i32 0, i32 16
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %49 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %48, i32 0, i32 21
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %51 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %50, i32 0, i32 15
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %55 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %54, i32 0, i32 20
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %57 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %56, i32 0, i32 15
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %61 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %60, i32 0, i32 19
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %63 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %62, i32 0, i32 15
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %67 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %66, i32 0, i32 18
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %69 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %68, i32 0, i32 15
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %73 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %72, i32 0, i32 17
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %75 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %74, i32 0, i32 15
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %79 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %78, i32 0, i32 16
  store i32 %77, i32* %79, align 4
  %80 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %81 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %80, i32 0, i32 15
  %82 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %83 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %82, i32 0, i32 14
  %84 = call i32 @ib_copy_ah_attr_to_user(i32* %81, i32* %83)
  %85 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %86 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %85, i32 0, i32 14
  %87 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %88 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %87, i32 0, i32 13
  %89 = call i32 @ib_copy_ah_attr_to_user(i32* %86, i32* %88)
  %90 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %91 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %90, i32 0, i32 12
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %94 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %93, i32 0, i32 13
  store i32 %92, i32* %94, align 4
  %95 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %96 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %95, i32 0, i32 11
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %99 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %98, i32 0, i32 12
  store i32 %97, i32* %99, align 4
  %100 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %101 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %100, i32 0, i32 10
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %104 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %103, i32 0, i32 11
  store i32 %102, i32* %104, align 4
  %105 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %106 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %109 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %108, i32 0, i32 10
  store i32 %107, i32* %109, align 4
  %110 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %111 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %110, i32 0, i32 8
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %114 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %113, i32 0, i32 9
  store i32 %112, i32* %114, align 4
  %115 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %116 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %119 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %118, i32 0, i32 8
  store i32 %117, i32* %119, align 4
  %120 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %121 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %124 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %123, i32 0, i32 7
  store i32 %122, i32* %124, align 4
  %125 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %126 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %129 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %128, i32 0, i32 6
  store i32 %127, i32* %129, align 4
  %130 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %131 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %134 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 4
  %135 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %136 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %139 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 4
  %140 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %141 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %144 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  %145 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %146 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %149 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 4
  %150 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %4, align 8
  %151 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %154 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load %struct.ib_uverbs_qp_attr*, %struct.ib_uverbs_qp_attr** %3, align 8
  %156 = getelementptr inbounds %struct.ib_uverbs_qp_attr, %struct.ib_uverbs_qp_attr* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @memset(i32 %157, i32 0, i32 4)
  ret void
}

declare dso_local i32 @ib_copy_ah_attr_to_user(i32*, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
