; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_names.c_tailof.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_names.c_tailof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name = type { %struct.name* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.name* @tailof(%struct.name* %0) #0 {
  %2 = alloca %struct.name*, align 8
  %3 = alloca %struct.name*, align 8
  %4 = alloca %struct.name*, align 8
  store %struct.name* %0, %struct.name** %3, align 8
  %5 = load %struct.name*, %struct.name** %3, align 8
  store %struct.name* %5, %struct.name** %4, align 8
  %6 = load %struct.name*, %struct.name** %4, align 8
  %7 = icmp eq %struct.name* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.name* null, %struct.name** %2, align 8
  br label %21

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %15, %9
  %11 = load %struct.name*, %struct.name** %4, align 8
  %12 = getelementptr inbounds %struct.name, %struct.name* %11, i32 0, i32 0
  %13 = load %struct.name*, %struct.name** %12, align 8
  %14 = icmp ne %struct.name* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.name*, %struct.name** %4, align 8
  %17 = getelementptr inbounds %struct.name, %struct.name* %16, i32 0, i32 0
  %18 = load %struct.name*, %struct.name** %17, align 8
  store %struct.name* %18, %struct.name** %4, align 8
  br label %10

19:                                               ; preds = %10
  %20 = load %struct.name*, %struct.name** %4, align 8
  store %struct.name* %20, %struct.name** %2, align 8
  br label %21

21:                                               ; preds = %19, %8
  %22 = load %struct.name*, %struct.name** %2, align 8
  ret %struct.name* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
