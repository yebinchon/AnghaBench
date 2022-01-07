; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_buf_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_buf_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.bufdomain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.bufdomain*, i32)* @buf_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buf_flush(%struct.vnode* %0, %struct.bufdomain* %1, i32 %2) #0 {
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.bufdomain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store %struct.bufdomain* %1, %struct.bufdomain** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.vnode*, %struct.vnode** %4, align 8
  %9 = load %struct.bufdomain*, %struct.bufdomain** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @flushbufqueues(%struct.vnode* %8, %struct.bufdomain* %9, i32 %10, i32 0)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  %15 = load %struct.vnode*, %struct.vnode** %4, align 8
  %16 = icmp ne %struct.vnode* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = sdiv i32 %21, 2
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %20, %17, %14
  %24 = load %struct.vnode*, %struct.vnode** %4, align 8
  %25 = load %struct.bufdomain*, %struct.bufdomain** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @flushbufqueues(%struct.vnode* %24, %struct.bufdomain* %25, i32 %26, i32 1)
  br label %28

28:                                               ; preds = %23, %3
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i32 @flushbufqueues(%struct.vnode*, %struct.bufdomain*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
