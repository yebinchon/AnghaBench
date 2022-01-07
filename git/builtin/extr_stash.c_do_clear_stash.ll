; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_stash.c_do_clear_stash.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_stash.c_do_clear_stash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@ref_stash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @do_clear_stash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_clear_stash() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.object_id, align 4
  %3 = load i32, i32* @ref_stash, align 4
  %4 = call i64 @get_oid(i32 %3, %struct.object_id* %2)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @ref_stash, align 4
  %9 = call i32 @delete_ref(i32* null, i32 %8, %struct.object_id* %2, i32 0)
  store i32 %9, i32* %1, align 4
  br label %10

10:                                               ; preds = %7, %6
  %11 = load i32, i32* %1, align 4
  ret i32 %11
}

declare dso_local i64 @get_oid(i32, %struct.object_id*) #1

declare dso_local i32 @delete_ref(i32*, i32, %struct.object_id*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
