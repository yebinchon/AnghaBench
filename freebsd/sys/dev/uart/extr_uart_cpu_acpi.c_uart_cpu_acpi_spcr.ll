; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_cpu_acpi.c_uart_cpu_acpi_spcr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_cpu_acpi.c_uart_cpu_acpi_spcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_devinfo = type { i32, i32, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i64, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i64, i32, i32 }
%struct.acpi_uart_compat_data = type { i32, i64, %struct.uart_class* }
%struct.uart_class = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@UART_DEV_CONSOLE = common dso_local global i32 0, align 4
@ACPI_SIG_SPCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unable to map the SPCR table!\0A\00", align 1
@UART_PARITY_NONE = common dso_local global i32 0, align 4
@uart_bus_space_mem = common dso_local global i32 0, align 4
@uart_bus_space_io = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"UART in unrecognized address space: %d!\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"SPCR has reserved BaudRate value: %d!\0A\00", align 1
@UART_F_IGNORE_SPCR_REGSHFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_cpu_acpi_spcr(i32 %0, %struct.uart_devinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_devinfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.acpi_uart_compat_data*, align 8
  %9 = alloca %struct.uart_class*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.uart_devinfo* %1, %struct.uart_devinfo** %5, align 8
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @UART_DEV_CONSOLE, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %3, align 4
  br label %167

17:                                               ; preds = %2
  %18 = load i32, i32* @ACPI_SIG_SPCR, align 4
  %19 = call i64 @acpi_find_table(i32 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %3, align 4
  br label %167

24:                                               ; preds = %17
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* @ACPI_SIG_SPCR, align 4
  %27 = call %struct.TYPE_8__* @acpi_map_table(i64 %25, i32 %26)
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %7, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = icmp eq %struct.TYPE_8__* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %3, align 4
  br label %167

33:                                               ; preds = %24
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.acpi_uart_compat_data* @uart_cpu_acpi_scan(i32 %36)
  store %struct.acpi_uart_compat_data* %37, %struct.acpi_uart_compat_data** %8, align 8
  %38 = load %struct.acpi_uart_compat_data*, %struct.acpi_uart_compat_data** %8, align 8
  %39 = icmp eq %struct.acpi_uart_compat_data* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %163

41:                                               ; preds = %33
  %42 = load %struct.acpi_uart_compat_data*, %struct.acpi_uart_compat_data** %8, align 8
  %43 = getelementptr inbounds %struct.acpi_uart_compat_data, %struct.acpi_uart_compat_data* %42, i32 0, i32 2
  %44 = load %struct.uart_class*, %struct.uart_class** %43, align 8
  store %struct.uart_class* %44, %struct.uart_class** %9, align 8
  %45 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %46 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 5
  store i64 0, i64* %47, align 8
  %48 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %49 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %52 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %51, i32 0, i32 0
  store i32 8, i32* %52, align 8
  %53 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %54 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load i32, i32* @UART_PARITY_NONE, align 4
  %56 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %57 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load %struct.uart_class*, %struct.uart_class** %9, align 8
  %59 = call i32 @uart_getops(%struct.uart_class* %58)
  %60 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %61 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %76 [
    i32 0, label %66
    i32 1, label %71
  ]

66:                                               ; preds = %41
  %67 = load i32, i32* @uart_bus_space_mem, align 4
  %68 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %69 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 3
  store i32 %67, i32* %70, align 8
  br label %82

71:                                               ; preds = %41
  %72 = load i32, i32* @uart_bus_space_io, align 4
  %73 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %74 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  store i32 %72, i32* %75, align 8
  br label %82

76:                                               ; preds = %41
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %163

82:                                               ; preds = %71, %66
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %90 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  br label %101

92:                                               ; preds = %82
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %96, 1
  %98 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %99 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store i64 %97, i64* %100, align 8
  br label %101

101:                                              ; preds = %92, %88
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = sdiv i32 %105, 8
  %107 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %108 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  switch i32 %112, label %128 [
    i32 0, label %113
    i32 3, label %116
    i32 4, label %119
    i32 6, label %122
    i32 7, label %125
  ]

113:                                              ; preds = %101
  %114 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %115 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %114, i32 0, i32 2
  store i32 0, i32* %115, align 8
  br label %133

116:                                              ; preds = %101
  %117 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %118 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %117, i32 0, i32 2
  store i32 9600, i32* %118, align 8
  br label %133

119:                                              ; preds = %101
  %120 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %121 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %120, i32 0, i32 2
  store i32 19200, i32* %121, align 8
  br label %133

122:                                              ; preds = %101
  %123 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %124 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %123, i32 0, i32 2
  store i32 57600, i32* %124, align 8
  br label %133

125:                                              ; preds = %101
  %126 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %127 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %126, i32 0, i32 2
  store i32 115200, i32* %127, align 8
  br label %133

128:                                              ; preds = %101
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  br label %163

133:                                              ; preds = %125, %122, %119, %116, %113
  %134 = load %struct.acpi_uart_compat_data*, %struct.acpi_uart_compat_data** %8, align 8
  %135 = getelementptr inbounds %struct.acpi_uart_compat_data, %struct.acpi_uart_compat_data* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @UART_F_IGNORE_SPCR_REGSHFT, align 4
  %138 = and i32 %136, %137
  %139 = load i32, i32* @UART_F_IGNORE_SPCR_REGSHFT, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %133
  %142 = load %struct.acpi_uart_compat_data*, %struct.acpi_uart_compat_data** %8, align 8
  %143 = getelementptr inbounds %struct.acpi_uart_compat_data, %struct.acpi_uart_compat_data* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %146 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  store i64 %144, i64* %147, align 8
  br label %148

148:                                              ; preds = %141, %133
  %149 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %150 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.uart_class*, %struct.uart_class** %9, align 8
  %158 = call i32 @uart_getrange(%struct.uart_class* %157)
  %159 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %160 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  %162 = call i32 @bus_space_map(i32 %152, i32 %156, i32 %158, i32 0, i32* %161)
  store i32 %162, i32* %10, align 4
  br label %163

163:                                              ; preds = %148, %128, %76, %40
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %165 = call i32 @acpi_unmap_table(%struct.TYPE_8__* %164)
  %166 = load i32, i32* %10, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %163, %30, %22, %15
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i64 @acpi_find_table(i32) #1

declare dso_local %struct.TYPE_8__* @acpi_map_table(i64, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.acpi_uart_compat_data* @uart_cpu_acpi_scan(i32) #1

declare dso_local i32 @uart_getops(%struct.uart_class*) #1

declare dso_local i32 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @uart_getrange(%struct.uart_class*) #1

declare dso_local i32 @acpi_unmap_table(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
