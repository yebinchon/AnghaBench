; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sbus/extr_sbus.c_sbus_print_res.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sbus/extr_sbus.c_sbus_print_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbus_devinfo = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%#jx\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%jd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbus_devinfo*)* @sbus_print_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbus_print_res(%struct.sbus_devinfo* %0) #0 {
  %2 = alloca %struct.sbus_devinfo*, align 8
  %3 = alloca i32, align 4
  store %struct.sbus_devinfo* %0, %struct.sbus_devinfo** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.sbus_devinfo*, %struct.sbus_devinfo** %2, align 8
  %5 = getelementptr inbounds %struct.sbus_devinfo, %struct.sbus_devinfo* %4, i32 0, i32 0
  %6 = load i32, i32* @SYS_RES_MEMORY, align 4
  %7 = call i64 @resource_list_print_type(i32* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %9, %7
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %3, align 4
  %12 = load %struct.sbus_devinfo*, %struct.sbus_devinfo** %2, align 8
  %13 = getelementptr inbounds %struct.sbus_devinfo, %struct.sbus_devinfo* %12, i32 0, i32 0
  %14 = load i32, i32* @SYS_RES_IRQ, align 4
  %15 = call i64 @resource_list_print_type(i32* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i64 @resource_list_print_type(i32*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
