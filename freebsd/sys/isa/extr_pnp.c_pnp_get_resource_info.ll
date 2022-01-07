; ModuleID = '/home/carl/AnghaBench/freebsd/sys/isa/extr_pnp.c_pnp_get_resource_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/isa/extr_pnp.c_pnp_get_resource_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PNP_ADDRESS = common dso_local global i32 0, align 4
@PNP_STATUS = common dso_local global i32 0, align 4
@pnp_rd_port = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"PnP device failed to report resource data\0A\00", align 1
@PNP_RESOURCE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @pnp_get_resource_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnp_get_resource_info(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %59, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %62

14:                                               ; preds = %10
  %15 = load i32, i32* @_PNP_ADDRESS, align 4
  %16 = load i32, i32* @PNP_STATUS, align 4
  %17 = call i32 @outb(i32 %15, i32 %16)
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %31, %14
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 100
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load i32, i32* @pnp_rd_port, align 4
  %23 = shl i32 %22, 2
  %24 = or i32 %23, 3
  %25 = call i32 @inb(i32 %24)
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %34

29:                                               ; preds = %21
  %30 = call i32 @DELAY(i32 10)
  br label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %18

34:                                               ; preds = %28, %18
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 100
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %64

40:                                               ; preds = %34
  %41 = load i32, i32* @_PNP_ADDRESS, align 4
  %42 = load i32, i32* @PNP_RESOURCE_DATA, align 4
  %43 = call i32 @outb(i32 %41, i32 %42)
  %44 = load i32, i32* @pnp_rd_port, align 4
  %45 = shl i32 %44, 2
  %46 = or i32 %45, 3
  %47 = call i32 @inb(i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %40
  %51 = load i32, i32* %9, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %51, i32* %55, align 4
  br label %56

56:                                               ; preds = %50, %40
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %10

62:                                               ; preds = %10
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %37
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
