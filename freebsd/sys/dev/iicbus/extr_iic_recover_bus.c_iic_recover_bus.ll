; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iic_recover_bus.c_iic_recover_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iic_recover_bus.c_iic_recover_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iicrb_pin_access = type { i32, i32 (i32, i32)*, i32 (i32, i32)*, i64 (i32)*, i64 (i32)* }

@IIC_EBUSERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iic_recover_bus(%struct.iicrb_pin_access* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iicrb_pin_access*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iicrb_pin_access* %0, %struct.iicrb_pin_access** %3, align 8
  store i32 40000, i32* %4, align 4
  store i32 500, i32* %5, align 4
  %7 = load %struct.iicrb_pin_access*, %struct.iicrb_pin_access** %3, align 8
  %8 = getelementptr inbounds %struct.iicrb_pin_access, %struct.iicrb_pin_access* %7, i32 0, i32 1
  %9 = load i32 (i32, i32)*, i32 (i32, i32)** %8, align 8
  %10 = load %struct.iicrb_pin_access*, %struct.iicrb_pin_access** %3, align 8
  %11 = getelementptr inbounds %struct.iicrb_pin_access, %struct.iicrb_pin_access* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 %9(i32 %12, i32 1)
  %14 = load %struct.iicrb_pin_access*, %struct.iicrb_pin_access** %3, align 8
  %15 = getelementptr inbounds %struct.iicrb_pin_access, %struct.iicrb_pin_access* %14, i32 0, i32 2
  %16 = load i32 (i32, i32)*, i32 (i32, i32)** %15, align 8
  %17 = load %struct.iicrb_pin_access*, %struct.iicrb_pin_access** %3, align 8
  %18 = getelementptr inbounds %struct.iicrb_pin_access, %struct.iicrb_pin_access* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 %16(i32 %19, i32 1)
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %36, %1
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 40000
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load %struct.iicrb_pin_access*, %struct.iicrb_pin_access** %3, align 8
  %26 = getelementptr inbounds %struct.iicrb_pin_access, %struct.iicrb_pin_access* %25, i32 0, i32 4
  %27 = load i64 (i32)*, i64 (i32)** %26, align 8
  %28 = load %struct.iicrb_pin_access*, %struct.iicrb_pin_access** %3, align 8
  %29 = getelementptr inbounds %struct.iicrb_pin_access, %struct.iicrb_pin_access* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 %27(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %39

34:                                               ; preds = %24
  %35 = call i32 @DELAY(i32 500)
  br label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 500
  store i32 %38, i32* %6, align 4
  br label %21

39:                                               ; preds = %33, %21
  %40 = load i32, i32* %6, align 4
  %41 = icmp sge i32 %40, 40000
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @IIC_EBUSERR, align 4
  store i32 %43, i32* %2, align 4
  br label %97

44:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %77, %44
  %46 = load %struct.iicrb_pin_access*, %struct.iicrb_pin_access** %3, align 8
  %47 = getelementptr inbounds %struct.iicrb_pin_access, %struct.iicrb_pin_access* %46, i32 0, i32 3
  %48 = load i64 (i32)*, i64 (i32)** %47, align 8
  %49 = load %struct.iicrb_pin_access*, %struct.iicrb_pin_access** %3, align 8
  %50 = getelementptr inbounds %struct.iicrb_pin_access, %struct.iicrb_pin_access* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 %48(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %80

55:                                               ; preds = %45
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, 9
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @IIC_EBUSERR, align 4
  store i32 %59, i32* %2, align 4
  br label %97

60:                                               ; preds = %55
  %61 = load %struct.iicrb_pin_access*, %struct.iicrb_pin_access** %3, align 8
  %62 = getelementptr inbounds %struct.iicrb_pin_access, %struct.iicrb_pin_access* %61, i32 0, i32 2
  %63 = load i32 (i32, i32)*, i32 (i32, i32)** %62, align 8
  %64 = load %struct.iicrb_pin_access*, %struct.iicrb_pin_access** %3, align 8
  %65 = getelementptr inbounds %struct.iicrb_pin_access, %struct.iicrb_pin_access* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 %63(i32 %66, i32 0)
  %68 = call i32 @DELAY(i32 5)
  %69 = load %struct.iicrb_pin_access*, %struct.iicrb_pin_access** %3, align 8
  %70 = getelementptr inbounds %struct.iicrb_pin_access, %struct.iicrb_pin_access* %69, i32 0, i32 2
  %71 = load i32 (i32, i32)*, i32 (i32, i32)** %70, align 8
  %72 = load %struct.iicrb_pin_access*, %struct.iicrb_pin_access** %3, align 8
  %73 = getelementptr inbounds %struct.iicrb_pin_access, %struct.iicrb_pin_access* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 %71(i32 %74, i32 1)
  %76 = call i32 @DELAY(i32 5)
  br label %77

77:                                               ; preds = %60
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %45

80:                                               ; preds = %54
  %81 = load %struct.iicrb_pin_access*, %struct.iicrb_pin_access** %3, align 8
  %82 = getelementptr inbounds %struct.iicrb_pin_access, %struct.iicrb_pin_access* %81, i32 0, i32 1
  %83 = load i32 (i32, i32)*, i32 (i32, i32)** %82, align 8
  %84 = load %struct.iicrb_pin_access*, %struct.iicrb_pin_access** %3, align 8
  %85 = getelementptr inbounds %struct.iicrb_pin_access, %struct.iicrb_pin_access* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 %83(i32 %86, i32 0)
  %88 = call i32 @DELAY(i32 5)
  %89 = load %struct.iicrb_pin_access*, %struct.iicrb_pin_access** %3, align 8
  %90 = getelementptr inbounds %struct.iicrb_pin_access, %struct.iicrb_pin_access* %89, i32 0, i32 1
  %91 = load i32 (i32, i32)*, i32 (i32, i32)** %90, align 8
  %92 = load %struct.iicrb_pin_access*, %struct.iicrb_pin_access** %3, align 8
  %93 = getelementptr inbounds %struct.iicrb_pin_access, %struct.iicrb_pin_access* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 %91(i32 %94, i32 1)
  %96 = call i32 @DELAY(i32 5)
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %80, %58, %42
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
