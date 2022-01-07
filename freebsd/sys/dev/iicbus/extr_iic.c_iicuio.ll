; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iic.c_iicuio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iic.c_iicuio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i64 }
%struct.iic_cdevpriv = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"iic cdevpriv should not be NULL!\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@IIC_DONTWAIT = common dso_local global i32 0, align 4
@IIC_WAIT = common dso_local global i32 0, align 4
@IIC_INTR = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i64 0, align 8
@LSB = common dso_local global i32 0, align 4
@IIC_LAST_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @iicuio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iicuio(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iic_cdevpriv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.iic_cdevpriv* null, %struct.iic_cdevpriv** %9, align 8
  %12 = bitcast %struct.iic_cdevpriv** %9 to i8**
  %13 = call i32 @devfs_get_cdevpriv(i8** %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %4, align 4
  br label %123

18:                                               ; preds = %3
  %19 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %9, align 8
  %20 = icmp ne %struct.iic_cdevpriv* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %9, align 8
  %24 = call i32 @IIC_LOCK(%struct.iic_cdevpriv* %23)
  %25 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %9, align 8
  %26 = getelementptr inbounds %struct.iic_cdevpriv, %struct.iic_cdevpriv* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %18
  %30 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %9, align 8
  %31 = getelementptr inbounds %struct.iic_cdevpriv, %struct.iic_cdevpriv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29, %18
  %35 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %9, align 8
  %36 = call i32 @IIC_UNLOCK(%struct.iic_cdevpriv* %35)
  %37 = load i32, i32* @ENXIO, align 4
  store i32 %37, i32* %4, align 4
  br label %123

38:                                               ; preds = %29
  %39 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %9, align 8
  %40 = getelementptr inbounds %struct.iic_cdevpriv, %struct.iic_cdevpriv* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @device_get_parent(i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %9, align 8
  %47 = getelementptr inbounds %struct.iic_cdevpriv, %struct.iic_cdevpriv* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @O_NONBLOCK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %38
  %56 = load i32, i32* @IIC_DONTWAIT, align 4
  br label %61

57:                                               ; preds = %38
  %58 = load i32, i32* @IIC_WAIT, align 4
  %59 = load i32, i32* @IIC_INTR, align 4
  %60 = or i32 %58, %59
  br label %61

61:                                               ; preds = %57, %55
  %62 = phi i32 [ %56, %55 ], [ %60, %57 ]
  %63 = call i32 @iicbus_request_bus(i32 %45, i32 %50, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %9, align 8
  %68 = call i32 @IIC_UNLOCK(%struct.iic_cdevpriv* %67)
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %4, align 4
  br label %123

70:                                               ; preds = %61
  %71 = load %struct.uio*, %struct.uio** %6, align 8
  %72 = getelementptr inbounds %struct.uio, %struct.uio* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @UIO_READ, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %9, align 8
  %78 = getelementptr inbounds %struct.iic_cdevpriv, %struct.iic_cdevpriv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @LSB, align 4
  %81 = or i32 %79, %80
  store i32 %81, i32* %11, align 4
  br label %89

82:                                               ; preds = %70
  %83 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %9, align 8
  %84 = getelementptr inbounds %struct.iic_cdevpriv, %struct.iic_cdevpriv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @LSB, align 4
  %87 = xor i32 %86, -1
  %88 = and i32 %85, %87
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %82, %76
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @iicbus_start(i32 %90, i32 %91, i32 0)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %89
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %9, align 8
  %98 = getelementptr inbounds %struct.iic_cdevpriv, %struct.iic_cdevpriv* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @iicbus_release_bus(i32 %96, i32 %101)
  %103 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %9, align 8
  %104 = call i32 @IIC_UNLOCK(%struct.iic_cdevpriv* %103)
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %4, align 4
  br label %123

106:                                              ; preds = %89
  %107 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %9, align 8
  %108 = load %struct.uio*, %struct.uio** %6, align 8
  %109 = load i32, i32* @IIC_LAST_READ, align 4
  %110 = call i32 @iicuio_move(%struct.iic_cdevpriv* %107, %struct.uio* %108, i32 %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @iicbus_stop(i32 %111)
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %9, align 8
  %115 = getelementptr inbounds %struct.iic_cdevpriv, %struct.iic_cdevpriv* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @iicbus_release_bus(i32 %113, i32 %118)
  %120 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %9, align 8
  %121 = call i32 @IIC_UNLOCK(%struct.iic_cdevpriv* %120)
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %106, %95, %66, %34, %16
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @IIC_LOCK(%struct.iic_cdevpriv*) #1

declare dso_local i32 @IIC_UNLOCK(%struct.iic_cdevpriv*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @iicbus_request_bus(i32, i32, i32) #1

declare dso_local i32 @iicbus_start(i32, i32, i32) #1

declare dso_local i32 @iicbus_release_bus(i32, i32) #1

declare dso_local i32 @iicuio_move(%struct.iic_cdevpriv*, %struct.uio*, i32) #1

declare dso_local i32 @iicbus_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
