; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_numcoll.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_numcoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_value = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key_value*, %struct.key_value*, i64)* @numcoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @numcoll(%struct.key_value* %0, %struct.key_value* %1, i64 %2) #0 {
  %4 = alloca %struct.key_value*, align 8
  %5 = alloca %struct.key_value*, align 8
  %6 = alloca i64, align 8
  store %struct.key_value* %0, %struct.key_value** %4, align 8
  store %struct.key_value* %1, %struct.key_value** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.key_value*, %struct.key_value** %4, align 8
  %8 = load %struct.key_value*, %struct.key_value** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @numcoll_impl(%struct.key_value* %7, %struct.key_value* %8, i64 %9, i32 0)
  ret i32 %10
}

declare dso_local i32 @numcoll_impl(%struct.key_value*, %struct.key_value*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
