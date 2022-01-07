; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_resource.c_acpi_lookup_irq_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_resource.c_acpi_lookup_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32*, i32, i32 }
%struct.lookup_irq_request = type { i64, i64, i32, i32, i32, i32, i32*, i64 }

@ACPI_RESOURCE_IRQ = common dso_local global i32 0, align 4
@ACPI_RESOURCE_EXTENDED_IRQ = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"IRQ resources do not match\00", align 1
@AE_CTRL_TERMINATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*)* @acpi_lookup_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_lookup_irq_handler(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lookup_irq_request*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %65 [
    i32 128, label %15
    i32 129, label %40
  ]

15:                                               ; preds = %2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* @ACPI_RESOURCE_IRQ, align 4
  %29 = call i64 @ACPI_RS_SIZE(i32 %28)
  store i64 %29, i64* %7, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %10, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  br label %67

40:                                               ; preds = %2
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %8, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* @ACPI_RESOURCE_EXTENDED_IRQ, align 4
  %54 = call i64 @ACPI_RS_SIZE(i32 %53)
  store i64 %54, i64* %7, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %10, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %11, align 4
  br label %67

65:                                               ; preds = %2
  %66 = load i32, i32* @AE_OK, align 4
  store i32 %66, i32* %3, align 4
  br label %132

67:                                               ; preds = %40, %15
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 1
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* @AE_OK, align 4
  store i32 %71, i32* %3, align 4
  br label %132

72:                                               ; preds = %67
  %73 = load i8*, i8** %5, align 8
  %74 = bitcast i8* %73 to %struct.lookup_irq_request*
  store %struct.lookup_irq_request* %74, %struct.lookup_irq_request** %6, align 8
  %75 = load %struct.lookup_irq_request*, %struct.lookup_irq_request** %6, align 8
  %76 = getelementptr inbounds %struct.lookup_irq_request, %struct.lookup_irq_request* %75, i32 0, i32 7
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %72
  %80 = load %struct.lookup_irq_request*, %struct.lookup_irq_request** %6, align 8
  %81 = getelementptr inbounds %struct.lookup_irq_request, %struct.lookup_irq_request* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.lookup_irq_request*, %struct.lookup_irq_request** %6, align 8
  %84 = getelementptr inbounds %struct.lookup_irq_request, %struct.lookup_irq_request* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %82, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %79
  %88 = load %struct.lookup_irq_request*, %struct.lookup_irq_request** %6, align 8
  %89 = getelementptr inbounds %struct.lookup_irq_request, %struct.lookup_irq_request* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %89, align 8
  %92 = load i32, i32* @AE_OK, align 4
  store i32 %92, i32* %3, align 4
  br label %132

93:                                               ; preds = %79
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.lookup_irq_request*, %struct.lookup_irq_request** %6, align 8
  %96 = getelementptr inbounds %struct.lookup_irq_request, %struct.lookup_irq_request* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %94, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @KASSERT(i32 %99, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %110

101:                                              ; preds = %72
  %102 = load %struct.lookup_irq_request*, %struct.lookup_irq_request** %6, align 8
  %103 = getelementptr inbounds %struct.lookup_irq_request, %struct.lookup_irq_request* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @AE_OK, align 4
  store i32 %108, i32* %3, align 4
  br label %132

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %93
  %111 = load %struct.lookup_irq_request*, %struct.lookup_irq_request** %6, align 8
  %112 = getelementptr inbounds %struct.lookup_irq_request, %struct.lookup_irq_request* %111, i32 0, i32 3
  store i32 1, i32* %112, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.lookup_irq_request*, %struct.lookup_irq_request** %6, align 8
  %115 = getelementptr inbounds %struct.lookup_irq_request, %struct.lookup_irq_request* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.lookup_irq_request*, %struct.lookup_irq_request** %6, align 8
  %118 = getelementptr inbounds %struct.lookup_irq_request, %struct.lookup_irq_request* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 4
  %119 = load %struct.lookup_irq_request*, %struct.lookup_irq_request** %6, align 8
  %120 = getelementptr inbounds %struct.lookup_irq_request, %struct.lookup_irq_request* %119, i32 0, i32 6
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %130

123:                                              ; preds = %110
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %125 = load %struct.lookup_irq_request*, %struct.lookup_irq_request** %6, align 8
  %126 = getelementptr inbounds %struct.lookup_irq_request, %struct.lookup_irq_request* %125, i32 0, i32 6
  %127 = load i32*, i32** %126, align 8
  %128 = load i64, i64* %7, align 8
  %129 = call i32 @bcopy(%struct.TYPE_10__* %124, i32* %127, i64 %128)
  br label %130

130:                                              ; preds = %123, %110
  %131 = load i32, i32* @AE_CTRL_TERMINATE, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %130, %107, %87, %70, %65
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i64 @ACPI_RS_SIZE(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bcopy(%struct.TYPE_10__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
