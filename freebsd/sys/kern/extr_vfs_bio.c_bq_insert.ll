; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bq_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bq_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufqueue = type { i64, i64, i32, i32 }
%struct.buf = type { i64, i32, i32 }
%struct.bufdomain = type { i64, %struct.bufqueue*, i64 }

@QUEUE_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"bq_insert: free buffer %p onto another queue?\00", align 1
@B_AGE = common dso_local global i32 0, align 4
@QUEUE_CLEAN = common dso_local global i64 0, align 8
@b_freelist = common dso_local global i32 0, align 4
@B_REUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufqueue*, %struct.buf*, i32)* @bq_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bq_insert(%struct.bufqueue* %0, %struct.buf* %1, i32 %2) #0 {
  %4 = alloca %struct.bufqueue*, align 8
  %5 = alloca %struct.buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bufdomain*, align 8
  store %struct.bufqueue* %0, %struct.bufqueue** %4, align 8
  store %struct.buf* %1, %struct.buf** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.buf*, %struct.buf** %5, align 8
  %9 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @QUEUE_NONE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.buf*, %struct.buf** %5, align 8
  %15 = call i32 @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.buf* %14)
  br label %16

16:                                               ; preds = %13, %3
  %17 = load %struct.buf*, %struct.buf** %5, align 8
  %18 = call %struct.bufdomain* @bufdomain(%struct.buf* %17)
  store %struct.bufdomain* %18, %struct.bufdomain** %7, align 8
  %19 = load %struct.buf*, %struct.buf** %5, align 8
  %20 = getelementptr inbounds %struct.buf, %struct.buf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @B_AGE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %16
  %26 = load %struct.bufqueue*, %struct.bufqueue** %4, align 8
  %27 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @QUEUE_CLEAN, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.bufdomain*, %struct.bufdomain** %7, align 8
  %33 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %32, i32 0, i32 1
  %34 = load %struct.bufqueue*, %struct.bufqueue** %33, align 8
  store %struct.bufqueue* %34, %struct.bufqueue** %4, align 8
  br label %35

35:                                               ; preds = %31, %25
  %36 = load %struct.bufqueue*, %struct.bufqueue** %4, align 8
  %37 = call i32 @BQ_LOCK(%struct.bufqueue* %36)
  %38 = load %struct.bufqueue*, %struct.bufqueue** %4, align 8
  %39 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %38, i32 0, i32 3
  %40 = load %struct.buf*, %struct.buf** %5, align 8
  %41 = load i32, i32* @b_freelist, align 4
  %42 = call i32 @TAILQ_INSERT_HEAD(i32* %39, %struct.buf* %40, i32 %41)
  br label %51

43:                                               ; preds = %16
  %44 = load %struct.bufqueue*, %struct.bufqueue** %4, align 8
  %45 = call i32 @BQ_LOCK(%struct.bufqueue* %44)
  %46 = load %struct.bufqueue*, %struct.bufqueue** %4, align 8
  %47 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %46, i32 0, i32 3
  %48 = load %struct.buf*, %struct.buf** %5, align 8
  %49 = load i32, i32* @b_freelist, align 4
  %50 = call i32 @TAILQ_INSERT_TAIL(i32* %47, %struct.buf* %48, i32 %49)
  br label %51

51:                                               ; preds = %43, %35
  %52 = load i32, i32* @B_AGE, align 4
  %53 = load i32, i32* @B_REUSE, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = load %struct.buf*, %struct.buf** %5, align 8
  %57 = getelementptr inbounds %struct.buf, %struct.buf* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.bufqueue*, %struct.bufqueue** %4, align 8
  %61 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = load %struct.bufqueue*, %struct.bufqueue** %4, align 8
  %65 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.buf*, %struct.buf** %5, align 8
  %68 = getelementptr inbounds %struct.buf, %struct.buf* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.bufqueue*, %struct.bufqueue** %4, align 8
  %70 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.buf*, %struct.buf** %5, align 8
  %73 = getelementptr inbounds %struct.buf, %struct.buf* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %51
  %77 = load %struct.buf*, %struct.buf** %5, align 8
  %78 = call i32 @BUF_UNLOCK(%struct.buf* %77)
  br label %79

79:                                               ; preds = %76, %51
  %80 = load %struct.buf*, %struct.buf** %5, align 8
  %81 = getelementptr inbounds %struct.buf, %struct.buf* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @QUEUE_CLEAN, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %109

85:                                               ; preds = %79
  %86 = load %struct.bufdomain*, %struct.bufdomain** %7, align 8
  %87 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %104, label %90

90:                                               ; preds = %85
  %91 = load %struct.bufqueue*, %struct.bufqueue** %4, align 8
  %92 = load %struct.bufdomain*, %struct.bufdomain** %7, align 8
  %93 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %92, i32 0, i32 1
  %94 = load %struct.bufqueue*, %struct.bufqueue** %93, align 8
  %95 = icmp ne %struct.bufqueue* %91, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = load %struct.bufqueue*, %struct.bufqueue** %4, align 8
  %98 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.bufdomain*, %struct.bufdomain** %7, align 8
  %101 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp sge i64 %99, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %96, %85
  %105 = load %struct.bufdomain*, %struct.bufdomain** %7, align 8
  %106 = load %struct.bufqueue*, %struct.bufqueue** %4, align 8
  %107 = call i32 @bd_flush(%struct.bufdomain* %105, %struct.bufqueue* %106)
  br label %108

108:                                              ; preds = %104, %96, %90
  br label %109

109:                                              ; preds = %108, %79
  %110 = load %struct.bufqueue*, %struct.bufqueue** %4, align 8
  %111 = call i32 @BQ_UNLOCK(%struct.bufqueue* %110)
  ret void
}

declare dso_local i32 @panic(i8*, %struct.buf*) #1

declare dso_local %struct.bufdomain* @bufdomain(%struct.buf*) #1

declare dso_local i32 @BQ_LOCK(%struct.bufqueue*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.buf*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.buf*, i32) #1

declare dso_local i32 @BUF_UNLOCK(%struct.buf*) #1

declare dso_local i32 @bd_flush(%struct.bufdomain*, %struct.bufqueue*) #1

declare dso_local i32 @BQ_UNLOCK(%struct.bufqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
