; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_macio.c_macio_add_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_macio.c_macio_add_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macio_devinfo = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [42 x i8] c"macio: device has more than 6 interrupts\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"AAPL,interrupts\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"interrupt-parent\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Interrupt but no interrupt parent!\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"#interrupt-cells\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.macio_devinfo*)* @macio_add_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macio_add_intr(i32 %0, %struct.macio_devinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.macio_devinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.macio_devinfo* %1, %struct.macio_devinfo** %4, align 8
  %11 = load %struct.macio_devinfo*, %struct.macio_devinfo** %4, align 8
  %12 = getelementptr inbounds %struct.macio_devinfo, %struct.macio_devinfo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sge i32 %13, 6
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %88

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = bitcast i32** %6 to i8**
  %20 = call i32 @OF_getprop_alloc_multi(i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 4, i8** %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4
  %25 = bitcast i32** %6 to i8**
  %26 = call i32 @OF_getprop_alloc_multi(i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 4, i8** %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %88

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %17
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %88

37:                                               ; preds = %31
  %38 = load i32, i32* %3, align 4
  %39 = call i64 @OF_getprop(i32 %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* %5, i32 4)
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @OF_node_from_xref(i32 %44)
  %46 = call i64 @OF_getprop(i32 %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32* %9, i32 4)
  %47 = icmp sle i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* %9, align 4
  br label %49

49:                                               ; preds = %48, %43
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %84, %49
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %88

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @MAP_IRQ(i32 %55, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load %struct.macio_devinfo*, %struct.macio_devinfo** %4, align 8
  %63 = getelementptr inbounds %struct.macio_devinfo, %struct.macio_devinfo* %62, i32 0, i32 2
  %64 = load i32, i32* @SYS_RES_IRQ, align 4
  %65 = load %struct.macio_devinfo*, %struct.macio_devinfo** %4, align 8
  %66 = getelementptr inbounds %struct.macio_devinfo, %struct.macio_devinfo* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @resource_list_add(i32* %63, i32 %64, i32 %67, i32 %68, i32 %69, i32 1)
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.macio_devinfo*, %struct.macio_devinfo** %4, align 8
  %73 = getelementptr inbounds %struct.macio_devinfo, %struct.macio_devinfo* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.macio_devinfo*, %struct.macio_devinfo** %4, align 8
  %76 = getelementptr inbounds %struct.macio_devinfo, %struct.macio_devinfo* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  store i32 %71, i32* %79, align 4
  %80 = load %struct.macio_devinfo*, %struct.macio_devinfo** %4, align 8
  %81 = getelementptr inbounds %struct.macio_devinfo, %struct.macio_devinfo* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %54
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %7, align 4
  br label %50

88:                                               ; preds = %15, %29, %36, %50
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @OF_getprop_alloc_multi(i32, i8*, i32, i8**) #1

declare dso_local i64 @OF_getprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @OF_node_from_xref(i32) #1

declare dso_local i32 @MAP_IRQ(i32, i32) #1

declare dso_local i32 @resource_list_add(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
