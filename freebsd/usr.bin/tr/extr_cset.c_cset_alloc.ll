; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tr/extr_cset.c_cset_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tr/extr_cset.c_cset_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cset = type { i32, i32, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cset* @cset_alloc() #0 {
  %1 = alloca %struct.cset*, align 8
  %2 = alloca %struct.cset*, align 8
  %3 = call %struct.cset* @malloc(i32 24)
  store %struct.cset* %3, %struct.cset** %2, align 8
  %4 = icmp eq %struct.cset* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store %struct.cset* null, %struct.cset** %1, align 8
  br label %16

6:                                                ; preds = %0
  %7 = load %struct.cset*, %struct.cset** %2, align 8
  %8 = getelementptr inbounds %struct.cset, %struct.cset* %7, i32 0, i32 3
  store i32* null, i32** %8, align 8
  %9 = load %struct.cset*, %struct.cset** %2, align 8
  %10 = getelementptr inbounds %struct.cset, %struct.cset* %9, i32 0, i32 2
  store i32* null, i32** %10, align 8
  %11 = load %struct.cset*, %struct.cset** %2, align 8
  %12 = getelementptr inbounds %struct.cset, %struct.cset* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load %struct.cset*, %struct.cset** %2, align 8
  %14 = getelementptr inbounds %struct.cset, %struct.cset* %13, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = load %struct.cset*, %struct.cset** %2, align 8
  store %struct.cset* %15, %struct.cset** %1, align 8
  br label %16

16:                                               ; preds = %6, %5
  %17 = load %struct.cset*, %struct.cset** %1, align 8
  ret %struct.cset* %17
}

declare dso_local %struct.cset* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
