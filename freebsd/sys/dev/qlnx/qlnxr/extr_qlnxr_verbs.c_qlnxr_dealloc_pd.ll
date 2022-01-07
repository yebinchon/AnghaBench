; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_dealloc_pd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_dealloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.qlnxr_pd = type { i32 }
%struct.qlnxr_dev = type { i32, i32, i32* }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"pd = NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"exit [pd, pd_id, pd_count] = [%p, 0x%x, %d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlnxr_dealloc_pd(%struct.ib_pd* %0) #0 {
  %2 = alloca %struct.ib_pd*, align 8
  %3 = alloca %struct.qlnxr_pd*, align 8
  %4 = alloca %struct.qlnxr_dev*, align 8
  %5 = alloca i32*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %2, align 8
  %6 = load %struct.ib_pd*, %struct.ib_pd** %2, align 8
  %7 = call %struct.qlnxr_pd* @get_qlnxr_pd(%struct.ib_pd* %6)
  store %struct.qlnxr_pd* %7, %struct.qlnxr_pd** %3, align 8
  %8 = load %struct.ib_pd*, %struct.ib_pd** %2, align 8
  %9 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.qlnxr_dev* @get_qlnxr_dev(i32 %10)
  store %struct.qlnxr_dev* %11, %struct.qlnxr_dev** %4, align 8
  %12 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %13 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.qlnxr_pd*, %struct.qlnxr_pd** %3, align 8
  %18 = icmp eq %struct.qlnxr_pd* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @QL_DPRINT11(i32* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %44

22:                                               ; preds = %1
  %23 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %24 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.qlnxr_pd*, %struct.qlnxr_pd** %3, align 8
  %27 = getelementptr inbounds %struct.qlnxr_pd, %struct.qlnxr_pd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ecore_rdma_free_pd(i32 %25, i32 %28)
  %30 = load %struct.qlnxr_pd*, %struct.qlnxr_pd** %3, align 8
  %31 = call i32 @kfree(%struct.qlnxr_pd* %30)
  %32 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %33 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %32, i32 0, i32 0
  %34 = call i32 @atomic_subtract_rel_32(i32* %33, i32 1)
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.qlnxr_pd*, %struct.qlnxr_pd** %3, align 8
  %37 = load %struct.qlnxr_pd*, %struct.qlnxr_pd** %3, align 8
  %38 = getelementptr inbounds %struct.qlnxr_pd, %struct.qlnxr_pd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %41 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %35, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), %struct.qlnxr_pd* %36, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %22, %19
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.qlnxr_pd* @get_qlnxr_pd(%struct.ib_pd*) #1

declare dso_local %struct.qlnxr_dev* @get_qlnxr_dev(i32) #1

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local i32 @QL_DPRINT11(i32*, i8*) #1

declare dso_local i32 @ecore_rdma_free_pd(i32, i32) #1

declare dso_local i32 @kfree(%struct.qlnxr_pd*) #1

declare dso_local i32 @atomic_subtract_rel_32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
