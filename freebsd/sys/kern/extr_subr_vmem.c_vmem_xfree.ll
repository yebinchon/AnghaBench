; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_vmem.c_vmem_xfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_vmem.c_vmem_xfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64 }
%struct.TYPE_26__ = type { i64, i64, i64 }

@BT_TYPE_BUSY = common dso_local global i64 0, align 8
@BT_TYPE_FREE = common dso_local global i64 0, align 8
@bt_seglist = common dso_local global i32 0, align 4
@vmem_seglist = common dso_local global i32 0, align 4
@BT_MAXFREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmem_xfree(%struct.TYPE_25__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sgt i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @MPASS(i32 %11)
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %14 = call i32 @VMEM_LOCK(%struct.TYPE_25__* %13)
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call %struct.TYPE_26__* @bt_lookupbusy(%struct.TYPE_25__* %15, i64 %16)
  store %struct.TYPE_26__* %17, %struct.TYPE_26__** %7, align 8
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %19 = icmp ne %struct.TYPE_26__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @MPASS(i32 %20)
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @MPASS(i32 %27)
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @vmem_roundup_size(%struct.TYPE_25__* %32, i32 %33)
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %48, label %36

36:                                               ; preds = %3
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @vmem_roundup_size(%struct.TYPE_25__* %40, i32 %41)
  %43 = sub nsw i64 %39, %42
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sle i64 %43, %46
  br label %48

48:                                               ; preds = %36, %3
  %49 = phi i1 [ true, %3 ], [ %47, %36 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @MPASS(i32 %50)
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @BT_TYPE_BUSY, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @MPASS(i32 %57)
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %61 = call i32 @bt_rembusy(%struct.TYPE_25__* %59, %struct.TYPE_26__* %60)
  %62 = load i64, i64* @BT_TYPE_FREE, align 8
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %66 = load i32, i32* @bt_seglist, align 4
  %67 = call %struct.TYPE_26__* @TAILQ_NEXT(%struct.TYPE_26__* %65, i32 %66)
  store %struct.TYPE_26__* %67, %struct.TYPE_26__** %8, align 8
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %69 = icmp ne %struct.TYPE_26__* %68, null
  br i1 %69, label %70, label %98

70:                                               ; preds = %48
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @BT_TYPE_FREE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %98

76:                                               ; preds = %70
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %78 = call i64 @BT_END(%struct.TYPE_26__* %77)
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %78, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @MPASS(i32 %83)
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, %87
  store i64 %91, i64* %89, align 8
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %94 = call i32 @bt_remfree(%struct.TYPE_25__* %92, %struct.TYPE_26__* %93)
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %97 = call i32 @bt_remseg(%struct.TYPE_25__* %95, %struct.TYPE_26__* %96)
  br label %98

98:                                               ; preds = %76, %70, %48
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %100 = load i32, i32* @vmem_seglist, align 4
  %101 = load i32, i32* @bt_seglist, align 4
  %102 = call %struct.TYPE_26__* @TAILQ_PREV(%struct.TYPE_26__* %99, i32 %100, i32 %101)
  store %struct.TYPE_26__* %102, %struct.TYPE_26__** %8, align 8
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %104 = icmp ne %struct.TYPE_26__* %103, null
  br i1 %104, label %105, label %138

105:                                              ; preds = %98
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @BT_TYPE_FREE, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %138

111:                                              ; preds = %105
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %113 = call i64 @BT_END(%struct.TYPE_26__* %112)
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp slt i64 %113, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @MPASS(i32 %118)
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, %122
  store i64 %126, i64* %124, align 8
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %134 = call i32 @bt_remfree(%struct.TYPE_25__* %132, %struct.TYPE_26__* %133)
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %137 = call i32 @bt_remseg(%struct.TYPE_25__* %135, %struct.TYPE_26__* %136)
  br label %138

138:                                              ; preds = %111, %105, %98
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %141 = call i32 @vmem_try_release(%struct.TYPE_25__* %139, %struct.TYPE_26__* %140, i32 0)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %152, label %143

143:                                              ; preds = %138
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %146 = call i32 @bt_insfree(%struct.TYPE_25__* %144, %struct.TYPE_26__* %145)
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %148 = call i32 @VMEM_CONDVAR_BROADCAST(%struct.TYPE_25__* %147)
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %150 = load i32, i32* @BT_MAXFREE, align 4
  %151 = call i32 @bt_freetrim(%struct.TYPE_25__* %149, i32 %150)
  br label %152

152:                                              ; preds = %143, %138
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @VMEM_LOCK(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_26__* @bt_lookupbusy(%struct.TYPE_25__*, i64) #1

declare dso_local i64 @vmem_roundup_size(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @bt_rembusy(%struct.TYPE_25__*, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @TAILQ_NEXT(%struct.TYPE_26__*, i32) #1

declare dso_local i64 @BT_END(%struct.TYPE_26__*) #1

declare dso_local i32 @bt_remfree(%struct.TYPE_25__*, %struct.TYPE_26__*) #1

declare dso_local i32 @bt_remseg(%struct.TYPE_25__*, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @TAILQ_PREV(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @vmem_try_release(%struct.TYPE_25__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @bt_insfree(%struct.TYPE_25__*, %struct.TYPE_26__*) #1

declare dso_local i32 @VMEM_CONDVAR_BROADCAST(%struct.TYPE_25__*) #1

declare dso_local i32 @bt_freetrim(%struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
