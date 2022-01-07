; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/spibus/extr_spigen.c_spigen_mmap_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/spibus/extr_spigen.c_spigen_mmap_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spigen_mmap = type { i64, i32, i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @spigen_mmap_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spigen_mmap_cleanup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.spigen_mmap*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.spigen_mmap*
  store %struct.spigen_mmap* %5, %struct.spigen_mmap** %3, align 8
  %6 = load %struct.spigen_mmap*, %struct.spigen_mmap** %3, align 8
  %7 = getelementptr inbounds %struct.spigen_mmap, %struct.spigen_mmap* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.spigen_mmap*, %struct.spigen_mmap** %3, align 8
  %12 = getelementptr inbounds %struct.spigen_mmap, %struct.spigen_mmap* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.spigen_mmap*, %struct.spigen_mmap** %3, align 8
  %15 = getelementptr inbounds %struct.spigen_mmap, %struct.spigen_mmap* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = sdiv i32 %16, %17
  %19 = call i32 @pmap_qremove(i64 %13, i32 %18)
  br label %20

20:                                               ; preds = %10, %1
  %21 = load %struct.spigen_mmap*, %struct.spigen_mmap** %3, align 8
  %22 = getelementptr inbounds %struct.spigen_mmap, %struct.spigen_mmap* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.spigen_mmap*, %struct.spigen_mmap** %3, align 8
  %27 = getelementptr inbounds %struct.spigen_mmap, %struct.spigen_mmap* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @vm_object_deallocate(i32* %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.spigen_mmap*, %struct.spigen_mmap** %3, align 8
  %32 = load i32, i32* @M_DEVBUF, align 4
  %33 = call i32 @free(%struct.spigen_mmap* %31, i32 %32)
  ret void
}

declare dso_local i32 @pmap_qremove(i64, i32) #1

declare dso_local i32 @vm_object_deallocate(i32*) #1

declare dso_local i32 @free(%struct.spigen_mmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
