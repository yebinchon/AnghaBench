; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvd/extr_nvd.c_nvd_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvd/extr_nvd.c_nvd_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.nvd_disk = type { i64, i64, i32, i32, i32, i32 }

@BIO_ORDERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @nvd_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvd_strategy(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.nvd_disk*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = getelementptr inbounds %struct.bio, %struct.bio* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.nvd_disk*
  store %struct.nvd_disk* %9, %struct.nvd_disk** %3, align 8
  %10 = load %struct.bio*, %struct.bio** %2, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @BIO_ORDERED, align 4
  %14 = and i32 %12, %13
  %15 = call i64 @__predict_false(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %1
  %18 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %19 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %18, i32 0, i32 0
  %20 = call i64 @atomic_fetchadd_int(i64* %19, i32 1)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %24 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %29 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %28, i32 0, i32 5
  %30 = call i32* @bioq_first(i32* %29)
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %34 = load %struct.bio*, %struct.bio** %2, align 8
  %35 = call i32 @nvd_bio_submit(%struct.nvd_disk* %33, %struct.bio* %34)
  br label %67

36:                                               ; preds = %27, %22, %17
  br label %50

37:                                               ; preds = %1
  %38 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %39 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i64 @__predict_true(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %47 = load %struct.bio*, %struct.bio** %2, align 8
  %48 = call i32 @nvd_bio_submit(%struct.nvd_disk* %46, %struct.bio* %47)
  br label %67

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %36
  %51 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %52 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %51, i32 0, i32 4
  %53 = call i32 @mtx_lock(i32* %52)
  %54 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %55 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %54, i32 0, i32 5
  %56 = load %struct.bio*, %struct.bio** %2, align 8
  %57 = call i32 @bioq_insert_tail(i32* %55, %struct.bio* %56)
  %58 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %59 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %58, i32 0, i32 4
  %60 = call i32 @mtx_unlock(i32* %59)
  %61 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %62 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %65 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %64, i32 0, i32 2
  %66 = call i32 @taskqueue_enqueue(i32 %63, i32* %65)
  br label %67

67:                                               ; preds = %50, %45, %32
  ret void
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i64 @atomic_fetchadd_int(i64*, i32) #1

declare dso_local i32* @bioq_first(i32*) #1

declare dso_local i32 @nvd_bio_submit(%struct.nvd_disk*, %struct.bio*) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @bioq_insert_tail(i32*, %struct.bio*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
