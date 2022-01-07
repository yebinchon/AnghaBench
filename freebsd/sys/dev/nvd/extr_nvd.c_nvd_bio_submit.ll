; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvd/extr_nvd.c_nvd_bio_submit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvd/extr_nvd.c_nvd_bio_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvd_disk = type { i64, i64, i32 }
%struct.bio = type { i32, i32, i32, i32, i32* }

@BIO_ORDERED = common dso_local global i32 0, align 4
@NVD_ODEPTH = common dso_local global i32 0, align 4
@nvd_done = common dso_local global i32 0, align 4
@BIO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvd_disk*, %struct.bio*)* @nvd_bio_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvd_bio_submit(%struct.nvd_disk* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.nvd_disk*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  store %struct.nvd_disk* %0, %struct.nvd_disk** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %6 = load %struct.bio*, %struct.bio** %4, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 4
  store i32* null, i32** %7, align 8
  %8 = load %struct.bio*, %struct.bio** %4, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @BIO_ORDERED, align 4
  %12 = and i32 %10, %11
  %13 = call i64 @__predict_false(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %17 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %16, i32 0, i32 0
  %18 = load i32, i32* @NVD_ODEPTH, align 4
  %19 = call i32 @atomic_add_int(i64* %17, i32 %18)
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %22 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %21, i32 0, i32 0
  %23 = call i32 @atomic_add_int(i64* %22, i32 1)
  br label %24

24:                                               ; preds = %20, %15
  %25 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %26 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.bio*, %struct.bio** %4, align 8
  %29 = load i32, i32* @nvd_done, align 4
  %30 = call i32 @nvme_ns_bio_process(i32 %27, %struct.bio* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %87

33:                                               ; preds = %24
  %34 = load %struct.bio*, %struct.bio** %4, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @BIO_ORDERED, align 4
  %38 = and i32 %36, %37
  %39 = call i64 @__predict_false(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %33
  %42 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %43 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %42, i32 0, i32 0
  %44 = load i32, i32* @NVD_ODEPTH, align 4
  %45 = sub nsw i32 0, %44
  %46 = call i32 @atomic_add_int(i64* %43, i32 %45)
  %47 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %48 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %47, i32 0, i32 1
  %49 = call i32 @atomic_add_int(i64* %48, i32 -1)
  %50 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %51 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %50, i32 0, i32 0
  %52 = call i32 @wakeup(i64* %51)
  br label %71

53:                                               ; preds = %33
  %54 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %55 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %54, i32 0, i32 0
  %56 = call i32 @atomic_fetchadd_int(i64* %55, i32 -1)
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %60 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i64 @__predict_false(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load %struct.nvd_disk*, %struct.nvd_disk** %3, align 8
  %68 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %67, i32 0, i32 0
  %69 = call i32 @wakeup(i64* %68)
  br label %70

70:                                               ; preds = %66, %58, %53
  br label %71

71:                                               ; preds = %70, %41
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.bio*, %struct.bio** %4, align 8
  %74 = getelementptr inbounds %struct.bio, %struct.bio* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @BIO_ERROR, align 4
  %76 = load %struct.bio*, %struct.bio** %4, align 8
  %77 = getelementptr inbounds %struct.bio, %struct.bio* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load %struct.bio*, %struct.bio** %4, align 8
  %81 = getelementptr inbounds %struct.bio, %struct.bio* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.bio*, %struct.bio** %4, align 8
  %84 = getelementptr inbounds %struct.bio, %struct.bio* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.bio*, %struct.bio** %4, align 8
  %86 = call i32 @biodone(%struct.bio* %85)
  br label %87

87:                                               ; preds = %71, %24
  ret void
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @atomic_add_int(i64*, i32) #1

declare dso_local i32 @nvme_ns_bio_process(i32, %struct.bio*, i32) #1

declare dso_local i32 @wakeup(i64*) #1

declare dso_local i32 @atomic_fetchadd_int(i64*, i32) #1

declare dso_local i32 @biodone(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
