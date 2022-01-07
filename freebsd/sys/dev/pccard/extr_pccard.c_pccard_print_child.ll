; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_print_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_print_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pccard_ivar = type { %struct.TYPE_4__*, %struct.resource_list }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.resource_list = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c" at\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@PCCARD_NPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%#lx\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"iomem\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@PCCARD_NMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@PCCARD_NIRQ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"drq\00", align 1
@SYS_RES_DRQ = common dso_local global i32 0, align 4
@PCCARD_NDRQ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c" function %d config %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @pccard_print_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pccard_print_child(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pccard_ivar*, align 8
  %6 = alloca %struct.resource_list*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.pccard_ivar* @PCCARD_IVAR(i32 %8)
  store %struct.pccard_ivar* %9, %struct.pccard_ivar** %5, align 8
  %10 = load %struct.pccard_ivar*, %struct.pccard_ivar** %5, align 8
  %11 = getelementptr inbounds %struct.pccard_ivar, %struct.pccard_ivar* %10, i32 0, i32 1
  store %struct.resource_list* %11, %struct.resource_list** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @bus_print_child_header(i32 %12, i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %16, %14
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load %struct.pccard_ivar*, %struct.pccard_ivar** %5, align 8
  %25 = icmp ne %struct.pccard_ivar* %24, null
  br i1 %25, label %26, label %60

26:                                               ; preds = %2
  %27 = load %struct.resource_list*, %struct.resource_list** %6, align 8
  %28 = load i32, i32* @SYS_RES_IOPORT, align 4
  %29 = load i32, i32* @PCCARD_NPORT, align 4
  %30 = call i32 @pccard_print_resources(%struct.resource_list* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.resource_list*, %struct.resource_list** %6, align 8
  %32 = load i32, i32* @SYS_RES_MEMORY, align 4
  %33 = load i32, i32* @PCCARD_NMEM, align 4
  %34 = call i32 @pccard_print_resources(%struct.resource_list* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %32, i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.resource_list*, %struct.resource_list** %6, align 8
  %36 = load i32, i32* @SYS_RES_IRQ, align 4
  %37 = load i32, i32* @PCCARD_NIRQ, align 4
  %38 = call i32 @pccard_print_resources(%struct.resource_list* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %36, i32 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %39 = load %struct.resource_list*, %struct.resource_list** %6, align 8
  %40 = load i32, i32* @SYS_RES_DRQ, align 4
  %41 = load i32, i32* @PCCARD_NDRQ, align 4
  %42 = call i32 @pccard_print_resources(%struct.resource_list* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %40, i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %43 = load %struct.pccard_ivar*, %struct.pccard_ivar** %5, align 8
  %44 = getelementptr inbounds %struct.pccard_ivar, %struct.pccard_ivar* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.pccard_ivar*, %struct.pccard_ivar** %5, align 8
  %49 = getelementptr inbounds %struct.pccard_ivar, %struct.pccard_ivar* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %47, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %26, %2
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i64 @bus_print_child_footer(i32 %61, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local %struct.pccard_ivar* @PCCARD_IVAR(i32) #1

declare dso_local i64 @bus_print_child_header(i32, i32) #1

declare dso_local i64 @printf(i8*, ...) #1

declare dso_local i32 @pccard_print_resources(%struct.resource_list*, i8*, i32, i32, i8*) #1

declare dso_local i64 @bus_print_child_footer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
