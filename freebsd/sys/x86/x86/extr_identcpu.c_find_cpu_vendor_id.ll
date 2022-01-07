; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_identcpu.c_find_cpu_vendor_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_identcpu.c_find_cpu_vendor_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@cpu_vendors = common dso_local global %struct.TYPE_3__* null, align 8
@cpu_vendor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @find_cpu_vendor_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_cpu_vendor_id() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %26, %0
  %4 = load i32, i32* %2, align 4
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpu_vendors, align 8
  %6 = call i32 @nitems(%struct.TYPE_3__* %5)
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %29

8:                                                ; preds = %3
  %9 = load i32, i32* @cpu_vendor, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpu_vendors, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @strcmp(i32 %9, i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpu_vendors, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %1, align 4
  br label %30

25:                                               ; preds = %8
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  br label %3

29:                                               ; preds = %3
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %29, %18
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
