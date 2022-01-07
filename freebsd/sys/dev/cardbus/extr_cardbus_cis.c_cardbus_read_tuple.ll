; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_cis.c_cardbus_read_tuple.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_cis.c_cardbus_read_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@CIS_CONFIG_SPACE = common dso_local global %struct.resource* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.resource*, i32, i32*, i32*, i32*, i32*)* @cardbus_read_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cardbus_read_tuple(i32 %0, i32 %1, %struct.resource* %2, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store %struct.resource* %2, %struct.resource** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %18 = load %struct.resource*, %struct.resource** %12, align 8
  %19 = load %struct.resource*, %struct.resource** @CIS_CONFIG_SPACE, align 8
  %20 = icmp eq %struct.resource* %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32*, i32** %14, align 8
  %26 = load i32*, i32** %15, align 8
  %27 = load i32*, i32** %16, align 8
  %28 = load i32*, i32** %17, align 8
  %29 = call i32 @cardbus_read_tuple_conf(i32 %22, i32 %23, i32 %24, i32* %25, i32* %26, i32* %27, i32* %28)
  store i32 %29, i32* %9, align 4
  br label %39

30:                                               ; preds = %8
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.resource*, %struct.resource** %12, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load i32*, i32** %14, align 8
  %35 = load i32*, i32** %15, align 8
  %36 = load i32*, i32** %16, align 8
  %37 = load i32*, i32** %17, align 8
  %38 = call i32 @cardbus_read_tuple_mem(i32 %31, %struct.resource* %32, i32 %33, i32* %34, i32* %35, i32* %36, i32* %37)
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %30, %21
  %40 = load i32, i32* %9, align 4
  ret i32 %40
}

declare dso_local i32 @cardbus_read_tuple_conf(i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @cardbus_read_tuple_mem(i32, %struct.resource*, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
