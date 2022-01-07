; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/psim/extr_ata_iobus.c_ata_iobus_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/psim/extr_ata_iobus.c_ata_iobus_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@ATA_IOSIZE = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@ATA_CTLIOSIZE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@ATA_IRQ_RID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource* @ata_iobus_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.resource*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.resource* null, %struct.resource** %18, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32* @iobus_get_regs(i32 %21)
  store i32* %22, i32** %20, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @SYS_RES_IOPORT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %68

26:                                               ; preds = %8
  %27 = load i32*, i32** %13, align 8
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %66 [
    i32 128, label %29
    i32 129, label %47
    i32 130, label %65
  ]

29:                                               ; preds = %26
  store i32 0, i32* %19, align 4
  %30 = load i32*, i32** %20, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @ATA_IOSIZE, align 4
  %35 = add nsw i32 %33, %34
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* @ATA_IOSIZE, align 4
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @device_get_parent(i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @SYS_RES_MEMORY, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %17, align 4
  %46 = call %struct.resource* @BUS_ALLOC_RESOURCE(i32 %39, i32 %40, i32 %41, i32* %19, i32 %42, i32 %43, i32 %44, i32 %45)
  store %struct.resource* %46, %struct.resource** %18, align 8
  br label %66

47:                                               ; preds = %26
  store i32 0, i32* %19, align 4
  %48 = load i32*, i32** %20, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 10
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @ATA_CTLIOSIZE, align 4
  %53 = add nsw i32 %51, %52
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* @ATA_CTLIOSIZE, align 4
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @device_get_parent(i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @SYS_RES_MEMORY, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %17, align 4
  %64 = call %struct.resource* @BUS_ALLOC_RESOURCE(i32 %57, i32 %58, i32 %59, i32* %19, i32 %60, i32 %61, i32 %62, i32 %63)
  store %struct.resource* %64, %struct.resource** %18, align 8
  br label %66

65:                                               ; preds = %26
  br label %66

66:                                               ; preds = %26, %65, %47, %29
  %67 = load %struct.resource*, %struct.resource** %18, align 8
  store %struct.resource* %67, %struct.resource** %9, align 8
  br label %86

68:                                               ; preds = %8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @SYS_RES_IRQ, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %68
  %73 = load i32*, i32** %13, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ATA_IRQ_RID, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @device_get_parent(i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @SYS_RES_IRQ, align 4
  %82 = load i32*, i32** %13, align 8
  %83 = load i32, i32* %17, align 4
  %84 = call %struct.resource* @BUS_ALLOC_RESOURCE(i32 %79, i32 %80, i32 %81, i32* %82, i32 0, i32 -1, i32 1, i32 %83)
  store %struct.resource* %84, %struct.resource** %9, align 8
  br label %86

85:                                               ; preds = %72, %68
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %86

86:                                               ; preds = %85, %77, %66
  %87 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %87
}

declare dso_local i32* @iobus_get_regs(i32) #1

declare dso_local %struct.resource* @BUS_ALLOC_RESOURCE(i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
