; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_vmem.c_vmem_clip.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_vmem.c_vmem_clip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i64, i64, i64 }

@BT_TYPE_FREE = common dso_local global i64 0, align 8
@vmem_seglist = common dso_local global i32 0, align 4
@bt_seglist = common dso_local global i32 0, align 4
@BT_TYPE_BUSY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_18__*, i64, i64)* @vmem_clip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmem_clip(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %12 = call i32 @VMEM_ASSERT_LOCKED(%struct.TYPE_17__* %11)
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BT_TYPE_FREE, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @MPASS(i32 %18)
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp sge i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @MPASS(i32 %25)
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %29 = call i32 @bt_remfree(%struct.TYPE_17__* %27, %struct.TYPE_18__* %28)
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %73

35:                                               ; preds = %4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %37 = call %struct.TYPE_18__* @bt_alloc(%struct.TYPE_17__* %36)
  store %struct.TYPE_18__* %37, %struct.TYPE_18__** %10, align 8
  %38 = load i64, i64* @BT_TYPE_FREE, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %61, %58
  store i64 %62, i64* %60, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %65 = call i32 @bt_insfree(%struct.TYPE_17__* %63, %struct.TYPE_18__* %64)
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %69 = load i32, i32* @vmem_seglist, align 4
  %70 = load i32, i32* @bt_seglist, align 4
  %71 = call i32 @TAILQ_PREV(%struct.TYPE_18__* %68, i32 %69, i32 %70)
  %72 = call i32 @bt_insseg(%struct.TYPE_17__* %66, %struct.TYPE_18__* %67, i32 %71)
  br label %73

73:                                               ; preds = %35, %4
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @MPASS(i32 %79)
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %137

86:                                               ; preds = %73
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = sub nsw i64 %89, %90
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %91, %94
  br i1 %95, label %96, label %137

96:                                               ; preds = %86
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %98 = call %struct.TYPE_18__* @bt_alloc(%struct.TYPE_17__* %97)
  store %struct.TYPE_18__* %98, %struct.TYPE_18__** %9, align 8
  %99 = load i8*, i8** @BT_TYPE_BUSY, align 8
  %100 = ptrtoint i8* %99 to i64
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 2
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* %8, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %8, align 8
  %115 = add nsw i64 %113, %114
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 2
  store i64 %115, i64* %117, align 8
  %118 = load i64, i64* %8, align 8
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %121, %118
  store i64 %122, i64* %120, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %125 = call i32 @bt_insfree(%struct.TYPE_17__* %123, %struct.TYPE_18__* %124)
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %129 = load i32, i32* @vmem_seglist, align 4
  %130 = load i32, i32* @bt_seglist, align 4
  %131 = call i32 @TAILQ_PREV(%struct.TYPE_18__* %128, i32 %129, i32 %130)
  %132 = call i32 @bt_insseg(%struct.TYPE_17__* %126, %struct.TYPE_18__* %127, i32 %131)
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %135 = call i32 @bt_insbusy(%struct.TYPE_17__* %133, %struct.TYPE_18__* %134)
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  store %struct.TYPE_18__* %136, %struct.TYPE_18__** %6, align 8
  br label %145

137:                                              ; preds = %86, %73
  %138 = load i8*, i8** @BT_TYPE_BUSY, align 8
  %139 = ptrtoint i8* %138 to i64
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %144 = call i32 @bt_insbusy(%struct.TYPE_17__* %142, %struct.TYPE_18__* %143)
  br label %145

145:                                              ; preds = %137, %96
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %8, align 8
  %150 = icmp sge i64 %148, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 @MPASS(i32 %151)
  ret void
}

declare dso_local i32 @VMEM_ASSERT_LOCKED(%struct.TYPE_17__*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @bt_remfree(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @bt_alloc(%struct.TYPE_17__*) #1

declare dso_local i32 @bt_insfree(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @bt_insseg(%struct.TYPE_17__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @TAILQ_PREV(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @bt_insbusy(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
