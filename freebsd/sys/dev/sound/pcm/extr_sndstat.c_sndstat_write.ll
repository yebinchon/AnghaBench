; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sndstat.c_sndstat_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_sndstat.c_sndstat_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i32 }
%struct.sndstat_file = type { i64, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @sndstat_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sndstat_write(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sndstat_file*, align 8
  %9 = alloca [64 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = bitcast %struct.sndstat_file** %8 to i8**
  %13 = call i32 @devfs_get_cdevpriv(i8** %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %4, align 4
  br label %95

18:                                               ; preds = %3
  %19 = load %struct.uio*, %struct.uio** %6, align 8
  %20 = getelementptr inbounds %struct.uio, %struct.uio* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %95

24:                                               ; preds = %18
  %25 = load %struct.uio*, %struct.uio** %6, align 8
  %26 = getelementptr inbounds %struct.uio, %struct.uio* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 65536
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  store i32 %30, i32* %4, align 4
  br label %95

31:                                               ; preds = %24
  %32 = call i32 (...) @SNDSTAT_LOCK()
  %33 = load %struct.sndstat_file*, %struct.sndstat_file** %8, align 8
  %34 = getelementptr inbounds %struct.sndstat_file, %struct.sndstat_file* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %10, align 4
  br label %92

39:                                               ; preds = %31
  %40 = load %struct.sndstat_file*, %struct.sndstat_file** %8, align 8
  %41 = getelementptr inbounds %struct.sndstat_file, %struct.sndstat_file* %40, i32 0, i32 2
  %42 = call i32 @sbuf_clear(i32* %41)
  br label %43

43:                                               ; preds = %39, %75
  store i32 256, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.uio*, %struct.uio** %6, align 8
  %46 = getelementptr inbounds %struct.uio, %struct.uio* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.uio*, %struct.uio** %6, align 8
  %51 = getelementptr inbounds %struct.uio, %struct.uio* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = load i32, i32* %11, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.uio*, %struct.uio** %6, align 8
  %60 = call i32 @uiomove(i32* %57, i32 %58, %struct.uio* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %76

64:                                               ; preds = %56
  br label %66

65:                                               ; preds = %53
  br label %76

66:                                               ; preds = %64
  %67 = load %struct.sndstat_file*, %struct.sndstat_file** %8, align 8
  %68 = getelementptr inbounds %struct.sndstat_file, %struct.sndstat_file* %67, i32 0, i32 2
  %69 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %70 = load i32, i32* %11, align 4
  %71 = call i64 @sbuf_bcat(i32* %68, i32* %69, i32 %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* @ENOMEM, align 4
  store i32 %74, i32* %10, align 4
  br label %76

75:                                               ; preds = %66
  br label %43

76:                                               ; preds = %73, %65, %63
  %77 = load %struct.sndstat_file*, %struct.sndstat_file** %8, align 8
  %78 = getelementptr inbounds %struct.sndstat_file, %struct.sndstat_file* %77, i32 0, i32 2
  %79 = call i32 @sbuf_finish(i32* %78)
  %80 = load i32, i32* %10, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %struct.sndstat_file*, %struct.sndstat_file** %8, align 8
  %84 = getelementptr inbounds %struct.sndstat_file, %struct.sndstat_file* %83, i32 0, i32 2
  %85 = call i64 @sbuf_len(i32* %84)
  %86 = load %struct.sndstat_file*, %struct.sndstat_file** %8, align 8
  %87 = getelementptr inbounds %struct.sndstat_file, %struct.sndstat_file* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  br label %91

88:                                               ; preds = %76
  %89 = load %struct.sndstat_file*, %struct.sndstat_file** %8, align 8
  %90 = getelementptr inbounds %struct.sndstat_file, %struct.sndstat_file* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %88, %82
  br label %92

92:                                               ; preds = %91, %37
  %93 = call i32 (...) @SNDSTAT_UNLOCK()
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %92, %29, %23, %16
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @SNDSTAT_LOCK(...) #1

declare dso_local i32 @sbuf_clear(i32*) #1

declare dso_local i32 @uiomove(i32*, i32, %struct.uio*) #1

declare dso_local i64 @sbuf_bcat(i32*, i32*, i32) #1

declare dso_local i32 @sbuf_finish(i32*) #1

declare dso_local i64 @sbuf_len(i32*) #1

declare dso_local i32 @SNDSTAT_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
