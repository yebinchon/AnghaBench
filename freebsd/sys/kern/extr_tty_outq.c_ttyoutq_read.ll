; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_outq.c_ttyoutq_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_outq.c_ttyoutq_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttyoutq = type { i64, i64, %struct.ttyoutq_block* }
%struct.ttyoutq_block = type { i64 }

@TTYOUTQ_DATASIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ttyoutq_read(%struct.ttyoutq* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.ttyoutq*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ttyoutq_block*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ttyoutq* %0, %struct.ttyoutq** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %7, align 8
  br label %13

13:                                               ; preds = %98, %3
  %14 = load i64, i64* %6, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %99

16:                                               ; preds = %13
  %17 = load %struct.ttyoutq*, %struct.ttyoutq** %4, align 8
  %18 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ttyoutq*, %struct.ttyoutq** %4, align 8
  %21 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %99

25:                                               ; preds = %16
  %26 = load %struct.ttyoutq*, %struct.ttyoutq** %4, align 8
  %27 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %26, i32 0, i32 2
  %28 = load %struct.ttyoutq_block*, %struct.ttyoutq_block** %27, align 8
  store %struct.ttyoutq_block* %28, %struct.ttyoutq_block** %8, align 8
  %29 = load %struct.ttyoutq_block*, %struct.ttyoutq_block** %8, align 8
  %30 = icmp eq %struct.ttyoutq_block* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %99

32:                                               ; preds = %25
  %33 = load %struct.ttyoutq*, %struct.ttyoutq** %4, align 8
  %34 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  %36 = load %struct.ttyoutq*, %struct.ttyoutq** %4, align 8
  %37 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ttyoutq*, %struct.ttyoutq** %4, align 8
  %40 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %41, %42
  %44 = call i64 @MIN(i64 %38, i64 %43)
  %45 = load i64, i64* @TTYOUTQ_DATASIZE, align 8
  %46 = call i64 @MIN(i64 %44, i64 %45)
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %9, align 8
  %49 = sub i64 %47, %48
  store i64 %49, i64* %11, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.ttyoutq_block*, %struct.ttyoutq_block** %8, align 8
  %52 = getelementptr inbounds %struct.ttyoutq_block, %struct.ttyoutq_block* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %53, %54
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @memcpy(i8* %50, i64 %55, i64 %56)
  %58 = load i64, i64* %11, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 %58
  store i8* %60, i8** %7, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %6, align 8
  %63 = sub i64 %62, %61
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load %struct.ttyoutq*, %struct.ttyoutq** %4, align 8
  %66 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %32
  %70 = load %struct.ttyoutq*, %struct.ttyoutq** %4, align 8
  %71 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load %struct.ttyoutq*, %struct.ttyoutq** %4, align 8
  %73 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  br label %98

74:                                               ; preds = %32
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* @TTYOUTQ_DATASIZE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %74
  %79 = load %struct.ttyoutq*, %struct.ttyoutq** %4, align 8
  %80 = call i32 @TTYOUTQ_REMOVE_HEAD(%struct.ttyoutq* %79)
  %81 = load %struct.ttyoutq*, %struct.ttyoutq** %4, align 8
  %82 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = load i64, i64* @TTYOUTQ_DATASIZE, align 8
  %84 = load %struct.ttyoutq*, %struct.ttyoutq** %4, align 8
  %85 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = sub i64 %86, %83
  store i64 %87, i64* %85, align 8
  %88 = load %struct.ttyoutq*, %struct.ttyoutq** %4, align 8
  %89 = load %struct.ttyoutq_block*, %struct.ttyoutq_block** %8, align 8
  %90 = call i32 @TTYOUTQ_RECYCLE(%struct.ttyoutq* %88, %struct.ttyoutq_block* %89)
  br label %97

91:                                               ; preds = %74
  %92 = load i64, i64* %11, align 8
  %93 = load %struct.ttyoutq*, %struct.ttyoutq** %4, align 8
  %94 = getelementptr inbounds %struct.ttyoutq, %struct.ttyoutq* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, %92
  store i64 %96, i64* %94, align 8
  br label %97

97:                                               ; preds = %91, %78
  br label %98

98:                                               ; preds = %97, %69
  br label %13

99:                                               ; preds = %31, %24, %13
  %100 = load i8*, i8** %7, align 8
  %101 = load i8*, i8** %5, align 8
  %102 = ptrtoint i8* %100 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  ret i64 %104
}

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @TTYOUTQ_REMOVE_HEAD(%struct.ttyoutq*) #1

declare dso_local i32 @TTYOUTQ_RECYCLE(%struct.ttyoutq*, %struct.ttyoutq_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
