; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_attr_read_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard.c_pccard_attr_read_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pccard_ivar = type { %struct.pccard_function* }
%struct.pccard_function = type { i32, i32, i32, i32 }

@PCCARD_MEM_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @pccard_attr_read_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pccard_attr_read_impl(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pccard_ivar*, align 8
  %10 = alloca %struct.pccard_function*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.pccard_ivar* @PCCARD_IVAR(i32 %11)
  store %struct.pccard_ivar* %12, %struct.pccard_ivar** %9, align 8
  %13 = load %struct.pccard_ivar*, %struct.pccard_ivar** %9, align 8
  %14 = getelementptr inbounds %struct.pccard_ivar, %struct.pccard_ivar* %13, i32 0, i32 0
  %15 = load %struct.pccard_function*, %struct.pccard_function** %14, align 8
  store %struct.pccard_function* %15, %struct.pccard_function** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @PCCARD_MEM_PAGE_SIZE, align 4
  %18 = sdiv i32 %16, %17
  %19 = load %struct.pccard_function*, %struct.pccard_function** %10, align 8
  %20 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PCCARD_MEM_PAGE_SIZE, align 4
  %23 = sdiv i32 %21, %22
  %24 = icmp eq i32 %18, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %4
  %26 = load %struct.pccard_function*, %struct.pccard_function** %10, align 8
  %27 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pccard_function*, %struct.pccard_function** %10, align 8
  %30 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @PCCARD_MEM_PAGE_SIZE, align 4
  %34 = srem i32 %32, %33
  %35 = call i32 @bus_space_read_1(i32 %28, i32 %31, i32 %34)
  %36 = load i32*, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  br label %63

37:                                               ; preds = %4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.pccard_function*, %struct.pccard_function** %10, align 8
  %41 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @CARD_SET_MEMORY_OFFSET(i32 %38, i32 %39, i32 %42, i32 %43, i32* %7)
  %45 = load %struct.pccard_function*, %struct.pccard_function** %10, align 8
  %46 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pccard_function*, %struct.pccard_function** %10, align 8
  %49 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @bus_space_read_1(i32 %47, i32 %50, i32 %51)
  %53 = load i32*, i32** %8, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.pccard_function*, %struct.pccard_function** %10, align 8
  %57 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.pccard_function*, %struct.pccard_function** %10, align 8
  %60 = getelementptr inbounds %struct.pccard_function, %struct.pccard_function* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @CARD_SET_MEMORY_OFFSET(i32 %54, i32 %55, i32 %58, i32 %61, i32* %7)
  br label %63

63:                                               ; preds = %37, %25
  ret i32 0
}

declare dso_local %struct.pccard_ivar* @PCCARD_IVAR(i32) #1

declare dso_local i32 @bus_space_read_1(i32, i32, i32) #1

declare dso_local i32 @CARD_SET_MEMORY_OFFSET(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
