; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_set_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_set_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pccard_ivar = type { %struct.resource_list }
%struct.resource_list = type { i32 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_DRQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PCCARD_NPORT = common dso_local global i32 0, align 4
@PCCARD_NMEM = common dso_local global i32 0, align 4
@PCCARD_NIRQ = common dso_local global i32 0, align 4
@PCCARD_NDRQ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i64, i64)* @pccard_set_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pccard_set_resource(i32 %0, i32 %1, i32 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.pccard_ivar*, align 8
  %15 = alloca %struct.resource_list*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call %struct.pccard_ivar* @PCCARD_IVAR(i32 %16)
  store %struct.pccard_ivar* %17, %struct.pccard_ivar** %14, align 8
  %18 = load %struct.pccard_ivar*, %struct.pccard_ivar** %14, align 8
  %19 = getelementptr inbounds %struct.pccard_ivar, %struct.pccard_ivar* %18, i32 0, i32 0
  store %struct.resource_list* %19, %struct.resource_list** %15, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @SYS_RES_IOPORT, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %6
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @SYS_RES_MEMORY, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @SYS_RES_IRQ, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @SYS_RES_DRQ, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %7, align 4
  br label %109

37:                                               ; preds = %31, %27, %23, %6
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %7, align 4
  br label %109

42:                                               ; preds = %37
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @SYS_RES_IOPORT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @PCCARD_NPORT, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %7, align 4
  br label %109

52:                                               ; preds = %46, %42
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @SYS_RES_MEMORY, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @PCCARD_NMEM, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %7, align 4
  br label %109

62:                                               ; preds = %56, %52
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @SYS_RES_IRQ, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @PCCARD_NIRQ, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %7, align 4
  br label %109

72:                                               ; preds = %66, %62
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @SYS_RES_DRQ, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @PCCARD_NDRQ, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* %7, align 4
  br label %109

82:                                               ; preds = %76, %72
  %83 = load %struct.resource_list*, %struct.resource_list** %15, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* %13, align 8
  %89 = add nsw i64 %87, %88
  %90 = sub nsw i64 %89, 1
  %91 = load i64, i64* %13, align 8
  %92 = call i32 @resource_list_add(%struct.resource_list* %83, i32 %84, i32 %85, i64 %86, i64 %90, i64 %91)
  %93 = load %struct.resource_list*, %struct.resource_list** %15, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @device_get_parent(i32 %94)
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i64, i64* %12, align 8
  %99 = load i64, i64* %12, align 8
  %100 = load i64, i64* %13, align 8
  %101 = add nsw i64 %99, %100
  %102 = sub nsw i64 %101, 1
  %103 = load i64, i64* %13, align 8
  %104 = call i32* @resource_list_alloc(%struct.resource_list* %93, i32 %95, i32 %96, i32 %97, i32* %11, i64 %98, i64 %102, i64 %103, i32 0)
  %105 = icmp ne i32* null, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %82
  store i32 0, i32* %7, align 4
  br label %109

107:                                              ; preds = %82
  %108 = load i32, i32* @ENOMEM, align 4
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %107, %106, %80, %70, %60, %50, %40, %35
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local %struct.pccard_ivar* @PCCARD_IVAR(i32) #1

declare dso_local i32 @resource_list_add(%struct.resource_list*, i32, i32, i64, i64, i64) #1

declare dso_local i32* @resource_list_alloc(%struct.resource_list*, i32, i32, i32, i32*, i64, i64, i64, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
