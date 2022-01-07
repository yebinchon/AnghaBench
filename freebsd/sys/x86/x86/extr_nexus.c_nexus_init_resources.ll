; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_nexus.c_nexus_init_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_nexus.c_nexus_init_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i32, i8* }

@irq_rman = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@RMAN_ARRAY = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Interrupt request lines\00", align 1
@num_io_irqs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"nexus_init_resources irq_rman\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"nexus_init_resources irq_rman add\00", align 1
@drq_rman = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"DMA request lines\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"nexus_init_resources drq_rman\00", align 1
@port_rman = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"I/O ports\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"nexus_init_resources port_rman\00", align 1
@mem_rman = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"I/O memory addresses\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"nexus_init_resources mem_rman\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nexus_init_resources() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @irq_rman, i32 0, i32 0), align 8
  %2 = load i8*, i8** @RMAN_ARRAY, align 8
  store i8* %2, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @irq_rman, i32 0, i32 3), align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @irq_rman, i32 0, i32 1), align 8
  %3 = load i32, i32* @num_io_irqs, align 4
  %4 = sub nsw i32 %3, 1
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @irq_rman, i32 0, i32 2), align 8
  %5 = call i64 @rman_init(%struct.TYPE_7__* @irq_rman)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %0
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %27, %9
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @num_io_irqs, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load i32, i32* %1, align 4
  %16 = call i32* @intr_lookup_source(i32 %15)
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i64 @rman_manage_region(%struct.TYPE_7__* @irq_rman, i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %18
  br label %26

26:                                               ; preds = %25, %14
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %1, align 4
  br label %10

30:                                               ; preds = %10
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @drq_rman, i32 0, i32 0), align 8
  store i32 7, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @drq_rman, i32 0, i32 2), align 8
  %31 = load i8*, i8** @RMAN_ARRAY, align 8
  store i8* %31, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @drq_rman, i32 0, i32 3), align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @drq_rman, i32 0, i32 1), align 8
  %32 = call i64 @rman_init(%struct.TYPE_7__* @drq_rman)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @drq_rman, i32 0, i32 0), align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @drq_rman, i32 0, i32 2), align 8
  %37 = call i64 @rman_manage_region(%struct.TYPE_7__* @drq_rman, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34, %30
  %40 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %34
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @port_rman, i32 0, i32 0), align 8
  store i32 65535, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @port_rman, i32 0, i32 2), align 8
  %42 = load i8*, i8** @RMAN_ARRAY, align 8
  store i8* %42, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @port_rman, i32 0, i32 3), align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @port_rman, i32 0, i32 1), align 8
  %43 = call i64 @rman_init(%struct.TYPE_7__* @port_rman)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = call i64 @rman_manage_region(%struct.TYPE_7__* @port_rman, i32 0, i32 65535)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45, %41
  %49 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %45
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mem_rman, i32 0, i32 0), align 8
  %51 = call i32 (...) @cpu_getmaxphyaddr()
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mem_rman, i32 0, i32 2), align 8
  %52 = load i8*, i8** @RMAN_ARRAY, align 8
  store i8* %52, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mem_rman, i32 0, i32 3), align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mem_rman, i32 0, i32 1), align 8
  %53 = call i64 @rman_init(%struct.TYPE_7__* @mem_rman)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mem_rman, i32 0, i32 2), align 8
  %57 = call i64 @rman_manage_region(%struct.TYPE_7__* @mem_rman, i32 0, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55, %50
  %60 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %55
  ret void
}

declare dso_local i64 @rman_init(%struct.TYPE_7__*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32* @intr_lookup_source(i32) #1

declare dso_local i64 @rman_manage_region(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @cpu_getmaxphyaddr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
