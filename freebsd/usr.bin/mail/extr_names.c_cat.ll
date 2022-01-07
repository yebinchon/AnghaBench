; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_names.c_cat.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_names.c_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name = type { %struct.name*, %struct.name* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.name* @cat(%struct.name* %0, %struct.name* %1) #0 {
  %3 = alloca %struct.name*, align 8
  %4 = alloca %struct.name*, align 8
  %5 = alloca %struct.name*, align 8
  %6 = alloca %struct.name*, align 8
  store %struct.name* %0, %struct.name** %4, align 8
  store %struct.name* %1, %struct.name** %5, align 8
  %7 = load %struct.name*, %struct.name** %4, align 8
  %8 = icmp eq %struct.name* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load %struct.name*, %struct.name** %5, align 8
  store %struct.name* %10, %struct.name** %3, align 8
  br label %26

11:                                               ; preds = %2
  %12 = load %struct.name*, %struct.name** %5, align 8
  %13 = icmp eq %struct.name* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load %struct.name*, %struct.name** %4, align 8
  store %struct.name* %15, %struct.name** %3, align 8
  br label %26

16:                                               ; preds = %11
  %17 = load %struct.name*, %struct.name** %4, align 8
  %18 = call %struct.name* @tailof(%struct.name* %17)
  store %struct.name* %18, %struct.name** %6, align 8
  %19 = load %struct.name*, %struct.name** %5, align 8
  %20 = load %struct.name*, %struct.name** %6, align 8
  %21 = getelementptr inbounds %struct.name, %struct.name* %20, i32 0, i32 1
  store %struct.name* %19, %struct.name** %21, align 8
  %22 = load %struct.name*, %struct.name** %6, align 8
  %23 = load %struct.name*, %struct.name** %5, align 8
  %24 = getelementptr inbounds %struct.name, %struct.name* %23, i32 0, i32 0
  store %struct.name* %22, %struct.name** %24, align 8
  %25 = load %struct.name*, %struct.name** %4, align 8
  store %struct.name* %25, %struct.name** %3, align 8
  br label %26

26:                                               ; preds = %16, %14, %9
  %27 = load %struct.name*, %struct.name** %3, align 8
  ret %struct.name* %27
}

declare dso_local %struct.name* @tailof(%struct.name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
