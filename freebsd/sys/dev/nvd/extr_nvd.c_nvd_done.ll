; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvd/extr_nvd.c_nvd_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvd/extr_nvd.c_nvd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_completion = type { i32 }
%struct.bio = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvd_disk* }
%struct.nvd_disk = type { i64, i64 }

@BIO_ORDERED = common dso_local global i32 0, align 4
@NVD_ODEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.nvme_completion*)* @nvd_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvd_done(i8* %0, %struct.nvme_completion* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nvme_completion*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.nvd_disk*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.nvme_completion* %1, %struct.nvme_completion** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.bio*
  store %struct.bio* %8, %struct.bio** %5, align 8
  %9 = load %struct.bio*, %struct.bio** %5, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.nvd_disk*, %struct.nvd_disk** %12, align 8
  store %struct.nvd_disk* %13, %struct.nvd_disk** %6, align 8
  %14 = load %struct.bio*, %struct.bio** %5, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @BIO_ORDERED, align 4
  %18 = and i32 %16, %17
  %19 = call i64 @__predict_false(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load %struct.nvd_disk*, %struct.nvd_disk** %6, align 8
  %23 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %22, i32 0, i32 0
  %24 = load i32, i32* @NVD_ODEPTH, align 4
  %25 = sub nsw i32 0, %24
  %26 = call i32 @atomic_add_int(i64* %23, i32 %25)
  %27 = load %struct.nvd_disk*, %struct.nvd_disk** %6, align 8
  %28 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %27, i32 0, i32 1
  %29 = call i32 @atomic_add_int(i64* %28, i32 -1)
  %30 = load %struct.nvd_disk*, %struct.nvd_disk** %6, align 8
  %31 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %30, i32 0, i32 0
  %32 = call i32 @wakeup(i64* %31)
  br label %51

33:                                               ; preds = %2
  %34 = load %struct.nvd_disk*, %struct.nvd_disk** %6, align 8
  %35 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %34, i32 0, i32 0
  %36 = call i32 @atomic_fetchadd_int(i64* %35, i32 -1)
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load %struct.nvd_disk*, %struct.nvd_disk** %6, align 8
  %40 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i64 @__predict_false(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load %struct.nvd_disk*, %struct.nvd_disk** %6, align 8
  %48 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %47, i32 0, i32 0
  %49 = call i32 @wakeup(i64* %48)
  br label %50

50:                                               ; preds = %46, %38, %33
  br label %51

51:                                               ; preds = %50, %21
  %52 = load %struct.bio*, %struct.bio** %5, align 8
  %53 = call i32 @biodone(%struct.bio* %52)
  ret void
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @atomic_add_int(i64*, i32) #1

declare dso_local i32 @wakeup(i64*) #1

declare dso_local i32 @atomic_fetchadd_int(i64*, i32) #1

declare dso_local i32 @biodone(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
