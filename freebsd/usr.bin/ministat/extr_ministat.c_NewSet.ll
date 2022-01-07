; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ministat/extr_ministat.c_NewSet.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ministat/extr_ministat.c_NewSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dataset = type { i32, i32, i32* }

@NAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dataset* ()* @NewSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dataset* @NewSet() #0 {
  %1 = alloca %struct.dataset*, align 8
  %2 = call i8* @calloc(i32 1, i32 16)
  %3 = bitcast i8* %2 to %struct.dataset*
  store %struct.dataset* %3, %struct.dataset** %1, align 8
  %4 = load %struct.dataset*, %struct.dataset** %1, align 8
  %5 = icmp ne %struct.dataset* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load %struct.dataset*, %struct.dataset** %1, align 8
  %9 = getelementptr inbounds %struct.dataset, %struct.dataset* %8, i32 0, i32 0
  store i32 100000, i32* %9, align 8
  %10 = load %struct.dataset*, %struct.dataset** %1, align 8
  %11 = getelementptr inbounds %struct.dataset, %struct.dataset* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @calloc(i32 4, i32 %12)
  %14 = bitcast i8* %13 to i32*
  %15 = load %struct.dataset*, %struct.dataset** %1, align 8
  %16 = getelementptr inbounds %struct.dataset, %struct.dataset* %15, i32 0, i32 2
  store i32* %14, i32** %16, align 8
  %17 = load %struct.dataset*, %struct.dataset** %1, align 8
  %18 = getelementptr inbounds %struct.dataset, %struct.dataset* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32, i32* @NAN, align 4
  %24 = load %struct.dataset*, %struct.dataset** %1, align 8
  %25 = getelementptr inbounds %struct.dataset, %struct.dataset* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.dataset*, %struct.dataset** %1, align 8
  ret %struct.dataset* %26
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
