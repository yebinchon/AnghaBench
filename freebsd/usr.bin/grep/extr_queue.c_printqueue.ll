; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/grep/extr_queue.c_printqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/grep/extr_queue.c_printqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.qentry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printqueue() #0 {
  %1 = alloca %struct.qentry*, align 8
  br label %2

2:                                                ; preds = %5, %0
  %3 = call %struct.qentry* (...) @dequeue()
  store %struct.qentry* %3, %struct.qentry** %1, align 8
  %4 = icmp ne %struct.qentry* %3, null
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  %6 = load %struct.qentry*, %struct.qentry** %1, align 8
  %7 = getelementptr inbounds %struct.qentry, %struct.qentry* %6, i32 0, i32 0
  %8 = call i32 @grep_printline(%struct.TYPE_2__* %7, i8 signext 45)
  %9 = load %struct.qentry*, %struct.qentry** %1, align 8
  %10 = getelementptr inbounds %struct.qentry, %struct.qentry* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.qentry*, %struct.qentry** %11, align 8
  %13 = call i32 @free(%struct.qentry* %12)
  %14 = load %struct.qentry*, %struct.qentry** %1, align 8
  %15 = call i32 @free(%struct.qentry* %14)
  br label %2

16:                                               ; preds = %2
  ret void
}

declare dso_local %struct.qentry* @dequeue(...) #1

declare dso_local i32 @grep_printline(%struct.TYPE_2__*, i8 signext) #1

declare dso_local i32 @free(%struct.qentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
