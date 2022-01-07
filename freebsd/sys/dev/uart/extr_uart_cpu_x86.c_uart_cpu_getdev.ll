; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_cpu_x86.c_uart_cpu_getdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_cpu_x86.c_uart_cpu_getdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_class = type { i32 }
%struct.uart_devinfo = type { i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i64 }

@uart_ns8250_class = common dso_local global %struct.uart_class zeroinitializer, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@UART_DEV_CONSOLE = common dso_local global i32 0, align 4
@UART_DEV_DBGPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@uart_bus_space_io = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"baud\00", align 1
@UART_PARITY_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_cpu_getdev(i32 %0, %struct.uart_devinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_devinfo*, align 8
  %6 = alloca %struct.uart_class*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.uart_devinfo* %1, %struct.uart_devinfo** %5, align 8
  store %struct.uart_class* @uart_ns8250_class, %struct.uart_class** %6, align 8
  %9 = load %struct.uart_class*, %struct.uart_class** %6, align 8
  %10 = icmp eq %struct.uart_class* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %3, align 4
  br label %115

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %16 = load %struct.uart_class*, %struct.uart_class** %6, align 8
  %17 = call i64 @uart_getenv(i32 %14, %struct.uart_devinfo* %15, %struct.uart_class* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %115

20:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %110, %20
  %22 = load i32, i32* %7, align 4
  %23 = icmp ult i32 %22, 4
  br i1 %23, label %24, label %113

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @resource_int_value(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %110

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @UART_DEV_CONSOLE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @UART_FLAGS_CONSOLE(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %110

38:                                               ; preds = %33, %29
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @UART_DEV_DBGPORT, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @UART_FLAGS_DBGPORT(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  br label %110

47:                                               ; preds = %42, %38
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @resource_int_value(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %8)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %110

55:                                               ; preds = %51, %47
  %56 = load i32, i32* %7, align 4
  %57 = call i64 @resource_int_value(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %8)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %55
  br label %110

63:                                               ; preds = %59
  %64 = load %struct.uart_class*, %struct.uart_class** %6, align 8
  %65 = call i32 @uart_getops(%struct.uart_class* %64)
  %66 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %67 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 8
  %68 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %69 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 4
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* @uart_bus_space_io, align 4
  %72 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %73 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  store i32 %71, i32* %74, align 4
  %75 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %76 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.uart_class*, %struct.uart_class** %6, align 8
  %81 = call i32 @uart_getrange(%struct.uart_class* %80)
  %82 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %83 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = call i64 @bus_space_map(i32 %78, i32 %79, i32 %81, i32 0, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %63
  br label %110

88:                                               ; preds = %63
  %89 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %90 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  %92 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %93 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i64 @resource_int_value(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %8)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %98, %88
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %102 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %104 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %103, i32 0, i32 1
  store i32 8, i32* %104, align 4
  %105 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %106 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %105, i32 0, i32 2
  store i32 1, i32* %106, align 8
  %107 = load i32, i32* @UART_PARITY_NONE, align 4
  %108 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %109 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  store i32 0, i32* %3, align 4
  br label %115

110:                                              ; preds = %87, %62, %54, %46, %37, %28
  %111 = load i32, i32* %7, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %21

113:                                              ; preds = %21
  %114 = load i32, i32* @ENXIO, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %113, %99, %19, %11
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i64 @uart_getenv(i32, %struct.uart_devinfo*, %struct.uart_class*) #1

declare dso_local i64 @resource_int_value(i8*, i32, i8*, i32*) #1

declare dso_local i32 @UART_FLAGS_CONSOLE(i32) #1

declare dso_local i32 @UART_FLAGS_DBGPORT(i32) #1

declare dso_local i32 @uart_getops(%struct.uart_class*) #1

declare dso_local i64 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @uart_getrange(%struct.uart_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
