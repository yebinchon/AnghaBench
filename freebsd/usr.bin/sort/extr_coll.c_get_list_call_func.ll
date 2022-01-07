; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_get_list_call_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_get_list_call_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_list_call_func.lsarray = internal constant [21 x i32] [i32 148, i32 147, i32 136, i32 134, i32 133, i32 132, i32 131, i32 130, i32 129, i32 128, i32 146, i32 145, i32 144, i32 143, i32 142, i32 141, i32 140, i32 139, i32 138, i32 137, i32 135], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_list_call_func(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp ule i64 %4, 20
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i64, i64* %3, align 8
  %8 = getelementptr inbounds [21 x i32], [21 x i32]* @get_list_call_func.lsarray, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %2, align 4
  br label %11

10:                                               ; preds = %1
  store i32 148, i32* %2, align 4
  br label %11

11:                                               ; preds = %10, %6
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
