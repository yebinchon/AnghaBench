; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_devaddq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_devaddq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@devctl_queue_length = common dso_local global i32 0, align 4
@M_BUS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%s%s at %s %s on %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @devaddq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devaddq(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %11 = load i32, i32* @devctl_queue_length, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %78

14:                                               ; preds = %3
  %15 = load i32, i32* @M_BUS, align 4
  %16 = load i32, i32* @M_NOWAIT, align 4
  %17 = call i8* @malloc(i32 1024, i32 %15, i32 %16)
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %68

21:                                               ; preds = %14
  %22 = load i32, i32* @M_BUS, align 4
  %23 = load i32, i32* @M_NOWAIT, align 4
  %24 = call i8* @malloc(i32 1024, i32 %22, i32 %23)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %68

28:                                               ; preds = %21
  %29 = load i8*, i8** %8, align 8
  store i8 0, i8* %29, align 1
  %30 = load i32, i32* %6, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @bus_child_location_str(i32 %30, i8* %31, i32 1024)
  %33 = load i32, i32* @M_BUS, align 4
  %34 = load i32, i32* @M_NOWAIT, align 4
  %35 = call i8* @malloc(i32 1024, i32 %33, i32 %34)
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %68

39:                                               ; preds = %28
  %40 = load i8*, i8** %9, align 8
  store i8 0, i8* %40, align 1
  %41 = load i32, i32* %6, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @bus_child_pnpinfo_str(i32 %41, i8* %42, i32 1024)
  %44 = load i32, i32* %6, align 4
  %45 = call i32* @device_get_parent(i32 %44)
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %52

48:                                               ; preds = %39
  %49 = load i32, i32* %6, align 4
  %50 = call i32* @device_get_parent(i32 %49)
  %51 = call i8* @device_get_nameunit(i32* %50)
  store i8* %51, i8** %10, align 8
  br label %52

52:                                               ; preds = %48, %47
  %53 = load i8*, i8** %7, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @snprintf(i8* %53, i32 1024, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %54, i8* %55, i8* %56, i8* %57, i8* %58)
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* @M_BUS, align 4
  %62 = call i32 @free(i8* %60, i32 %61)
  %63 = load i8*, i8** %9, align 8
  %64 = load i32, i32* @M_BUS, align 4
  %65 = call i32 @free(i8* %63, i32 %64)
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @devctl_queue_data(i8* %66)
  br label %78

68:                                               ; preds = %38, %27, %20
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* @M_BUS, align 4
  %71 = call i32 @free(i8* %69, i32 %70)
  %72 = load i8*, i8** %8, align 8
  %73 = load i32, i32* @M_BUS, align 4
  %74 = call i32 @free(i8* %72, i32 %73)
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* @M_BUS, align 4
  %77 = call i32 @free(i8* %75, i32 %76)
  br label %78

78:                                               ; preds = %68, %52, %13
  ret void
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @bus_child_location_str(i32, i8*, i32) #1

declare dso_local i32 @bus_child_pnpinfo_str(i32, i8*, i32) #1

declare dso_local i32* @device_get_parent(i32) #1

declare dso_local i8* @device_get_nameunit(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @devctl_queue_data(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
