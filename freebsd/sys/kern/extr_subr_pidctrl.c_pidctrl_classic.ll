; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_pidctrl.c_pidctrl_classic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_pidctrl.c_pidctrl_classic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ticks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pidctrl_classic(%struct.pidctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.pidctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pidctrl* %0, %struct.pidctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %11 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @ticks, align 4
  %16 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %17 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %16, i32 0, i32 11
  store i32 %15, i32* %17, align 4
  %18 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %19 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %22 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %24 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @MAX(i32 %25, i32 1)
  %27 = ptrtoint i8* %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %29 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @MAX(i32 %30, i32 1)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %8, align 4
  %33 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %34 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @MAX(i32 %35, i32 1)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %40 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %42 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %43, %44
  %46 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %47 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @MIN(i32 %45, i32 %48)
  %50 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %51 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 0, %52
  %54 = call i8* @MAX(i32 %49, i32 %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %57 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %60 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %58, %61
  %63 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %64 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %66 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = sdiv i32 %67, %68
  %70 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %71 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sdiv i32 %72, %73
  %75 = add nsw i32 %69, %74
  %76 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %77 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %9, align 4
  %80 = sdiv i32 %78, %79
  %81 = add nsw i32 %75, %80
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %84 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %87 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i8* @MAX(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
