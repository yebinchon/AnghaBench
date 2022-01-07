; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_lbc.c_fdt_lbc_reg_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_lbc.c_fdt_lbc_reg_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbc_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lbc_devinfo = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"addr_cells = %d, size_cells = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"tuples = %d, tuple size = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"reg addr bank = %d, start = %jx, end = %jx, count = %jx\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.lbc_softc*, %struct.lbc_devinfo*)* @fdt_lbc_reg_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdt_lbc_reg_decode(i32 %0, %struct.lbc_softc* %1, %struct.lbc_devinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lbc_softc*, align 8
  %7 = alloca %struct.lbc_devinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.lbc_softc* %1, %struct.lbc_softc** %6, align 8
  store %struct.lbc_devinfo* %2, %struct.lbc_devinfo** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @OF_parent(i32 %21)
  %23 = call i64 @fdt_addrsize_cells(i32 %22, i32* %13, i32* %14)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %4, align 4
  br label %142

27:                                               ; preds = %3
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %14, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = mul i64 4, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %15, align 4
  %36 = bitcast i32** %11 to i8**
  %37 = call i32 @OF_getencprop_alloc_multi(i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %35, i8** %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = call i32 (i8*, i32, i32, ...) @debugf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %15, align 4
  %43 = call i32 (i8*, i32, i32, ...) @debugf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load i32, i32* %16, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %142

47:                                               ; preds = %27
  %48 = load i32*, i32** %11, align 8
  store i32* %48, i32** %12, align 8
  store i32 0, i32* %17, align 4
  br label %49

49:                                               ; preds = %135, %47
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %138

53:                                               ; preds = %49
  %54 = load i32*, i32** %11, align 8
  %55 = bitcast i32* %54 to i8*
  %56 = call i32 @fdt_data_get(i8* %55, i32 1)
  store i32 %56, i32* %20, align 4
  %57 = load i32, i32* %20, align 4
  %58 = load %struct.lbc_devinfo*, %struct.lbc_devinfo** %7, align 8
  %59 = getelementptr inbounds %struct.lbc_devinfo, %struct.lbc_devinfo* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32* %61, i32** %11, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %18, align 4
  br label %62

62:                                               ; preds = %76, %53
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load i32, i32* %8, align 4
  %68 = shl i32 %67, 32
  store i32 %68, i32* %8, align 4
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* %18, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %66
  %77 = load i32, i32* %18, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %18, align 4
  br label %62

79:                                               ; preds = %62
  store i32 0, i32* %18, align 4
  br label %80

80:                                               ; preds = %97, %79
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %80
  %85 = load i32, i32* %10, align 4
  %86 = shl i32 %85, 32
  store i32 %86, i32* %10, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %18, align 4
  %90 = add nsw i32 %88, %89
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %87, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %84
  %98 = load i32, i32* %18, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %18, align 4
  br label %80

100:                                              ; preds = %80
  %101 = load i32, i32* %13, align 4
  %102 = sub nsw i32 %101, 1
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32*, i32** %11, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %11, align 8
  %108 = load %struct.lbc_softc*, %struct.lbc_softc** %6, align 8
  %109 = getelementptr inbounds %struct.lbc_softc, %struct.lbc_softc* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %20, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %115, %116
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %118, %119
  %121 = sub nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %20, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %10, align 4
  %126 = call i32 (i8*, i32, i32, ...) @debugf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %122, i32 %123, i32 %124, i32 %125)
  %127 = load %struct.lbc_devinfo*, %struct.lbc_devinfo** %7, align 8
  %128 = getelementptr inbounds %struct.lbc_devinfo, %struct.lbc_devinfo* %127, i32 0, i32 1
  %129 = load i32, i32* @SYS_RES_MEMORY, align 4
  %130 = load i32, i32* %20, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @resource_list_add(i32* %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %100
  %136 = load i32, i32* %17, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %17, align 4
  br label %49

138:                                              ; preds = %49
  store i32 0, i32* %19, align 4
  %139 = load i32*, i32** %12, align 8
  %140 = call i32 @OF_prop_free(i32* %139)
  %141 = load i32, i32* %19, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %138, %46, %25
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i64 @fdt_addrsize_cells(i32, i32*, i32*) #1

declare dso_local i32 @OF_parent(i32) #1

declare dso_local i32 @OF_getencprop_alloc_multi(i32, i8*, i32, i8**) #1

declare dso_local i32 @debugf(i8*, i32, i32, ...) #1

declare dso_local i32 @fdt_data_get(i8*, i32) #1

declare dso_local i32 @resource_list_add(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @OF_prop_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
