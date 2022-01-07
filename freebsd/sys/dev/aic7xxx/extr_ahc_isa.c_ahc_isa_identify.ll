; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_ahc_isa.c_ahc_isa_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_ahc_isa.c_ahc_isa_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7770_identity = type { i32 }
%struct.resource = type { i32 }

@AHC_EISA_SLOT_SIZE = common dso_local global i32 0, align 4
@AHC_EISA_SLOT_OFFSET = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@AHC_EISA_IOSIZE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"ahc_isa_identify %d: ioport 0x%x alloc failed\0A\00", align 1
@ISA_ORDER_SPECULATIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ahc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @ahc_isa_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_isa_identify(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.aic7770_identity*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 14, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %73, %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %76

18:                                               ; preds = %14
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @AHC_EISA_SLOT_SIZE, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* @AHC_EISA_SLOT_OFFSET, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @SYS_RES_IOPORT, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @AHC_EISA_IOSIZE, align 4
  %29 = load i32, i32* @RF_ACTIVE, align 4
  %30 = call %struct.resource* @bus_alloc_resource(i32* %24, i32 %25, i32* %12, i32 %26, i32 %27, i32 %28, i32 %29)
  store %struct.resource* %30, %struct.resource** %10, align 8
  %31 = load %struct.resource*, %struct.resource** %10, align 8
  %32 = icmp eq %struct.resource* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %18
  %34 = load i64, i64* @bootverbose, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %33
  br label %73

41:                                               ; preds = %18
  %42 = load %struct.resource*, %struct.resource** %10, align 8
  %43 = call i32 @rman_get_bustag(%struct.resource* %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.resource*, %struct.resource** %10, align 8
  %45 = call i32 @rman_get_bushandle(%struct.resource* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call %struct.aic7770_identity* @ahc_isa_find_device(i32 %46, i32 %47)
  store %struct.aic7770_identity* %48, %struct.aic7770_identity** %7, align 8
  %49 = load %struct.aic7770_identity*, %struct.aic7770_identity** %7, align 8
  %50 = icmp ne %struct.aic7770_identity* %49, null
  br i1 %50, label %51, label %67

51:                                               ; preds = %41
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* @ISA_ORDER_SPECULATIVE, align 4
  %54 = call i32* @BUS_ADD_CHILD(i32* %52, i32 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  store i32* %54, i32** %13, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load i32*, i32** %13, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @device_set_driver(i32* %58, i32* %59)
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* @SYS_RES_IOPORT, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @AHC_EISA_IOSIZE, align 4
  %65 = call i32 @bus_set_resource(i32* %61, i32 %62, i32 0, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %57, %51
  br label %67

67:                                               ; preds = %66, %41
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* @SYS_RES_IOPORT, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.resource*, %struct.resource** %10, align 8
  %72 = call i32 @bus_release_resource(i32* %68, i32 %69, i32 %70, %struct.resource* %71)
  br label %73

73:                                               ; preds = %67, %40
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %14

76:                                               ; preds = %14
  ret void
}

declare dso_local %struct.resource* @bus_alloc_resource(i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @rman_get_bustag(%struct.resource*) #1

declare dso_local i32 @rman_get_bushandle(%struct.resource*) #1

declare dso_local %struct.aic7770_identity* @ahc_isa_find_device(i32, i32) #1

declare dso_local i32* @BUS_ADD_CHILD(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_set_driver(i32*, i32*) #1

declare dso_local i32 @bus_set_resource(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32*, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
