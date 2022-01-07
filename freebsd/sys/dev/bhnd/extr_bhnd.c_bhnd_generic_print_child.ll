; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd.c_bhnd_generic_print_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd.c_bhnd_generic_print_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_list = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%#jx\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%#jd\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" at core %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_generic_print_child(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource_list*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @bus_print_child_header(i32 %7, i32 %8)
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %11, %9
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.resource_list* @BUS_GET_RESOURCE_LIST(i32 %14, i32 %15)
  store %struct.resource_list* %16, %struct.resource_list** %5, align 8
  %17 = load %struct.resource_list*, %struct.resource_list** %5, align 8
  %18 = icmp ne %struct.resource_list* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %2
  %20 = load %struct.resource_list*, %struct.resource_list** %5, align 8
  %21 = load i32, i32* @SYS_RES_MEMORY, align 4
  %22 = call i64 @resource_list_print_type(%struct.resource_list* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load %struct.resource_list*, %struct.resource_list** %5, align 8
  %28 = load i32, i32* @SYS_RES_IRQ, align 4
  %29 = call i64 @resource_list_print_type(%struct.resource_list* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %19, %2
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @bhnd_get_core_index(i32 %35)
  %37 = call i64 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @bus_print_child_domain(i32 %42, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @bus_print_child_footer(i32 %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i64 @bus_print_child_header(i32, i32) #1

declare dso_local %struct.resource_list* @BUS_GET_RESOURCE_LIST(i32, i32) #1

declare dso_local i64 @resource_list_print_type(%struct.resource_list*, i8*, i32, i8*) #1

declare dso_local i64 @printf(i8*, i32) #1

declare dso_local i32 @bhnd_get_core_index(i32) #1

declare dso_local i64 @bus_print_child_domain(i32, i32) #1

declare dso_local i64 @bus_print_child_footer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
