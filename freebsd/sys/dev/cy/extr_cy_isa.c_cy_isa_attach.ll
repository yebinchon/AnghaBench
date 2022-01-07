; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy_isa.c_cy_isa_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy_isa.c_cy_isa_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"memory resource allocation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"no ports found!\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"interrupt resource allocation failed\0A\00", align 1
@INTR_TYPE_TTY = common dso_local global i32 0, align 4
@cyintr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"interrupt setup failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cy_isa_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cy_isa_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.resource* null, %struct.resource** %4, align 8
  store %struct.resource* null, %struct.resource** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @SYS_RES_MEMORY, align 4
  %13 = load i32, i32* @RF_ACTIVE, align 4
  %14 = call %struct.resource* @bus_alloc_resource_any(i32 %11, i32 %12, i32* %10, i32 %13)
  store %struct.resource* %14, %struct.resource** %5, align 8
  %15 = load %struct.resource*, %struct.resource** %5, align 8
  %16 = icmp eq %struct.resource* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %54

20:                                               ; preds = %1
  %21 = load %struct.resource*, %struct.resource** %5, align 8
  %22 = call i8* @rman_get_virtual(%struct.resource* %21)
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i8* @cyattach_common(i8* %23, i32 0)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %54

30:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @SYS_RES_IRQ, align 4
  %33 = load i32, i32* @RF_SHAREABLE, align 4
  %34 = load i32, i32* @RF_ACTIVE, align 4
  %35 = or i32 %33, %34
  %36 = call %struct.resource* @bus_alloc_resource_any(i32 %31, i32 %32, i32* %9, i32 %35)
  store %struct.resource* %36, %struct.resource** %4, align 8
  %37 = load %struct.resource*, %struct.resource** %4, align 8
  %38 = icmp eq %struct.resource* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %54

42:                                               ; preds = %30
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.resource*, %struct.resource** %4, align 8
  %45 = load i32, i32* @INTR_TYPE_TTY, align 4
  %46 = load i32, i32* @cyintr, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = call i64 @bus_setup_intr(i32 %43, %struct.resource* %44, i32 %45, i32 %46, i32* null, i8* %47, i8** %6)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %54

53:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %74

54:                                               ; preds = %50, %39, %27, %17
  %55 = load %struct.resource*, %struct.resource** %4, align 8
  %56 = icmp ne %struct.resource* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @SYS_RES_IRQ, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.resource*, %struct.resource** %4, align 8
  %62 = call i32 @bus_release_resource(i32 %58, i32 %59, i32 %60, %struct.resource* %61)
  br label %63

63:                                               ; preds = %57, %54
  %64 = load %struct.resource*, %struct.resource** %5, align 8
  %65 = icmp ne %struct.resource* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @SYS_RES_MEMORY, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.resource*, %struct.resource** %5, align 8
  %71 = call i32 @bus_release_resource(i32 %67, i32 %68, i32 %69, %struct.resource* %70)
  br label %72

72:                                               ; preds = %66, %63
  %73 = load i32, i32* @ENXIO, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %53
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i8* @rman_get_virtual(%struct.resource*) #1

declare dso_local i8* @cyattach_common(i8*, i32) #1

declare dso_local i64 @bus_setup_intr(i32, %struct.resource*, i32, i32, i32*, i8*, i8**) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
