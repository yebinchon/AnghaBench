; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iic.c_iicuio_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iic.c_iicuio_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_cdevpriv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.uio = type { i32, i64 }

@UIO_WRITE = common dso_local global i64 0, align 8
@UIO_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iic_cdevpriv*, %struct.uio*, i32)* @iicuio_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iicuio_move(%struct.iic_cdevpriv* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca %struct.iic_cdevpriv*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [128 x i8], align 16
  store %struct.iic_cdevpriv* %0, %struct.iic_cdevpriv** %4, align 8
  store %struct.uio* %1, %struct.uio** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %4, align 8
  %14 = getelementptr inbounds %struct.iic_cdevpriv, %struct.iic_cdevpriv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @device_get_parent(i32 %17)
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %96, %3
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.uio*, %struct.uio** %5, align 8
  %24 = getelementptr inbounds %struct.uio, %struct.uio* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 0
  br label %27

27:                                               ; preds = %22, %19
  %28 = phi i1 [ false, %19 ], [ %26, %22 ]
  br i1 %28, label %29, label %97

29:                                               ; preds = %27
  %30 = load %struct.uio*, %struct.uio** %5, align 8
  %31 = getelementptr inbounds %struct.uio, %struct.uio* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @MIN(i32 %32, i32 128)
  store i32 %33, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %34 = load %struct.uio*, %struct.uio** %5, align 8
  %35 = getelementptr inbounds %struct.uio, %struct.uio* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @UIO_WRITE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %29
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.uio*, %struct.uio** %5, align 8
  %43 = call i32 @uiomove(i8* %40, i32 %41, %struct.uio* %42)
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %53, %39
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %48, %49
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi i1 [ false, %44 ], [ %50, %47 ]
  br i1 %52, label %53, label %65

53:                                               ; preds = %51
  store i32 0, i32* %11, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 %56
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = sub nsw i32 %58, %59
  %61 = call i32 @iicbus_write(i32 %54, i8* %57, i32 %60, i32* %11, i32 0)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %10, align 4
  br label %44

65:                                               ; preds = %51
  br label %96

66:                                               ; preds = %29
  %67 = load %struct.uio*, %struct.uio** %5, align 8
  %68 = getelementptr inbounds %struct.uio, %struct.uio* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @UIO_READ, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %95

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  %74 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.uio*, %struct.uio** %5, align 8
  %77 = getelementptr inbounds %struct.uio, %struct.uio* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = icmp ule i64 %79, 128
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = load i32, i32* %6, align 4
  br label %84

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %81
  %85 = phi i32 [ %82, %81 ], [ 0, %83 ]
  %86 = call i32 @iicbus_read(i32 %73, i8* %74, i32 %75, i32* %10, i32 %85, i32 0)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.uio*, %struct.uio** %5, align 8
  %93 = call i32 @uiomove(i8* %90, i32 %91, %struct.uio* %92)
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %89, %84
  br label %95

95:                                               ; preds = %94, %66
  br label %96

96:                                               ; preds = %95, %65
  br label %19

97:                                               ; preds = %27
  %98 = load i32, i32* %8, align 4
  ret i32 %98
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @uiomove(i8*, i32, %struct.uio*) #1

declare dso_local i32 @iicbus_write(i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @iicbus_read(i32, i8*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
