; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ichiic/extr_ig4_iic.c_ig4iic_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ichiic/extr_ig4_iic.c_ig4iic_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@IIC_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ig4iic_reset(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.TYPE_4__* @device_get_softc(i32 %11)
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %9, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = call i64 @sx_xlocked(i32* %14)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = call i32 @sx_xlock(i32* %22)
  br label %24

24:                                               ; preds = %20, %4
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 1
  %32 = load i32*, i32** %8, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %27, %24
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = load i32, i32* %7, align 4
  %36 = ashr i32 %35, 1
  %37 = call i32 @set_slave_addr(%struct.TYPE_4__* %34, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @IIC_UNKNOWN, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %33
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = call i32 @sx_unlock(i32* %49)
  br label %51

51:                                               ; preds = %47, %44
  ret i32 0
}

declare dso_local %struct.TYPE_4__* @device_get_softc(i32) #1

declare dso_local i64 @sx_xlocked(i32*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @set_slave_addr(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @sx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
