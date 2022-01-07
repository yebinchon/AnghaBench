; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator.c_creator_bus_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator.c_creator_bus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"SUNW,ffb\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"board_type\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Creator\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Creator3D\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"SUNW,afb\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Elite3D\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @creator_bus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @creator_bus_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i8* @ofw_bus_get_name(i32 %7)
  store i8* %8, i8** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @ofw_bus_get_node(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @OF_getprop(i32 %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %6, i32 4)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %44

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 7
  switch i32 %22, label %29 [
    i32 0, label %23
    i32 3, label %26
  ]

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @device_set_desc(i32 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %31

26:                                               ; preds = %20
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_set_desc(i32 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %44

31:                                               ; preds = %26, %23
  br label %42

32:                                               ; preds = %1
  %33 = load i8*, i8** %4, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @device_set_desc(i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %2, align 4
  br label %44

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %39, %29, %18
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i8* @ofw_bus_get_name(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @OF_getprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
