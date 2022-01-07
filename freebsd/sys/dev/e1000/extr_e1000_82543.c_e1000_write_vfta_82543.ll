; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82543.c_e1000_write_vfta_82543.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82543.c_e1000_write_vfta_82543.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"e1000_write_vfta_82543\00", align 1
@e1000_82544 = common dso_local global i64 0, align 8
@E1000_VFTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*, i32, i32)* @e1000_write_vfta_82543 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_write_vfta_82543(%struct.e1000_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @e1000_82544, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %21 = load i32, i32* @E1000_VFTA, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 %22, 1
  %24 = call i32 @E1000_READ_REG_ARRAY(%struct.e1000_hw* %20, i32 %21, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %26 = load i32, i32* @E1000_VFTA, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %31 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %30)
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %33 = load i32, i32* @E1000_VFTA, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %32, i32 %33, i32 %35, i32 %36)
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %39 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %38)
  br label %45

40:                                               ; preds = %15, %3
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @e1000_write_vfta_generic(%struct.e1000_hw* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %19
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG_ARRAY(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw*, i32, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_write_vfta_generic(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
