; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_nexus.c_nexus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_nexus.c_nexus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i32, i64 }

@mem_rman = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@RMAN_ARRAY = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"I/O memory addresses\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"nexus_attach mem_rman\00", align 1
@irq_rman = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"Interrupts\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"nexus_attach irq_rman\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"rcons\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"ofwbus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nexus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nexus_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mem_rman, i32 0, i32 3), align 8
  %3 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mem_rman, i32 0, i32 2), align 8
  %4 = load i8*, i8** @RMAN_ARRAY, align 8
  store i8* %4, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mem_rman, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mem_rman, i32 0, i32 0), align 8
  %5 = call i64 @rman_init(%struct.TYPE_5__* @mem_rman)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %9 = call i64 @rman_manage_region(%struct.TYPE_5__* @mem_rman, i32 0, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7, %1
  %12 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %7
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @irq_rman, i32 0, i32 3), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @irq_rman, i32 0, i32 2), align 8
  %14 = load i8*, i8** @RMAN_ARRAY, align 8
  store i8* %14, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @irq_rman, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @irq_rman, i32 0, i32 0), align 8
  %15 = call i64 @rman_init(%struct.TYPE_5__* @irq_rman)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = call i64 @rman_manage_region(%struct.TYPE_5__* @irq_rman, i32 0, i32 -1)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %13
  %21 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @nexus_add_child(i32 %23, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @nexus_add_child(i32 %25, i32 9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @nexus_add_child(i32 %27, i32 10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @bus_generic_probe(i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @bus_generic_attach(i32 %31)
  ret i32 0
}

declare dso_local i64 @rman_init(%struct.TYPE_5__*) #1

declare dso_local i64 @rman_manage_region(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @nexus_add_child(i32, i32, i8*, i32) #1

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
