; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_bus_fdt.c_uart_cpu_fdt_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_bus_fdt.c_uart_cpu_fdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_class = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"stdout-path\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"linux,stdout-path\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"stdin-path\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"hw.fdt.console\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"serial0\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"current-speed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_cpu_fdt_probe(%struct.uart_class** %0, i32* %1, i32* %2, i32* %3, i8** %4, i8** %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.uart_class**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca [6 x i8*], align 16
  %17 = alloca i8**, align 8
  %18 = alloca %struct.uart_class*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  store %struct.uart_class** %0, %struct.uart_class*** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8** %4, i8*** %13, align 8
  store i8** %5, i8*** %14, align 8
  store i8** %6, i8*** %15, align 8
  %27 = bitcast [6 x i8*]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 48, i1 false)
  %28 = bitcast i8* %27 to [6 x i8*]*
  %29 = getelementptr inbounds [6 x i8*], [6 x i8*]* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %29, align 16
  %30 = getelementptr inbounds [6 x i8*], [6 x i8*]* %28, i32 0, i32 1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8** %30, align 8
  %31 = getelementptr inbounds [6 x i8*], [6 x i8*]* %28, i32 0, i32 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8** %31, align 16
  %32 = getelementptr inbounds [6 x i8*], [6 x i8*]* %28, i32 0, i32 3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8** %32, align 8
  %33 = getelementptr inbounds [6 x i8*], [6 x i8*]* %28, i32 0, i32 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8** %33, align 16
  %34 = call i8* @kern_getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i8* %34, i8** %25, align 8
  %35 = load i8*, i8** %25, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %68

37:                                               ; preds = %7
  store i32 -1, i32* %19, align 4
  %38 = call i32 @OF_finddevice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i32 %38, i32* %20, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = getelementptr inbounds [6 x i8*], [6 x i8*]* %16, i64 0, i64 0
  store i8** %41, i8*** %17, align 8
  br label %42

42:                                               ; preds = %54, %40
  %43 = load i8**, i8*** %17, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load i32, i32* %20, align 4
  %48 = load i8**, i8*** %17, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @phandle_chosen_propdev(i32 %47, i8* %49, i32* %19)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %57

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53
  %55 = load i8**, i8*** %17, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i32 1
  store i8** %56, i8*** %17, align 8
  br label %42

57:                                               ; preds = %52, %42
  br label %58

58:                                               ; preds = %57, %37
  %59 = load i32, i32* %20, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = load i8**, i8*** %17, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %61, %58
  %66 = call i32 @OF_finddevice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i32 %66, i32* %19, align 4
  br label %67

67:                                               ; preds = %65, %61
  br label %71

68:                                               ; preds = %7
  %69 = load i8*, i8** %25, align 8
  %70 = call i32 @OF_finddevice(i8* %69)
  store i32 %70, i32* %19, align 4
  br label %71

71:                                               ; preds = %68, %67
  %72 = load i32, i32* %19, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* @ENXIO, align 4
  store i32 %75, i32* %8, align 4
  br label %138

76:                                               ; preds = %71
  %77 = load i32, i32* %19, align 4
  %78 = call i64 @uart_fdt_find_by_node(i32 %77, i32 0)
  %79 = inttoptr i64 %78 to %struct.uart_class*
  store %struct.uart_class* %79, %struct.uart_class** %18, align 8
  %80 = load %struct.uart_class*, %struct.uart_class** %18, align 8
  %81 = icmp ne %struct.uart_class* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load i32, i32* %19, align 4
  %84 = call i32 @uart_fdt_get_clock(i32 %83, i8** %22)
  store i32 %84, i32* %26, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* %26, align 4
  store i32 %87, i32* %8, align 4
  br label %138

88:                                               ; preds = %82
  br label %98

89:                                               ; preds = %76
  %90 = load i32, i32* %19, align 4
  %91 = call i64 @uart_fdt_find_by_node(i32 %90, i32 1)
  %92 = inttoptr i64 %91 to %struct.uart_class*
  store %struct.uart_class* %92, %struct.uart_class** %18, align 8
  %93 = load %struct.uart_class*, %struct.uart_class** %18, align 8
  %94 = icmp eq %struct.uart_class* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* @ENXIO, align 4
  store i32 %96, i32* %8, align 4
  br label %138

97:                                               ; preds = %89
  store i8* null, i8** %22, align 8
  br label %98

98:                                               ; preds = %97, %88
  %99 = load i32, i32* %19, align 4
  %100 = call i64 @uart_fdt_get_shift(i32 %99, i8** %23)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load %struct.uart_class*, %struct.uart_class** %18, align 8
  %104 = call i8* @uart_getregshift(%struct.uart_class* %103)
  store i8* %104, i8** %23, align 8
  br label %105

105:                                              ; preds = %102, %98
  %106 = load i32, i32* %19, align 4
  %107 = call i64 @uart_fdt_get_io_width(i32 %106, i8** %24)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load %struct.uart_class*, %struct.uart_class** %18, align 8
  %111 = call i8* @uart_getregiowidth(%struct.uart_class* %110)
  store i8* %111, i8** %24, align 8
  br label %112

112:                                              ; preds = %109, %105
  %113 = load i32, i32* %19, align 4
  %114 = call i64 @OF_getencprop(i32 %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8** %21, i32 8)
  %115 = icmp sle i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store i8* null, i8** %21, align 8
  br label %117

117:                                              ; preds = %116, %112
  %118 = load i32, i32* %19, align 4
  %119 = load i32*, i32** %10, align 8
  %120 = load i32*, i32** %11, align 8
  %121 = call i32 @OF_decode_addr(i32 %118, i32 0, i32* %119, i32* %120, i32* null)
  store i32 %121, i32* %26, align 4
  %122 = load i32, i32* %26, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load i32, i32* %26, align 4
  store i32 %125, i32* %8, align 4
  br label %138

126:                                              ; preds = %117
  %127 = load %struct.uart_class*, %struct.uart_class** %18, align 8
  %128 = load %struct.uart_class**, %struct.uart_class*** %9, align 8
  store %struct.uart_class* %127, %struct.uart_class** %128, align 8
  %129 = load i8*, i8** %21, align 8
  %130 = ptrtoint i8* %129 to i32
  %131 = load i32*, i32** %12, align 8
  store i32 %130, i32* %131, align 4
  %132 = load i8*, i8** %22, align 8
  %133 = load i8**, i8*** %13, align 8
  store i8* %132, i8** %133, align 8
  %134 = load i8*, i8** %23, align 8
  %135 = load i8**, i8*** %14, align 8
  store i8* %134, i8** %135, align 8
  %136 = load i8*, i8** %24, align 8
  %137 = load i8**, i8*** %15, align 8
  store i8* %136, i8** %137, align 8
  store i32 0, i32* %8, align 4
  br label %138

138:                                              ; preds = %126, %124, %95, %86, %74
  %139 = load i32, i32* %8, align 4
  ret i32 %139
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @kern_getenv(i8*) #2

declare dso_local i32 @OF_finddevice(i8*) #2

declare dso_local i64 @phandle_chosen_propdev(i32, i8*, i32*) #2

declare dso_local i64 @uart_fdt_find_by_node(i32, i32) #2

declare dso_local i32 @uart_fdt_get_clock(i32, i8**) #2

declare dso_local i64 @uart_fdt_get_shift(i32, i8**) #2

declare dso_local i8* @uart_getregshift(%struct.uart_class*) #2

declare dso_local i64 @uart_fdt_get_io_width(i32, i8**) #2

declare dso_local i8* @uart_getregiowidth(%struct.uart_class*) #2

declare dso_local i64 @OF_getencprop(i32, i8*, i8**, i32) #2

declare dso_local i32 @OF_decode_addr(i32, i32, i32*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
