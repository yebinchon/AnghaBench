; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_attach_bridge.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb_subr.c_bhndb_attach_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"bhndb\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to detach bhndb child\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhndb_attach_bridge(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i32* @device_add_child(i32* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32**, i32*** %6, align 8
  store i32* %11, i32** %12, align 8
  %13 = load i32**, i32*** %6, align 8
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %4, align 4
  br label %35

18:                                               ; preds = %3
  %19 = load i32**, i32*** %6, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @device_probe_and_attach(i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %35

24:                                               ; preds = %18
  %25 = load i32*, i32** %5, align 8
  %26 = load i32**, i32*** %6, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @device_delete_child(i32* %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @device_printf(i32* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %23, %16
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32* @device_add_child(i32*, i8*, i32) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

declare dso_local i64 @device_delete_child(i32*, i32*) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
