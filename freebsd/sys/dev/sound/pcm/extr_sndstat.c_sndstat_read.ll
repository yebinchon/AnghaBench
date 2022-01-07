; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sndstat.c_sndstat_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sndstat.c_sndstat_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i32 }
%struct.sndstat_file = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @sndstat_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sndstat_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sndstat_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = bitcast %struct.sndstat_file** %8 to i8**
  %12 = call i32 @devfs_get_cdevpriv(i8** %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %90

17:                                               ; preds = %3
  %18 = load %struct.uio*, %struct.uio** %6, align 8
  %19 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %90

23:                                               ; preds = %17
  %24 = call i32 (...) @SNDSTAT_LOCK()
  %25 = load %struct.sndstat_file*, %struct.sndstat_file** %8, align 8
  %26 = getelementptr inbounds %struct.sndstat_file, %struct.sndstat_file* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %9, align 4
  br label %87

31:                                               ; preds = %23
  %32 = load %struct.sndstat_file*, %struct.sndstat_file** %8, align 8
  %33 = getelementptr inbounds %struct.sndstat_file, %struct.sndstat_file* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.sndstat_file*, %struct.sndstat_file** %8, align 8
  %38 = call i32 @sndstat_prepare(%struct.sndstat_file* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOMEM, align 4
  store i32 %42, i32* %9, align 4
  br label %87

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %31
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.sndstat_file*, %struct.sndstat_file** %8, align 8
  %47 = getelementptr inbounds %struct.sndstat_file, %struct.sndstat_file* %46, i32 0, i32 2
  %48 = call i32 @sbuf_len(i32* %47)
  %49 = sext i32 %48 to i64
  %50 = load %struct.sndstat_file*, %struct.sndstat_file** %8, align 8
  %51 = getelementptr inbounds %struct.sndstat_file, %struct.sndstat_file* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %49, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.uio*, %struct.uio** %6, align 8
  %57 = getelementptr inbounds %struct.uio, %struct.uio* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %45
  %61 = load %struct.uio*, %struct.uio** %6, align 8
  %62 = getelementptr inbounds %struct.uio, %struct.uio* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %60, %45
  %65 = load i32, i32* %10, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load %struct.sndstat_file*, %struct.sndstat_file** %8, align 8
  %69 = getelementptr inbounds %struct.sndstat_file, %struct.sndstat_file* %68, i32 0, i32 2
  %70 = call i32 @sbuf_data(i32* %69)
  %71 = sext i32 %70 to i64
  %72 = load %struct.sndstat_file*, %struct.sndstat_file** %8, align 8
  %73 = getelementptr inbounds %struct.sndstat_file, %struct.sndstat_file* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %71, %74
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.uio*, %struct.uio** %6, align 8
  %79 = call i32 @uiomove(i32 %76, i32 %77, %struct.uio* %78)
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %67, %64
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = load %struct.sndstat_file*, %struct.sndstat_file** %8, align 8
  %84 = getelementptr inbounds %struct.sndstat_file, %struct.sndstat_file* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, %82
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %80, %41, %29
  %88 = call i32 (...) @SNDSTAT_UNLOCK()
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %22, %15
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @SNDSTAT_LOCK(...) #1

declare dso_local i32 @sndstat_prepare(%struct.sndstat_file*) #1

declare dso_local i32 @sbuf_len(i32*) #1

declare dso_local i32 @uiomove(i32, i32, %struct.uio*) #1

declare dso_local i32 @sbuf_data(i32*) #1

declare dso_local i32 @SNDSTAT_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
