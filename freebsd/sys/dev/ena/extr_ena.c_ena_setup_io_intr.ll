; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_setup_io_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_setup_io_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ena_setup_io_intr.last_bind_cpu = internal global i32 -1, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENA_IRQNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s-TxRx-%d\00", align 1
@ena_handle_msix = common dso_local global i32 0, align 4
@ENA_INFO = common dso_local global i32 0, align 4
@ENA_IOQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ena_setup_io_intr vector: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*)* @ena_setup_io_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_setup_io_intr(%struct.ena_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %3, align 8
  %6 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %6, i32 0, i32 3
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp eq %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  store i32 %11, i32* %2, align 4
  br label %114

12:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %110, %12
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %113

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @ENA_IO_IRQ_IDX(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ENA_IRQNAME_SIZE, align 4
  %31 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @device_get_nameunit(i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @snprintf(i32 %29, i32 %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %35)
  %37 = load i32, i32* @ena_handle_msix, align 4
  %38 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  store i32 %37, i32* %44, align 8
  %45 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %45, i32 0, i32 2
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %57, align 8
  %58 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %58, i32 0, i32 3
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  store i32 %65, i32* %72, align 4
  %73 = load i32, i32* @ENA_INFO, align 4
  %74 = load i32, i32* @ENA_IOQ, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %76, i32 0, i32 3
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ena_trace(i32 %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @ena_setup_io_intr.last_bind_cpu, align 4
  %86 = icmp slt i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %19
  %91 = call i32 (...) @CPU_FIRST()
  store i32 %91, i32* @ena_setup_io_intr.last_bind_cpu, align 4
  br label %92

92:                                               ; preds = %90, %19
  %93 = load i32, i32* @ena_setup_io_intr.last_bind_cpu, align 4
  %94 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %95 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store i32 %93, i32* %100, align 8
  %101 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %102 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %101, i32 0, i32 2
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  store i32 %93, i32* %107, align 4
  %108 = load i32, i32* @ena_setup_io_intr.last_bind_cpu, align 4
  %109 = call i32 @CPU_NEXT(i32 %108)
  store i32 %109, i32* @ena_setup_io_intr.last_bind_cpu, align 4
  br label %110

110:                                              ; preds = %92
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %13

113:                                              ; preds = %13
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %113, %10
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @ENA_IO_IRQ_IDX(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @ena_trace(i32, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @CPU_FIRST(...) #1

declare dso_local i32 @CPU_NEXT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
