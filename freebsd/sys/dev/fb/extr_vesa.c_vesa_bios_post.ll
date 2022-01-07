; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_vesa_bios_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_vesa_bios_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@vesa_bios_offs = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"vgapci\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@VGA_DRIVER_NAME = common dso_local global i8* null, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: calling BIOS POST\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"VESA\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vesa_bios_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vesa_bios_post() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i64, i64* @vesa_bios_offs, align 8
  %10 = call i32* @x86bios_get_orm(i64 %9)
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %111

13:                                               ; preds = %0
  store i32* null, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = call i32* @devclass_find(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %57

17:                                               ; preds = %13
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @devclass_get_devices(i32* %18, i32*** %4, i32* %6)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %50, %21
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %22
  %27 = load i32**, i32*** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @device_get_flags(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %26
  %35 = load i64, i64* @vesa_bios_offs, align 8
  %36 = load i32**, i32*** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = call i64 @x86bios_match_device(i64 %35, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load i32**, i32*** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %5, align 8
  store i32 1, i32* %8, align 4
  br label %53

49:                                               ; preds = %34, %26
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %22

53:                                               ; preds = %43, %22
  %54 = load i32**, i32*** %4, align 8
  %55 = load i32, i32* @M_TEMP, align 4
  %56 = call i32 @free(i32** %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %17, %13
  %58 = load i32*, i32** %5, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load i8*, i8** @VGA_DRIVER_NAME, align 8
  %62 = call i32* @devclass_find(i8* %61)
  store i32* %62, i32** %3, align 8
  %63 = load i32*, i32** %3, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32*, i32** %3, align 8
  %67 = call i32* @devclass_get_device(i32* %66, i32 0)
  store i32* %67, i32** %5, align 8
  br label %68

68:                                               ; preds = %65, %60
  br label %69

69:                                               ; preds = %68, %57
  %70 = load i64, i64* @bootverbose, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load i32*, i32** %5, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %79

76:                                               ; preds = %72
  %77 = load i32*, i32** %5, align 8
  %78 = call i8* @device_get_nameunit(i32* %77)
  br label %79

79:                                               ; preds = %76, %75
  %80 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %75 ], [ %78, %76 ]
  %81 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %79, %69
  %83 = call i32 @x86bios_init_regs(%struct.TYPE_4__* %2)
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %82
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @pci_get_bus(i32* %87)
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i32 %88, i32* %89, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @pci_get_slot(i32* %90)
  %92 = shl i32 %91, 3
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @pci_get_function(i32* %93)
  %95 = and i32 %94, 7
  %96 = or i32 %92, %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %86, %82
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32 128, i32* %99, align 4
  %100 = load i64, i64* @vesa_bios_offs, align 8
  %101 = add nsw i64 %100, 3
  %102 = call i32 @X86BIOS_PHYSTOSEG(i64 %101)
  %103 = load i64, i64* @vesa_bios_offs, align 8
  %104 = add nsw i64 %103, 3
  %105 = call i32 @X86BIOS_PHYSTOOFF(i64 %104)
  %106 = call i32 @x86bios_call(%struct.TYPE_4__* %2, i32 %102, i32 %105)
  %107 = call i64 @x86bios_get_intr(i32 16)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  store i32 1, i32* %1, align 4
  br label %111

110:                                              ; preds = %98
  store i32 0, i32* %1, align 4
  br label %111

111:                                              ; preds = %110, %109, %12
  %112 = load i32, i32* %1, align 4
  ret i32 %112
}

declare dso_local i32* @x86bios_get_orm(i64) #1

declare dso_local i32* @devclass_find(i8*) #1

declare dso_local i64 @devclass_get_devices(i32*, i32***, i32*) #1

declare dso_local i64 @device_get_flags(i32*) #1

declare dso_local i64 @x86bios_match_device(i64, i32*) #1

declare dso_local i32 @free(i32**, i32) #1

declare dso_local i32* @devclass_get_device(i32*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @device_get_nameunit(i32*) #1

declare dso_local i32 @x86bios_init_regs(%struct.TYPE_4__*) #1

declare dso_local i32 @pci_get_bus(i32*) #1

declare dso_local i32 @pci_get_slot(i32*) #1

declare dso_local i32 @pci_get_function(i32*) #1

declare dso_local i32 @x86bios_call(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @X86BIOS_PHYSTOSEG(i64) #1

declare dso_local i32 @X86BIOS_PHYSTOOFF(i64) #1

declare dso_local i64 @x86bios_get_intr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
