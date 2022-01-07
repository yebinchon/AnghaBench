; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_mem.c_memmmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_mem.c_memmmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.cdev = type { i32 }

@CDEV_MINOR_MEM = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@mem_range_softc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MDF_ACTIVE = common dso_local global i32 0, align 4
@MDF_ATTRMASK = common dso_local global i32 0, align 4
@VM_MEMATTR_WRITE_BACK = common dso_local global i32 0, align 4
@VM_MEMATTR_WRITE_COMBINING = common dso_local global i32 0, align 4
@VM_MEMATTR_UNCACHEABLE = common dso_local global i32 0, align 4
@VM_MEMATTR_WRITE_THROUGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memmmap(%struct.cdev* %0, i64 %1, i64* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.cdev*, %struct.cdev** %7, align 8
  %14 = call i64 @dev2unit(%struct.cdev* %13)
  %15 = load i64, i64* @CDEV_MINOR_MEM, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i64, i64* %8, align 8
  %19 = load i64*, i64** %9, align 8
  store i64 %18, i64* %19, align 8
  br label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @EFAULT, align 4
  store i32 %21, i32* %6, align 4
  br label %90

22:                                               ; preds = %17
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %86, %22
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mem_range_softc, i32 0, i32 0), align 8
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %89

27:                                               ; preds = %23
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mem_range_softc, i32 0, i32 1), align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MDF_ACTIVE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  br label %86

38:                                               ; preds = %27
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mem_range_softc, i32 0, i32 1), align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %39, %45
  br i1 %46, label %47, label %85

47:                                               ; preds = %38
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mem_range_softc, i32 0, i32 1), align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mem_range_softc, i32 0, i32 1), align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %54, %60
  %62 = icmp slt i64 %48, %61
  br i1 %62, label %63, label %85

63:                                               ; preds = %47
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mem_range_softc, i32 0, i32 1), align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @MDF_ATTRMASK, align 4
  %71 = and i32 %69, %70
  switch i32 %71, label %84 [
    i32 130, label %72
    i32 129, label %75
    i32 131, label %78
    i32 128, label %81
  ]

72:                                               ; preds = %63
  %73 = load i32, i32* @VM_MEMATTR_WRITE_BACK, align 4
  %74 = load i32*, i32** %11, align 8
  store i32 %73, i32* %74, align 4
  br label %84

75:                                               ; preds = %63
  %76 = load i32, i32* @VM_MEMATTR_WRITE_COMBINING, align 4
  %77 = load i32*, i32** %11, align 8
  store i32 %76, i32* %77, align 4
  br label %84

78:                                               ; preds = %63
  %79 = load i32, i32* @VM_MEMATTR_UNCACHEABLE, align 4
  %80 = load i32*, i32** %11, align 8
  store i32 %79, i32* %80, align 4
  br label %84

81:                                               ; preds = %63
  %82 = load i32, i32* @VM_MEMATTR_WRITE_THROUGH, align 4
  %83 = load i32*, i32** %11, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %63, %81, %78, %75, %72
  br label %89

85:                                               ; preds = %47, %38
  br label %86

86:                                               ; preds = %85, %37
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %23

89:                                               ; preds = %84, %23
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %89, %20
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i64 @dev2unit(%struct.cdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
