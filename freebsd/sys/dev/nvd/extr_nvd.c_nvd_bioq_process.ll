; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvd/extr_nvd.c_nvd_bioq_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvd/extr_nvd.c_nvd_bioq_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvd_disk = type { i64, i32, i32 }
%struct.bio = type { i32 }

@BIO_ORDERED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"nvdorb\00", align 1
@NVD_ODEPTH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"nvdora\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @nvd_bioq_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvd_bioq_process(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvd_disk*, align 8
  %6 = alloca %struct.bio*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.nvd_disk*
  store %struct.nvd_disk* %8, %struct.nvd_disk** %5, align 8
  br label %9

9:                                                ; preds = %53, %2
  %10 = load %struct.nvd_disk*, %struct.nvd_disk** %5, align 8
  %11 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %10, i32 0, i32 1
  %12 = call i32 @mtx_lock(i32* %11)
  %13 = load %struct.nvd_disk*, %struct.nvd_disk** %5, align 8
  %14 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %13, i32 0, i32 2
  %15 = call %struct.bio* @bioq_takefirst(i32* %14)
  store %struct.bio* %15, %struct.bio** %6, align 8
  %16 = load %struct.nvd_disk*, %struct.nvd_disk** %5, align 8
  %17 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %16, i32 0, i32 1
  %18 = call i32 @mtx_unlock(i32* %17)
  %19 = load %struct.bio*, %struct.bio** %6, align 8
  %20 = icmp eq %struct.bio* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %9
  br label %57

22:                                               ; preds = %9
  %23 = load %struct.bio*, %struct.bio** %6, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BIO_ORDERED, align 4
  %27 = and i32 %25, %26
  %28 = call i64 @__predict_false(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %36, %30
  %32 = load %struct.nvd_disk*, %struct.nvd_disk** %5, align 8
  %33 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.nvd_disk*, %struct.nvd_disk** %5, align 8
  %38 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %37, i32 0, i32 0
  %39 = call i32 @tsleep(i64* %38, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %31

40:                                               ; preds = %31
  br label %53

41:                                               ; preds = %22
  br label %42

42:                                               ; preds = %48, %41
  %43 = load %struct.nvd_disk*, %struct.nvd_disk** %5, align 8
  %44 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NVD_ODEPTH, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.nvd_disk*, %struct.nvd_disk** %5, align 8
  %50 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %49, i32 0, i32 0
  %51 = call i32 @tsleep(i64* %50, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %42

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %40
  %54 = load %struct.nvd_disk*, %struct.nvd_disk** %5, align 8
  %55 = load %struct.bio*, %struct.bio** %6, align 8
  %56 = call i32 @nvd_bio_submit(%struct.nvd_disk* %54, %struct.bio* %55)
  br label %9

57:                                               ; preds = %21
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.bio* @bioq_takefirst(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @tsleep(i64*, i32, i8*, i32) #1

declare dso_local i32 @nvd_bio_submit(%struct.nvd_disk*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
