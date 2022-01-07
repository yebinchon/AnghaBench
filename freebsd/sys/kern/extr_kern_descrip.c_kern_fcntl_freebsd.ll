; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_kern_fcntl_freebsd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_kern_fcntl_freebsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.flock = type { i32, i32, i32, i32, i32, i32 }
%struct.__oflock = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_fcntl_freebsd(%struct.thread* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.flock, align 4
  %11 = alloca %struct.__oflock, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %49 [
    i32 133, label %17
    i32 132, label %17
    i32 131, label %17
    i32 134, label %44
    i32 130, label %44
    i32 129, label %44
    i32 128, label %44
  ]

17:                                               ; preds = %4, %4, %4
  %18 = load i64, i64* %9, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast %struct.__oflock* %11 to %struct.flock*
  %21 = call i32 @copyin(i8* %19, %struct.flock* %20, i32 24)
  store i32 %21, i32* %13, align 4
  %22 = getelementptr inbounds %struct.__oflock, %struct.__oflock* %11, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.flock, %struct.flock* %10, i32 0, i32 4
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.__oflock, %struct.__oflock* %11, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.flock, %struct.flock* %10, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.__oflock, %struct.__oflock* %11, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.flock, %struct.flock* %10, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.__oflock, %struct.__oflock* %11, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.flock, %struct.flock* %10, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.__oflock, %struct.__oflock* %11, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.flock, %struct.flock* %10, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.flock, %struct.flock* %10, i32 0, i32 5
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  switch i32 %38, label %42 [
    i32 133, label %39
    i32 132, label %40
    i32 131, label %41
  ]

39:                                               ; preds = %17
  store i32 134, i32* %14, align 4
  br label %42

40:                                               ; preds = %17
  store i32 130, i32* %14, align 4
  br label %42

41:                                               ; preds = %17
  store i32 129, i32* %14, align 4
  br label %42

42:                                               ; preds = %17, %41, %40, %39
  %43 = ptrtoint %struct.flock* %10 to i64
  store i64 %43, i64* %12, align 8
  br label %51

44:                                               ; preds = %4, %4, %4, %4
  %45 = load i64, i64* %9, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @copyin(i8* %46, %struct.flock* %10, i32 24)
  store i32 %47, i32* %13, align 4
  %48 = ptrtoint %struct.flock* %10 to i64
  store i64 %48, i64* %12, align 8
  br label %51

49:                                               ; preds = %4
  %50 = load i64, i64* %9, align 8
  store i64 %50, i64* %12, align 8
  br label %51

51:                                               ; preds = %49, %44, %42
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %5, align 4
  br label %99

56:                                               ; preds = %51
  %57 = load %struct.thread*, %struct.thread** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @kern_fcntl(%struct.thread* %57, i32 %58, i32 %59, i64 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %5, align 4
  br label %99

66:                                               ; preds = %56
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 133
  br i1 %68, label %69, label %89

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.flock, %struct.flock* %10, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.__oflock, %struct.__oflock* %11, i32 0, i32 4
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds %struct.flock, %struct.flock* %10, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.__oflock, %struct.__oflock* %11, i32 0, i32 3
  store i32 %74, i32* %75, align 4
  %76 = getelementptr inbounds %struct.flock, %struct.flock* %10, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.__oflock, %struct.__oflock* %11, i32 0, i32 2
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds %struct.flock, %struct.flock* %10, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.__oflock, %struct.__oflock* %11, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  %82 = getelementptr inbounds %struct.flock, %struct.flock* %10, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.__oflock, %struct.__oflock* %11, i32 0, i32 0
  store i32 %83, i32* %84, align 4
  %85 = bitcast %struct.__oflock* %11 to %struct.flock*
  %86 = load i64, i64* %9, align 8
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 @copyout(%struct.flock* %85, i8* %87, i32 24)
  store i32 %88, i32* %13, align 4
  br label %97

89:                                               ; preds = %66
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %90, 134
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i64, i64* %9, align 8
  %94 = inttoptr i64 %93 to i8*
  %95 = call i32 @copyout(%struct.flock* %10, i8* %94, i32 24)
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %92, %89
  br label %97

97:                                               ; preds = %96, %69
  %98 = load i32, i32* %13, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %97, %64, %54
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @copyin(i8*, %struct.flock*, i32) #1

declare dso_local i32 @kern_fcntl(%struct.thread*, i32, i32, i64) #1

declare dso_local i32 @copyout(%struct.flock*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
