; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_nexus.c_nexus_print_all_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_nexus.c_nexus_print_all_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nexus_device = type { %struct.resource_list }
%struct.resource_list = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c" at\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%#jx\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%jd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nexus_print_all_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nexus_print_all_resources(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nexus_device*, align 8
  %4 = alloca %struct.resource_list*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.nexus_device* @DEVTONX(i32 %6)
  store %struct.nexus_device* %7, %struct.nexus_device** %3, align 8
  %8 = load %struct.nexus_device*, %struct.nexus_device** %3, align 8
  %9 = getelementptr inbounds %struct.nexus_device, %struct.nexus_device* %8, i32 0, i32 0
  store %struct.resource_list* %9, %struct.resource_list** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.resource_list*, %struct.resource_list** %4, align 8
  %11 = call i64 @STAILQ_FIRST(%struct.resource_list* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = call i64 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %16, %14
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.resource_list*, %struct.resource_list** %4, align 8
  %21 = load i32, i32* @SYS_RES_MEMORY, align 4
  %22 = call i64 @resource_list_print_type(%struct.resource_list* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %5, align 4
  %27 = load %struct.resource_list*, %struct.resource_list** %4, align 8
  %28 = load i32, i32* @SYS_RES_IRQ, align 4
  %29 = call i64 @resource_list_print_type(%struct.resource_list* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.nexus_device* @DEVTONX(i32) #1

declare dso_local i64 @STAILQ_FIRST(%struct.resource_list*) #1

declare dso_local i64 @printf(i8*) #1

declare dso_local i64 @resource_list_print_type(%struct.resource_list*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
