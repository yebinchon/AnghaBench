; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_cis.c_cardbus_parse_cis.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_cis.c_cardbus_parse_cis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuple_callbacks = type { i32 }
%struct.resource = type { i32 }

@CISTPL_NULL = common dso_local global i32 0, align 4
@MAXTUPLESIZE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@PCIR_CIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Warning: CIS pointer is 0: (no CIS)\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"CIS pointer is %#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Unable to allocate resources for CIS\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Failed to read CIS.\0A\00", align 1
@CISTPL_LINKTARGET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Expecting link target, got 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Parsing failed with %d\0A\00", align 1
@CISTPL_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cardbus_parse_cis(i32 %0, i32 %1, %struct.tuple_callbacks* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tuple_callbacks*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.resource*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.tuple_callbacks* %2, %struct.tuple_callbacks** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load i32, i32* @CISTPL_NULL, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* @MAXTUPLESIZE, align 4
  %20 = load i32, i32* @M_DEVBUF, align 4
  %21 = load i32, i32* @M_WAITOK, align 4
  %22 = load i32, i32* @M_ZERO, align 4
  %23 = or i32 %21, %22
  %24 = call i32* @malloc(i32 %19, i32 %20, i32 %23)
  store i32* %24, i32** %10, align 8
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @PCIR_CIS, align 4
  %28 = call i64 @pci_read_config(i32 %26, i32 %27, i32 4)
  store i64 %28, i64* %14, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @DEVPRINTF(i32 ptrtoint ([37 x i8]* @.str to i32))
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* @M_DEVBUF, align 4
  %35 = call i32 @free(i32* %33, i32 %34)
  store i32 0, i32* %5, align 4
  br label %133

36:                                               ; preds = %4
  %37 = load i32, i32* %6, align 4
  %38 = load i64, i64* %14, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @DEVPRINTF(i32 %39)
  store i64 0, i64* %15, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call %struct.resource* @cardbus_read_tuple_init(i32 %41, i32 %42, i64* %14, i32* %17)
  store %struct.resource* %43, %struct.resource** %16, align 8
  %44 = load %struct.resource*, %struct.resource** %16, align 8
  %45 = icmp eq %struct.resource* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %36
  %47 = load i32, i32* %6, align 4
  %48 = call i32 (i32, i8*, ...) @device_printf(i32 %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* @M_DEVBUF, align 4
  %51 = call i32 @free(i32* %49, i32 %50)
  %52 = load i32, i32* @ENXIO, align 4
  store i32 %52, i32* %5, align 4
  br label %133

53:                                               ; preds = %36
  br label %54

54:                                               ; preds = %120, %53
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.resource*, %struct.resource** %16, align 8
  %58 = load i64, i64* %14, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = call i64 @cardbus_read_tuple(i32 %55, i32 %56, %struct.resource* %57, i64 %58, i64* %15, i32* %11, i32* %12, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %54
  %63 = load i32, i32* %6, align 4
  %64 = call i32 (i32, i8*, ...) @device_printf(i32 %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %17, align 4
  %68 = load %struct.resource*, %struct.resource** %16, align 8
  %69 = call i32 @cardbus_read_tuple_finish(i32 %65, i32 %66, i32 %67, %struct.resource* %68)
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* @M_DEVBUF, align 4
  %72 = call i32 @free(i32* %70, i32 %71)
  %73 = load i32, i32* @ENXIO, align 4
  store i32 %73, i32* %5, align 4
  br label %133

74:                                               ; preds = %54
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %74
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @CISTPL_LINKTARGET, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %77
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 (i32, i8*, ...) @device_printf(i32 %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %17, align 4
  %88 = load %struct.resource*, %struct.resource** %16, align 8
  %89 = call i32 @cardbus_read_tuple_finish(i32 %85, i32 %86, i32 %87, %struct.resource* %88)
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* @M_DEVBUF, align 4
  %92 = call i32 @free(i32* %90, i32 %91)
  %93 = load i32, i32* @EINVAL, align 4
  store i32 %93, i32* %5, align 4
  br label %133

94:                                               ; preds = %77, %74
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32*, i32** %10, align 8
  %100 = load i64, i64* %14, align 8
  %101 = load %struct.tuple_callbacks*, %struct.tuple_callbacks** %8, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 @decode_tuple(i32 %95, i32 %96, i32 %97, i32 %98, i32* %99, i64 %100, i64* %15, %struct.tuple_callbacks* %101, i8* %102)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %94
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %13, align 4
  %109 = call i32 (i32, i8*, ...) @device_printf(i32 %107, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %17, align 4
  %113 = load %struct.resource*, %struct.resource** %16, align 8
  %114 = call i32 @cardbus_read_tuple_finish(i32 %110, i32 %111, i32 %112, %struct.resource* %113)
  %115 = load i32*, i32** %10, align 8
  %116 = load i32, i32* @M_DEVBUF, align 4
  %117 = call i32 @free(i32* %115, i32 %116)
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %5, align 4
  br label %133

119:                                              ; preds = %94
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @CISTPL_END, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %54, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %17, align 4
  %128 = load %struct.resource*, %struct.resource** %16, align 8
  %129 = call i32 @cardbus_read_tuple_finish(i32 %125, i32 %126, i32 %127, %struct.resource* %128)
  %130 = load i32*, i32** %10, align 8
  %131 = load i32, i32* @M_DEVBUF, align 4
  %132 = call i32 @free(i32* %130, i32 %131)
  store i32 0, i32* %5, align 4
  br label %133

133:                                              ; preds = %124, %106, %81, %62, %46, %30
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i64 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @DEVPRINTF(i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local %struct.resource* @cardbus_read_tuple_init(i32, i32, i64*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @cardbus_read_tuple(i32, i32, %struct.resource*, i64, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @cardbus_read_tuple_finish(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @decode_tuple(i32, i32, i32, i32, i32*, i64, i64*, %struct.tuple_callbacks*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
