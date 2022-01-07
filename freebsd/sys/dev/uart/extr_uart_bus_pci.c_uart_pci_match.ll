; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_bus_pci.c_uart_pci_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_bus_pci.c_uart_pci_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_id = type { i32, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_id* (i32, %struct.pci_id*)* @uart_pci_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_id* @uart_pci_match(i32 %0, %struct.pci_id* %1) #0 {
  %3 = alloca %struct.pci_id*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_id*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.pci_id* %1, %struct.pci_id** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @pci_get_vendor(i32 %10)
  store i64 %11, i64* %9, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @pci_get_device(i32 %12)
  store i64 %13, i64* %6, align 8
  br label %14

14:                                               ; preds = %36, %2
  %15 = load %struct.pci_id*, %struct.pci_id** %5, align 8
  %16 = getelementptr inbounds %struct.pci_id, %struct.pci_id* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 65535
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load %struct.pci_id*, %struct.pci_id** %5, align 8
  %21 = getelementptr inbounds %struct.pci_id, %struct.pci_id* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %9, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = load %struct.pci_id*, %struct.pci_id** %5, align 8
  %28 = getelementptr inbounds %struct.pci_id, %struct.pci_id* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %29, %30
  br label %32

32:                                               ; preds = %26, %19
  %33 = phi i1 [ true, %19 ], [ %31, %26 ]
  br label %34

34:                                               ; preds = %32, %14
  %35 = phi i1 [ false, %14 ], [ %33, %32 ]
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = load %struct.pci_id*, %struct.pci_id** %5, align 8
  %38 = getelementptr inbounds %struct.pci_id, %struct.pci_id* %37, i32 1
  store %struct.pci_id* %38, %struct.pci_id** %5, align 8
  br label %14

39:                                               ; preds = %34
  %40 = load %struct.pci_id*, %struct.pci_id** %5, align 8
  %41 = getelementptr inbounds %struct.pci_id, %struct.pci_id* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 65535
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store %struct.pci_id* null, %struct.pci_id** %3, align 8
  br label %108

45:                                               ; preds = %39
  %46 = load %struct.pci_id*, %struct.pci_id** %5, align 8
  %47 = getelementptr inbounds %struct.pci_id, %struct.pci_id* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 65535
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load %struct.pci_id*, %struct.pci_id** %5, align 8
  store %struct.pci_id* %51, %struct.pci_id** %3, align 8
  br label %108

52:                                               ; preds = %45
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @pci_get_subvendor(i32 %53)
  store i64 %54, i64* %8, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @pci_get_subdevice(i32 %55)
  store i64 %56, i64* %7, align 8
  br label %57

57:                                               ; preds = %87, %52
  %58 = load %struct.pci_id*, %struct.pci_id** %5, align 8
  %59 = getelementptr inbounds %struct.pci_id, %struct.pci_id* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %9, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %85

64:                                               ; preds = %57
  %65 = load %struct.pci_id*, %struct.pci_id** %5, align 8
  %66 = getelementptr inbounds %struct.pci_id, %struct.pci_id* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %64
  %71 = load %struct.pci_id*, %struct.pci_id** %5, align 8
  %72 = getelementptr inbounds %struct.pci_id, %struct.pci_id* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %8, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %70
  %78 = load %struct.pci_id*, %struct.pci_id** %5, align 8
  %79 = getelementptr inbounds %struct.pci_id, %struct.pci_id* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = icmp ne i64 %80, %81
  br label %83

83:                                               ; preds = %77, %70
  %84 = phi i1 [ true, %70 ], [ %82, %77 ]
  br label %85

85:                                               ; preds = %83, %64, %57
  %86 = phi i1 [ false, %64 ], [ false, %57 ], [ %84, %83 ]
  br i1 %86, label %87, label %90

87:                                               ; preds = %85
  %88 = load %struct.pci_id*, %struct.pci_id** %5, align 8
  %89 = getelementptr inbounds %struct.pci_id, %struct.pci_id* %88, i32 1
  store %struct.pci_id* %89, %struct.pci_id** %5, align 8
  br label %57

90:                                               ; preds = %85
  %91 = load %struct.pci_id*, %struct.pci_id** %5, align 8
  %92 = getelementptr inbounds %struct.pci_id, %struct.pci_id* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %9, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %90
  %98 = load %struct.pci_id*, %struct.pci_id** %5, align 8
  %99 = getelementptr inbounds %struct.pci_id, %struct.pci_id* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %6, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load %struct.pci_id*, %struct.pci_id** %5, align 8
  br label %106

105:                                              ; preds = %97, %90
  br label %106

106:                                              ; preds = %105, %103
  %107 = phi %struct.pci_id* [ %104, %103 ], [ null, %105 ]
  store %struct.pci_id* %107, %struct.pci_id** %3, align 8
  br label %108

108:                                              ; preds = %106, %50, %44
  %109 = load %struct.pci_id*, %struct.pci_id** %3, align 8
  ret %struct.pci_id* %109
}

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i64 @pci_get_subvendor(i32) #1

declare dso_local i64 @pci_get_subdevice(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
