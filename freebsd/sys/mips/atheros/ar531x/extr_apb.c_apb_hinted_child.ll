; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_apb.c_apb_hinted_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_apb.c_apb_hinted_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"maddr\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"msize\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Either maddr or msize hint is missing for %s%d\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"warning: bus_set_resource() failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @apb_hinted_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apb_hinted_child(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @BUS_ADD_CHILD(i32 %13, i32 0, i8* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @resource_long_value(i8* %17, i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64* %8)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* %12, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %12, align 4
  br label %24

24:                                               ; preds = %21, %3
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @resource_int_value(i8* %25, i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %9)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %12, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i32, i32* %12, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %39, i32 %40)
  br label %59

42:                                               ; preds = %35, %32
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @SYS_RES_MEMORY, align 4
  %48 = load i64, i64* %8, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @bus_set_resource(i32 %46, i32 %47, i32 0, i32 %49, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @device_printf(i32 %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %45
  br label %58

58:                                               ; preds = %57, %42
  br label %59

59:                                               ; preds = %58, %38
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @resource_int_value(i8* %60, i32 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %10)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @SYS_RES_IRQ, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @bus_set_resource(i32 %65, i32 %66, i32 0, i32 %67, i32 1)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @device_printf(i32 %72, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %64
  br label %75

75:                                               ; preds = %74, %59
  ret void
}

declare dso_local i32 @BUS_ADD_CHILD(i32, i32, i8*, i32) #1

declare dso_local i64 @resource_long_value(i8*, i32, i8*, i64*) #1

declare dso_local i64 @resource_int_value(i8*, i32, i8*, i32*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @bus_set_resource(i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
