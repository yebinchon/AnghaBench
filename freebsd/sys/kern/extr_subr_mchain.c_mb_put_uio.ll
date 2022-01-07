; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_mchain.c_mb_put_uio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_mchain.c_mb_put_uio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbchain = type { i32 }
%struct.uio = type { i64, i64, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i8* }

@UIO_SYSSPACE = common dso_local global i64 0, align 8
@MB_MSYSTEM = common dso_local global i32 0, align 4
@MB_MUSER = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mb_put_uio(%struct.mbchain* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbchain*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mbchain* %0, %struct.mbchain** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.uio*, %struct.uio** %6, align 8
  %12 = getelementptr inbounds %struct.uio, %struct.uio* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @UIO_SYSSPACE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @MB_MSYSTEM, align 4
  br label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @MB_MUSER, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %83, %52, %20
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.uio*, %struct.uio** %6, align 8
  %27 = getelementptr inbounds %struct.uio, %struct.uio* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %25, %22
  %31 = phi i1 [ false, %22 ], [ %29, %25 ]
  br i1 %31, label %32, label %117

32:                                               ; preds = %30
  %33 = load %struct.uio*, %struct.uio** %6, align 8
  %34 = getelementptr inbounds %struct.uio, %struct.uio* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sle i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.uio*, %struct.uio** %6, align 8
  %39 = getelementptr inbounds %struct.uio, %struct.uio* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = icmp eq %struct.TYPE_2__* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37, %32
  %43 = load i32, i32* @EFBIG, align 4
  store i32 %43, i32* %4, align 4
  br label %118

44:                                               ; preds = %37
  %45 = load %struct.uio*, %struct.uio** %6, align 8
  %46 = getelementptr inbounds %struct.uio, %struct.uio* %45, i32 0, i32 3
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %44
  %53 = load %struct.uio*, %struct.uio** %6, align 8
  %54 = getelementptr inbounds %struct.uio, %struct.uio* %53, i32 0, i32 3
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 1
  store %struct.TYPE_2__* %56, %struct.TYPE_2__** %54, align 8
  %57 = load %struct.uio*, %struct.uio** %6, align 8
  %58 = getelementptr inbounds %struct.uio, %struct.uio* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, -1
  store i64 %60, i64* %58, align 8
  br label %22

61:                                               ; preds = %44
  %62 = load i64, i64* %8, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp sgt i64 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %8, align 8
  br label %69

69:                                               ; preds = %66, %61
  %70 = load %struct.mbchain*, %struct.mbchain** %5, align 8
  %71 = load %struct.uio*, %struct.uio** %6, align 8
  %72 = getelementptr inbounds %struct.uio, %struct.uio* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @mb_put_mem(%struct.mbchain* %70, i8* %75, i64 %76, i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %4, align 4
  br label %118

83:                                               ; preds = %69
  %84 = load i64, i64* %8, align 8
  %85 = load %struct.uio*, %struct.uio** %6, align 8
  %86 = getelementptr inbounds %struct.uio, %struct.uio* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, %84
  store i64 %88, i64* %86, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.uio*, %struct.uio** %6, align 8
  %91 = getelementptr inbounds %struct.uio, %struct.uio* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %92, %89
  store i64 %93, i64* %91, align 8
  %94 = load %struct.uio*, %struct.uio** %6, align 8
  %95 = getelementptr inbounds %struct.uio, %struct.uio* %94, i32 0, i32 3
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = load i64, i64* %8, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  %101 = load %struct.uio*, %struct.uio** %6, align 8
  %102 = getelementptr inbounds %struct.uio, %struct.uio* %101, i32 0, i32 3
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  store i8* %100, i8** %104, align 8
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.uio*, %struct.uio** %6, align 8
  %107 = getelementptr inbounds %struct.uio, %struct.uio* %106, i32 0, i32 3
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %110, %105
  store i64 %111, i64* %109, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = sub nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %7, align 4
  br label %22

117:                                              ; preds = %30
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %117, %81, %42
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @mb_put_mem(%struct.mbchain*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
