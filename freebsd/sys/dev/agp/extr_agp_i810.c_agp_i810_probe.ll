; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i810_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i810_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_i810_match = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*)*, i32 (i32*, %struct.agp_i810_match*)* }

@.str = private unnamed_addr constant [4 x i8] c"agp\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"I810: can't find bridge device\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"i810: disabled, not probing\0A\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @agp_i810_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_i810_probe(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.agp_i810_match*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @device_get_unit(i32* %7)
  %9 = call i64 @resource_disabled(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %2, align 4
  br label %59

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call %struct.agp_i810_match* @agp_i810_match(i32* %14)
  store %struct.agp_i810_match* %15, %struct.agp_i810_match** %5, align 8
  %16 = load %struct.agp_i810_match*, %struct.agp_i810_match** %5, align 8
  %17 = icmp eq %struct.agp_i810_match* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %59

20:                                               ; preds = %13
  %21 = load i32*, i32** %3, align 8
  %22 = call i32* @agp_i810_find_bridge(i32* %21)
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i64, i64* @bootverbose, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %59

32:                                               ; preds = %20
  %33 = load %struct.agp_i810_match*, %struct.agp_i810_match** %5, align 8
  %34 = getelementptr inbounds %struct.agp_i810_match, %struct.agp_i810_match* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (i32*)*, i32 (i32*)** %36, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 %37(i32* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %32
  %43 = load i64, i64* @bootverbose, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %42
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %59

49:                                               ; preds = %32
  %50 = load %struct.agp_i810_match*, %struct.agp_i810_match** %5, align 8
  %51 = getelementptr inbounds %struct.agp_i810_match, %struct.agp_i810_match* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32 (i32*, %struct.agp_i810_match*)*, i32 (i32*, %struct.agp_i810_match*)** %53, align 8
  %55 = load i32*, i32** %3, align 8
  %56 = load %struct.agp_i810_match*, %struct.agp_i810_match** %5, align 8
  %57 = call i32 %54(i32* %55, %struct.agp_i810_match* %56)
  %58 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %49, %47, %30, %18, %11
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i64 @resource_disabled(i8*, i32) #1

declare dso_local i32 @device_get_unit(i32*) #1

declare dso_local %struct.agp_i810_match* @agp_i810_match(i32*) #1

declare dso_local i32* @agp_i810_find_bridge(i32*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
