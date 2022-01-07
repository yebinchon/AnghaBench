; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_uiodir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_uiodir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udf_uiodir = type { i64, i64, i32, i64, i32* }
%struct.uio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.udf_uiodir*, i32, %struct.uio*, i64)* @udf_uiodir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_uiodir(%struct.udf_uiodir* %0, i32 %1, %struct.uio* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.udf_uiodir*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uio*, align 8
  %9 = alloca i64, align 8
  store %struct.udf_uiodir* %0, %struct.udf_uiodir** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.uio* %2, %struct.uio** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load %struct.udf_uiodir*, %struct.udf_uiodir** %6, align 8
  %11 = getelementptr inbounds %struct.udf_uiodir, %struct.udf_uiodir* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %4
  %15 = load %struct.udf_uiodir*, %struct.udf_uiodir** %6, align 8
  %16 = getelementptr inbounds %struct.udf_uiodir, %struct.udf_uiodir* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.udf_uiodir*, %struct.udf_uiodir** %6, align 8
  %20 = getelementptr inbounds %struct.udf_uiodir, %struct.udf_uiodir* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct.udf_uiodir*, %struct.udf_uiodir** %6, align 8
  %25 = getelementptr inbounds %struct.udf_uiodir, %struct.udf_uiodir* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  store i32 -1, i32* %5, align 4
  br label %49

26:                                               ; preds = %14
  %27 = load i64, i64* %9, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.udf_uiodir*, %struct.udf_uiodir** %6, align 8
  %30 = getelementptr inbounds %struct.udf_uiodir, %struct.udf_uiodir* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %30, align 8
  store i32 %28, i32* %31, align 4
  br label %33

33:                                               ; preds = %26, %4
  %34 = load %struct.uio*, %struct.uio** %8, align 8
  %35 = getelementptr inbounds %struct.uio, %struct.uio* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.udf_uiodir*, %struct.udf_uiodir** %6, align 8
  %41 = getelementptr inbounds %struct.udf_uiodir, %struct.udf_uiodir* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  store i32 -1, i32* %5, align 4
  br label %49

42:                                               ; preds = %33
  %43 = load %struct.udf_uiodir*, %struct.udf_uiodir** %6, align 8
  %44 = getelementptr inbounds %struct.udf_uiodir, %struct.udf_uiodir* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.uio*, %struct.uio** %8, align 8
  %48 = call i32 @uiomove(i32 %45, i32 %46, %struct.uio* %47)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %42, %39, %23
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @uiomove(i32, i32, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
