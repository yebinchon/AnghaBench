; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_deactivate_bhnd_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_deactivate_bhnd_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_resource = type { i32, i32 }

@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"RF_ACTIVE not set on direct resource\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.bhnd_resource*)* @bhndb_deactivate_bhnd_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhndb_deactivate_bhnd_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.bhnd_resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bhnd_resource*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.bhnd_resource* %4, %struct.bhnd_resource** %11, align 8
  %13 = load %struct.bhnd_resource*, %struct.bhnd_resource** %11, align 8
  %14 = getelementptr inbounds %struct.bhnd_resource, %struct.bhnd_resource* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %41

18:                                               ; preds = %5
  %19 = load %struct.bhnd_resource*, %struct.bhnd_resource** %11, align 8
  %20 = getelementptr inbounds %struct.bhnd_resource, %struct.bhnd_resource* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @rman_get_flags(i32 %21)
  %23 = load i32, i32* @RF_ACTIVE, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.bhnd_resource*, %struct.bhnd_resource** %11, align 8
  %31 = getelementptr inbounds %struct.bhnd_resource, %struct.bhnd_resource* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @BUS_DEACTIVATE_RESOURCE(i32 %26, i32 %27, i32 %28, i32 %29, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %18
  %37 = load %struct.bhnd_resource*, %struct.bhnd_resource** %11, align 8
  %38 = getelementptr inbounds %struct.bhnd_resource, %struct.bhnd_resource* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %18
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %39, %17
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @rman_get_flags(i32) #1

declare dso_local i32 @BUS_DEACTIVATE_RESOURCE(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
