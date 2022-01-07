; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_pidctrl.c_pidctrl_daemon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_pidctrl.c_pidctrl_daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidctrl = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ticks = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pidctrl_daemon(%struct.pidctrl* %0, i32 %1) #0 {
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
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i64, i64* @ticks, align 8
  %16 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %17 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %21 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %2
  %25 = load i64, i64* @ticks, align 8
  %26 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %27 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %29 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %32 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %34 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %33, i32 0, i32 4
  store i32 0, i32* %34, align 4
  %35 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %36 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %35, i32 0, i32 5
  store i32 0, i32* %36, align 8
  br label %47

37:                                               ; preds = %2
  %38 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %39 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %42 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %40, %43
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %37, %24
  %48 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %49 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @MAX(i32 %50, i32 1)
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* %7, align 4
  %53 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %54 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @MAX(i32 %55, i32 1)
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* %8, align 4
  %58 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %59 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @MAX(i32 %60, i32 1)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %65 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %69 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %68, i32 0, i32 9
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %70, %71
  %73 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %74 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %73, i32 0, i32 12
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @MIN(i32 %72, i32 %75)
  %77 = call i8* @MAX(i32 %76, i32 0)
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %80 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %79, i32 0, i32 9
  store i32 %78, i32* %80, align 8
  %81 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %82 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %85 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %83, %86
  %88 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %89 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %88, i32 0, i32 10
  store i32 %87, i32* %89, align 4
  %90 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %91 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %7, align 4
  %94 = sdiv i32 %92, %93
  %95 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %96 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %95, i32 0, i32 9
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sdiv i32 %97, %98
  %100 = add nsw i32 %94, %99
  %101 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %102 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %101, i32 0, i32 10
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %9, align 4
  %105 = sdiv i32 %103, %104
  %106 = add nsw i32 %100, %105
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %109 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %107, %110
  %112 = call i8* @MAX(i32 %111, i32 0)
  %113 = ptrtoint i8* %112 to i32
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %116 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, %114
  store i32 %118, i32* %116, align 8
  %119 = load i32, i32* %4, align 4
  %120 = load %struct.pidctrl*, %struct.pidctrl** %3, align 8
  %121 = getelementptr inbounds %struct.pidctrl, %struct.pidctrl* %120, i32 0, i32 11
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i8* @MAX(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
