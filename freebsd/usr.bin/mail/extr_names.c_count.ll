; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_names.c_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_names.c_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name = type { i32, %struct.name* }

@GDEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @count(%struct.name* %0) #0 {
  %2 = alloca %struct.name*, align 8
  %3 = alloca i32, align 4
  store %struct.name* %0, %struct.name** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %18, %1
  %5 = load %struct.name*, %struct.name** %2, align 8
  %6 = icmp ne %struct.name* %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = load %struct.name*, %struct.name** %2, align 8
  %9 = getelementptr inbounds %struct.name, %struct.name* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @GDEL, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %14, %7
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.name*, %struct.name** %2, align 8
  %20 = getelementptr inbounds %struct.name, %struct.name* %19, i32 0, i32 1
  %21 = load %struct.name*, %struct.name** %20, align 8
  store %struct.name* %21, %struct.name** %2, align 8
  br label %4

22:                                               ; preds = %4
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
