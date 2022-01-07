; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.number = type { i32 }
%struct.value = type { i32 }

@bmachine = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load() #0 {
  %1 = alloca %struct.number*, align 8
  %2 = alloca %struct.value*, align 8
  %3 = alloca %struct.value, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @readreg()
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %0
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 0), align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = call %struct.value* @stack_tos(i32* %12)
  store %struct.value* %13, %struct.value** %2, align 8
  %14 = load %struct.value*, %struct.value** %2, align 8
  %15 = icmp eq %struct.value* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %8
  %17 = call %struct.number* (...) @new_number()
  store %struct.number* %17, %struct.number** %1, align 8
  %18 = load %struct.number*, %struct.number** %1, align 8
  %19 = getelementptr inbounds %struct.number, %struct.number* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @BN_zero(i32 %20)
  %22 = call i32 @bn_check(i32 %21)
  %23 = load %struct.number*, %struct.number** %1, align 8
  %24 = call i32 @push_number(%struct.number* %23)
  br label %29

25:                                               ; preds = %8
  %26 = load %struct.value*, %struct.value** %2, align 8
  %27 = call i32 @stack_dup_value(%struct.value* %26, %struct.value* %3)
  %28 = call i32 @push(i32 %27)
  br label %29

29:                                               ; preds = %25, %16
  br label %30

30:                                               ; preds = %29, %0
  ret void
}

declare dso_local i32 @readreg(...) #1

declare dso_local %struct.value* @stack_tos(i32*) #1

declare dso_local %struct.number* @new_number(...) #1

declare dso_local i32 @bn_check(i32) #1

declare dso_local i32 @BN_zero(i32) #1

declare dso_local i32 @push_number(%struct.number*) #1

declare dso_local i32 @push(i32) #1

declare dso_local i32 @stack_dup_value(%struct.value*, %struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
