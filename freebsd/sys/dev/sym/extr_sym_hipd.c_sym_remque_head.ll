; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_remque_head.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_remque_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_quehead = type { %struct.sym_quehead* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sym_quehead* (%struct.sym_quehead*)* @sym_remque_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sym_quehead* @sym_remque_head(%struct.sym_quehead* %0) #0 {
  %2 = alloca %struct.sym_quehead*, align 8
  %3 = alloca %struct.sym_quehead*, align 8
  store %struct.sym_quehead* %0, %struct.sym_quehead** %2, align 8
  %4 = load %struct.sym_quehead*, %struct.sym_quehead** %2, align 8
  %5 = getelementptr inbounds %struct.sym_quehead, %struct.sym_quehead* %4, i32 0, i32 0
  %6 = load %struct.sym_quehead*, %struct.sym_quehead** %5, align 8
  store %struct.sym_quehead* %6, %struct.sym_quehead** %3, align 8
  %7 = load %struct.sym_quehead*, %struct.sym_quehead** %3, align 8
  %8 = load %struct.sym_quehead*, %struct.sym_quehead** %2, align 8
  %9 = icmp ne %struct.sym_quehead* %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.sym_quehead*, %struct.sym_quehead** %2, align 8
  %12 = load %struct.sym_quehead*, %struct.sym_quehead** %3, align 8
  %13 = getelementptr inbounds %struct.sym_quehead, %struct.sym_quehead* %12, i32 0, i32 0
  %14 = load %struct.sym_quehead*, %struct.sym_quehead** %13, align 8
  %15 = call i32 @__sym_que_del(%struct.sym_quehead* %11, %struct.sym_quehead* %14)
  br label %17

16:                                               ; preds = %1
  store %struct.sym_quehead* null, %struct.sym_quehead** %3, align 8
  br label %17

17:                                               ; preds = %16, %10
  %18 = load %struct.sym_quehead*, %struct.sym_quehead** %3, align 8
  ret %struct.sym_quehead* %18
}

declare dso_local i32 @__sym_que_del(%struct.sym_quehead*, %struct.sym_quehead*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
