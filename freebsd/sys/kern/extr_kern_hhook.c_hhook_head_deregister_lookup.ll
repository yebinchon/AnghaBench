; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_hhook.c_hhook_head_deregister_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_hhook.c_hhook_head_deregister_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hhook_head = type { i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hhook_head_deregister_lookup(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.hhook_head*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.hhook_head* @hhook_head_get(i32 %7, i32 %8)
  store %struct.hhook_head* %9, %struct.hhook_head** %5, align 8
  %10 = load %struct.hhook_head*, %struct.hhook_head** %5, align 8
  %11 = call i32 @hhook_head_deregister(%struct.hhook_head* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @EBUSY, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.hhook_head*, %struct.hhook_head** %5, align 8
  %17 = call i32 @hhook_head_release(%struct.hhook_head* %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i32, i32* %6, align 4
  ret i32 %19
}

declare dso_local %struct.hhook_head* @hhook_head_get(i32, i32) #1

declare dso_local i32 @hhook_head_deregister(%struct.hhook_head*) #1

declare dso_local i32 @hhook_head_release(%struct.hhook_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
