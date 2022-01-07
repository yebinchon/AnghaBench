; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_lpt.c_lptread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_lpt.c_lptread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.lpt_data* }
%struct.lpt_data = type { i32, i32, i32 }
%struct.uio = type { i64 }

@LP_BYPASS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@PPB_NIBBLE = common dso_local global i32 0, align 4
@BUFSTATSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @lptread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lptread(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpt_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.cdev*, %struct.cdev** %5, align 8
  %14 = getelementptr inbounds %struct.cdev, %struct.cdev* %13, i32 0, i32 0
  %15 = load %struct.lpt_data*, %struct.lpt_data** %14, align 8
  store %struct.lpt_data* %15, %struct.lpt_data** %8, align 8
  %16 = load %struct.lpt_data*, %struct.lpt_data** %8, align 8
  %17 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @device_get_parent(i32 %19)
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load %struct.lpt_data*, %struct.lpt_data** %8, align 8
  %22 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @LP_BYPASS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @EPERM, align 4
  store i32 %28, i32* %4, align 4
  br label %86

29:                                               ; preds = %3
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @ppb_lock(i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @PPB_NIBBLE, align 4
  %34 = call i32 @ppb_1284_negociate(i32 %32, i32 %33, i32 0)
  store i32 %34, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @ppb_unlock(i32 %37)
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %4, align 4
  br label %86

40:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %78, %40
  %42 = load %struct.uio*, %struct.uio** %6, align 8
  %43 = getelementptr inbounds %struct.uio, %struct.uio* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %79

46:                                               ; preds = %41
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @PPB_NIBBLE, align 4
  %49 = load %struct.lpt_data*, %struct.lpt_data** %8, align 8
  %50 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @BUFSTATSIZE, align 4
  %53 = load %struct.uio*, %struct.uio** %6, align 8
  %54 = getelementptr inbounds %struct.uio, %struct.uio* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @min(i32 %52, i64 %55)
  %57 = call i32 @ppb_1284_read(i32 %47, i32 %48, i32 %51, i32 %56, i32* %12)
  store i32 %57, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %80

60:                                               ; preds = %46
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  br label %80

64:                                               ; preds = %60
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @ppb_unlock(i32 %65)
  %67 = load %struct.lpt_data*, %struct.lpt_data** %8, align 8
  %68 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.uio*, %struct.uio** %6, align 8
  %72 = call i32 @uiomove(i32 %69, i32 %70, %struct.uio* %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @ppb_lock(i32 %73)
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  br label %80

78:                                               ; preds = %64
  br label %41

79:                                               ; preds = %41
  br label %80

80:                                               ; preds = %79, %77, %63, %59
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @ppb_1284_terminate(i32 %81)
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @ppb_unlock(i32 %83)
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %80, %36, %27
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ppb_lock(i32) #1

declare dso_local i32 @ppb_1284_negociate(i32, i32, i32) #1

declare dso_local i32 @ppb_unlock(i32) #1

declare dso_local i32 @ppb_1284_read(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @uiomove(i32, i32, %struct.uio*) #1

declare dso_local i32 @ppb_1284_terminate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
