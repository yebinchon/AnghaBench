; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mount.c_mount_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mount.c_mount_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32, i32, i32, i32, i32, i32, i32 }

@pcpu_zone_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @mount_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mount_fini(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mount*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.mount*
  store %struct.mount* %7, %struct.mount** %5, align 8
  %8 = load i32, i32* @pcpu_zone_int, align 4
  %9 = load %struct.mount*, %struct.mount** %5, align 8
  %10 = getelementptr inbounds %struct.mount, %struct.mount* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @uma_zfree_pcpu(i32 %8, i32 %11)
  %13 = load i32, i32* @pcpu_zone_int, align 4
  %14 = load %struct.mount*, %struct.mount** %5, align 8
  %15 = getelementptr inbounds %struct.mount, %struct.mount* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @uma_zfree_pcpu(i32 %13, i32 %16)
  %18 = load i32, i32* @pcpu_zone_int, align 4
  %19 = load %struct.mount*, %struct.mount** %5, align 8
  %20 = getelementptr inbounds %struct.mount, %struct.mount* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @uma_zfree_pcpu(i32 %18, i32 %21)
  %23 = load i32, i32* @pcpu_zone_int, align 4
  %24 = load %struct.mount*, %struct.mount** %5, align 8
  %25 = getelementptr inbounds %struct.mount, %struct.mount* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @uma_zfree_pcpu(i32 %23, i32 %26)
  %28 = load %struct.mount*, %struct.mount** %5, align 8
  %29 = getelementptr inbounds %struct.mount, %struct.mount* %28, i32 0, i32 2
  %30 = call i32 @lockdestroy(i32* %29)
  %31 = load %struct.mount*, %struct.mount** %5, align 8
  %32 = getelementptr inbounds %struct.mount, %struct.mount* %31, i32 0, i32 1
  %33 = call i32 @mtx_destroy(i32* %32)
  %34 = load %struct.mount*, %struct.mount** %5, align 8
  %35 = getelementptr inbounds %struct.mount, %struct.mount* %34, i32 0, i32 0
  %36 = call i32 @mtx_destroy(i32* %35)
  ret void
}

declare dso_local i32 @uma_zfree_pcpu(i32, i32) #1

declare dso_local i32 @lockdestroy(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
