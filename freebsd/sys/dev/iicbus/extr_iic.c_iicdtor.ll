; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iic.c_iicdtor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iic.c_iicdtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_cdevpriv = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"iic cdevpriv should not be NULL!\00", align 1
@IIC_UNKNOWN = common dso_local global i32 0, align 4
@M_IIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @iicdtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iicdtor(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.iic_cdevpriv*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.iic_cdevpriv*
  store %struct.iic_cdevpriv* %7, %struct.iic_cdevpriv** %5, align 8
  %8 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %5, align 8
  %9 = icmp ne %struct.iic_cdevpriv* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %5, align 8
  %13 = getelementptr inbounds %struct.iic_cdevpriv, %struct.iic_cdevpriv* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_get_parent(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %5, align 8
  %20 = getelementptr inbounds %struct.iic_cdevpriv, %struct.iic_cdevpriv* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @iicbus_stop(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @IIC_UNKNOWN, align 4
  %28 = call i32 @iicbus_reset(i32 %26, i32 %27, i32 0, i32* null)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @iicbus_release_bus(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %23, %1
  %33 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %5, align 8
  %34 = getelementptr inbounds %struct.iic_cdevpriv, %struct.iic_cdevpriv* %33, i32 0, i32 0
  %35 = call i32 @sx_destroy(i32* %34)
  %36 = load %struct.iic_cdevpriv*, %struct.iic_cdevpriv** %5, align 8
  %37 = load i32, i32* @M_IIC, align 4
  %38 = call i32 @free(%struct.iic_cdevpriv* %36, i32 %37)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @iicbus_stop(i32) #1

declare dso_local i32 @iicbus_reset(i32, i32, i32, i32*) #1

declare dso_local i32 @iicbus_release_bus(i32, i32) #1

declare dso_local i32 @sx_destroy(i32*) #1

declare dso_local i32 @free(%struct.iic_cdevpriv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
