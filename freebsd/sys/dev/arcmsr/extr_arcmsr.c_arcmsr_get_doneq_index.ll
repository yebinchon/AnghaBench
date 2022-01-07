; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_get_doneq_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_get_doneq_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HBD_MessageUnit0 = type { i32 }

@ARCMSR_MAX_HBD_POSTQUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.HBD_MessageUnit0*)* @arcmsr_get_doneq_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcmsr_get_doneq_index(%struct.HBD_MessageUnit0* %0) #0 {
  %2 = alloca %struct.HBD_MessageUnit0*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.HBD_MessageUnit0* %0, %struct.HBD_MessageUnit0** %2, align 8
  %5 = load %struct.HBD_MessageUnit0*, %struct.HBD_MessageUnit0** %2, align 8
  %6 = getelementptr inbounds %struct.HBD_MessageUnit0, %struct.HBD_MessageUnit0* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, 16384
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 255
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @ARCMSR_MAX_HBD_POSTQUEUE, align 4
  %17 = load i32, i32* %4, align 4
  %18 = srem i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, 16384
  br label %26

24:                                               ; preds = %11
  %25 = load i32, i32* %4, align 4
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi i32 [ %23, %21 ], [ %25, %24 ]
  %28 = load %struct.HBD_MessageUnit0*, %struct.HBD_MessageUnit0** %2, align 8
  %29 = getelementptr inbounds %struct.HBD_MessageUnit0, %struct.HBD_MessageUnit0* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %48

30:                                               ; preds = %1
  %31 = load i32, i32* %3, align 4
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @ARCMSR_MAX_HBD_POSTQUEUE, align 4
  %35 = load i32, i32* %4, align 4
  %36 = srem i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %4, align 4
  br label %44

41:                                               ; preds = %30
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, 16384
  br label %44

44:                                               ; preds = %41, %39
  %45 = phi i32 [ %40, %39 ], [ %43, %41 ]
  %46 = load %struct.HBD_MessageUnit0*, %struct.HBD_MessageUnit0** %2, align 8
  %47 = getelementptr inbounds %struct.HBD_MessageUnit0, %struct.HBD_MessageUnit0* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %26
  %49 = load %struct.HBD_MessageUnit0*, %struct.HBD_MessageUnit0** %2, align 8
  %50 = getelementptr inbounds %struct.HBD_MessageUnit0, %struct.HBD_MessageUnit0* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
