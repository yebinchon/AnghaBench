; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_array_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_array_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.array* ()* @array_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.array* @array_new() #0 {
  %1 = alloca %struct.array*, align 8
  %2 = call %struct.array* @bmalloc(i32 16)
  store %struct.array* %2, %struct.array** %1, align 8
  %3 = load %struct.array*, %struct.array** %1, align 8
  %4 = getelementptr inbounds %struct.array, %struct.array* %3, i32 0, i32 1
  store i32* null, i32** %4, align 8
  %5 = load %struct.array*, %struct.array** %1, align 8
  %6 = getelementptr inbounds %struct.array, %struct.array* %5, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = load %struct.array*, %struct.array** %1, align 8
  ret %struct.array* %7
}

declare dso_local %struct.array* @bmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
