; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_free_fl_sdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_free_fl_sdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sge_fl = type { i32, %struct.fl_sdesc* }
%struct.fl_sdesc = type { i64, i32*, %struct.cluster_layout }
%struct.cluster_layout = type { i64 }
%struct.cluster_metadata = type { i32 }

@extfree_rels = common dso_local global i32 0, align 4
@M_CXGBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_fl*)* @free_fl_sdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_fl_sdesc(%struct.adapter* %0, %struct.sge_fl* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge_fl*, align 8
  %5 = alloca %struct.fl_sdesc*, align 8
  %6 = alloca %struct.cluster_metadata*, align 8
  %7 = alloca %struct.cluster_layout*, align 8
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sge_fl* %1, %struct.sge_fl** %4, align 8
  %9 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %10 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %9, i32 0, i32 1
  %11 = load %struct.fl_sdesc*, %struct.fl_sdesc** %10, align 8
  store %struct.fl_sdesc* %11, %struct.fl_sdesc** %5, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %83, %2
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %15 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, 8
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %88

19:                                               ; preds = %12
  %20 = load %struct.fl_sdesc*, %struct.fl_sdesc** %5, align 8
  %21 = getelementptr inbounds %struct.fl_sdesc, %struct.fl_sdesc* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %83

25:                                               ; preds = %19
  %26 = load %struct.fl_sdesc*, %struct.fl_sdesc** %5, align 8
  %27 = getelementptr inbounds %struct.fl_sdesc, %struct.fl_sdesc* %26, i32 0, i32 2
  store %struct.cluster_layout* %27, %struct.cluster_layout** %7, align 8
  %28 = load %struct.adapter*, %struct.adapter** %3, align 8
  %29 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %30 = load %struct.cluster_layout*, %struct.cluster_layout** %7, align 8
  %31 = load %struct.fl_sdesc*, %struct.fl_sdesc** %5, align 8
  %32 = getelementptr inbounds %struct.fl_sdesc, %struct.fl_sdesc* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call %struct.cluster_metadata* @cl_metadata(%struct.adapter* %28, %struct.sge_fl* %29, %struct.cluster_layout* %30, i32* %33)
  store %struct.cluster_metadata* %34, %struct.cluster_metadata** %6, align 8
  %35 = load %struct.fl_sdesc*, %struct.fl_sdesc** %5, align 8
  %36 = getelementptr inbounds %struct.fl_sdesc, %struct.fl_sdesc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %25
  %40 = load %struct.adapter*, %struct.adapter** %3, align 8
  %41 = getelementptr inbounds %struct.adapter, %struct.adapter* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load %struct.cluster_layout*, %struct.cluster_layout** %7, align 8
  %45 = getelementptr inbounds %struct.cluster_layout, %struct.cluster_layout* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.fl_sdesc*, %struct.fl_sdesc** %5, align 8
  %51 = getelementptr inbounds %struct.fl_sdesc, %struct.fl_sdesc* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @uma_zfree(i32 %49, i32* %52)
  br label %80

54:                                               ; preds = %25
  %55 = load %struct.cluster_metadata*, %struct.cluster_metadata** %6, align 8
  %56 = icmp ne %struct.cluster_metadata* %55, null
  br i1 %56, label %57, label %79

57:                                               ; preds = %54
  %58 = load %struct.cluster_metadata*, %struct.cluster_metadata** %6, align 8
  %59 = getelementptr inbounds %struct.cluster_metadata, %struct.cluster_metadata* %58, i32 0, i32 0
  %60 = call i32 @atomic_fetchadd_int(i32* %59, i32 -1)
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = load %struct.adapter*, %struct.adapter** %3, align 8
  %64 = getelementptr inbounds %struct.adapter, %struct.adapter* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load %struct.cluster_layout*, %struct.cluster_layout** %7, align 8
  %68 = getelementptr inbounds %struct.cluster_layout, %struct.cluster_layout* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.fl_sdesc*, %struct.fl_sdesc** %5, align 8
  %74 = getelementptr inbounds %struct.fl_sdesc, %struct.fl_sdesc* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @uma_zfree(i32 %72, i32* %75)
  %77 = load i32, i32* @extfree_rels, align 4
  %78 = call i32 @counter_u64_add(i32 %77, i32 1)
  br label %79

79:                                               ; preds = %62, %57, %54
  br label %80

80:                                               ; preds = %79, %39
  %81 = load %struct.fl_sdesc*, %struct.fl_sdesc** %5, align 8
  %82 = getelementptr inbounds %struct.fl_sdesc, %struct.fl_sdesc* %81, i32 0, i32 1
  store i32* null, i32** %82, align 8
  br label %83

83:                                               ; preds = %80, %24
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  %86 = load %struct.fl_sdesc*, %struct.fl_sdesc** %5, align 8
  %87 = getelementptr inbounds %struct.fl_sdesc, %struct.fl_sdesc* %86, i32 1
  store %struct.fl_sdesc* %87, %struct.fl_sdesc** %5, align 8
  br label %12

88:                                               ; preds = %12
  %89 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %90 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %89, i32 0, i32 1
  %91 = load %struct.fl_sdesc*, %struct.fl_sdesc** %90, align 8
  %92 = load i32, i32* @M_CXGBE, align 4
  %93 = call i32 @free(%struct.fl_sdesc* %91, i32 %92)
  %94 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %95 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %94, i32 0, i32 1
  store %struct.fl_sdesc* null, %struct.fl_sdesc** %95, align 8
  ret void
}

declare dso_local %struct.cluster_metadata* @cl_metadata(%struct.adapter*, %struct.sge_fl*, %struct.cluster_layout*, i32*) #1

declare dso_local i32 @uma_zfree(i32, i32*) #1

declare dso_local i32 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @free(%struct.fl_sdesc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
