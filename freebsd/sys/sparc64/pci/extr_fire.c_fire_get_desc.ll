; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_get_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_get_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fire_desc = type { i32* }

@fire_compats = common dso_local global %struct.fire_desc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fire_desc* (i32)* @fire_get_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fire_desc* @fire_get_desc(i32 %0) #0 {
  %2 = alloca %struct.fire_desc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fire_desc*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i8* @ofw_bus_get_compat(i32 %6)
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.fire_desc* null, %struct.fire_desc** %2, align 8
  br label %32

11:                                               ; preds = %1
  %12 = load %struct.fire_desc*, %struct.fire_desc** @fire_compats, align 8
  store %struct.fire_desc* %12, %struct.fire_desc** %4, align 8
  br label %13

13:                                               ; preds = %28, %11
  %14 = load %struct.fire_desc*, %struct.fire_desc** %4, align 8
  %15 = getelementptr inbounds %struct.fire_desc, %struct.fire_desc* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load %struct.fire_desc*, %struct.fire_desc** %4, align 8
  %20 = getelementptr inbounds %struct.fire_desc, %struct.fire_desc* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @strcmp(i32* %21, i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load %struct.fire_desc*, %struct.fire_desc** %4, align 8
  store %struct.fire_desc* %26, %struct.fire_desc** %2, align 8
  br label %32

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.fire_desc*, %struct.fire_desc** %4, align 8
  %30 = getelementptr inbounds %struct.fire_desc, %struct.fire_desc* %29, i32 1
  store %struct.fire_desc* %30, %struct.fire_desc** %4, align 8
  br label %13

31:                                               ; preds = %13
  store %struct.fire_desc* null, %struct.fire_desc** %2, align 8
  br label %32

32:                                               ; preds = %31, %25, %10
  %33 = load %struct.fire_desc*, %struct.fire_desc** %2, align 8
  ret %struct.fire_desc* %33
}

declare dso_local i8* @ofw_bus_get_compat(i32) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
