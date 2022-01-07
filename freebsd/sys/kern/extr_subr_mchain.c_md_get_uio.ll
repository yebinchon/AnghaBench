; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_mchain.c_md_get_uio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_mchain.c_md_get_uio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdchain = type { i32 }
%struct.uio = type { i64, i64, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i8* }

@UIO_SYSSPACE = common dso_local global i64 0, align 8
@MB_MSYSTEM = common dso_local global i32 0, align 4
@MB_MUSER = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @md_get_uio(%struct.mdchain* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mdchain*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mdchain* %0, %struct.mdchain** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.uio*, %struct.uio** %6, align 8
  %13 = getelementptr inbounds %struct.uio, %struct.uio* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @UIO_SYSSPACE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @MB_MSYSTEM, align 4
  br label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @MB_MUSER, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %85, %53, %21
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.uio*, %struct.uio** %6, align 8
  %28 = getelementptr inbounds %struct.uio, %struct.uio* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %26, %23
  %32 = phi i1 [ false, %23 ], [ %30, %26 ]
  br i1 %32, label %33, label %119

33:                                               ; preds = %31
  %34 = load %struct.uio*, %struct.uio** %6, align 8
  %35 = getelementptr inbounds %struct.uio, %struct.uio* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.uio*, %struct.uio** %6, align 8
  %40 = getelementptr inbounds %struct.uio, %struct.uio* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = icmp eq %struct.TYPE_2__* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %38, %33
  %44 = load i32, i32* @EFBIG, align 4
  store i32 %44, i32* %4, align 4
  br label %120

45:                                               ; preds = %38
  %46 = load %struct.uio*, %struct.uio** %6, align 8
  %47 = getelementptr inbounds %struct.uio, %struct.uio* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %45
  %54 = load %struct.uio*, %struct.uio** %6, align 8
  %55 = getelementptr inbounds %struct.uio, %struct.uio* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 1
  store %struct.TYPE_2__* %57, %struct.TYPE_2__** %55, align 8
  %58 = load %struct.uio*, %struct.uio** %6, align 8
  %59 = getelementptr inbounds %struct.uio, %struct.uio* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, -1
  store i64 %61, i64* %59, align 8
  br label %23

62:                                               ; preds = %45
  %63 = load %struct.uio*, %struct.uio** %6, align 8
  %64 = getelementptr inbounds %struct.uio, %struct.uio* %63, i32 0, i32 3
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp sgt i64 %68, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %9, align 8
  br label %75

75:                                               ; preds = %72, %62
  %76 = load %struct.mdchain*, %struct.mdchain** %5, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @md_get_mem(%struct.mdchain* %76, i8* %77, i64 %78, i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %4, align 4
  br label %120

85:                                               ; preds = %75
  %86 = load i64, i64* %9, align 8
  %87 = load %struct.uio*, %struct.uio** %6, align 8
  %88 = getelementptr inbounds %struct.uio, %struct.uio* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, %86
  store i64 %90, i64* %88, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load %struct.uio*, %struct.uio** %6, align 8
  %93 = getelementptr inbounds %struct.uio, %struct.uio* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %94, %91
  store i64 %95, i64* %93, align 8
  %96 = load %struct.uio*, %struct.uio** %6, align 8
  %97 = getelementptr inbounds %struct.uio, %struct.uio* %96, i32 0, i32 3
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load i64, i64* %9, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = load %struct.uio*, %struct.uio** %6, align 8
  %104 = getelementptr inbounds %struct.uio, %struct.uio* %103, i32 0, i32 3
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  store i8* %102, i8** %106, align 8
  %107 = load i64, i64* %9, align 8
  %108 = load %struct.uio*, %struct.uio** %6, align 8
  %109 = getelementptr inbounds %struct.uio, %struct.uio* %108, i32 0, i32 3
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %112, %107
  store i64 %113, i64* %111, align 8
  %114 = load i64, i64* %9, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = sub nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %7, align 4
  br label %23

119:                                              ; preds = %31
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %119, %83, %43
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @md_get_mem(%struct.mdchain*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
