; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/cd9660/extr_cd9660_lookup.c_cd9660_ino_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/cd9660/extr_cd9660_lookup.c_cd9660_ino_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.vnode = type { i32 }
%struct.cd9660_ino_alloc_arg = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i8*, i32, %struct.vnode**)* @cd9660_ino_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cd9660_ino_alloc(%struct.mount* %0, i8* %1, i32 %2, %struct.vnode** %3) #0 {
  %5 = alloca %struct.mount*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vnode**, align 8
  %9 = alloca %struct.cd9660_ino_alloc_arg*, align 8
  store %struct.mount* %0, %struct.mount** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.vnode** %3, %struct.vnode*** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.cd9660_ino_alloc_arg*
  store %struct.cd9660_ino_alloc_arg* %11, %struct.cd9660_ino_alloc_arg** %9, align 8
  %12 = load %struct.mount*, %struct.mount** %5, align 8
  %13 = load %struct.cd9660_ino_alloc_arg*, %struct.cd9660_ino_alloc_arg** %9, align 8
  %14 = getelementptr inbounds %struct.cd9660_ino_alloc_arg, %struct.cd9660_ino_alloc_arg* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.vnode**, %struct.vnode*** %8, align 8
  %18 = load %struct.cd9660_ino_alloc_arg*, %struct.cd9660_ino_alloc_arg** %9, align 8
  %19 = getelementptr inbounds %struct.cd9660_ino_alloc_arg, %struct.cd9660_ino_alloc_arg* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.cd9660_ino_alloc_arg*, %struct.cd9660_ino_alloc_arg** %9, align 8
  %22 = getelementptr inbounds %struct.cd9660_ino_alloc_arg, %struct.cd9660_ino_alloc_arg* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  %25 = zext i1 %24 to i32
  %26 = load %struct.cd9660_ino_alloc_arg*, %struct.cd9660_ino_alloc_arg** %9, align 8
  %27 = getelementptr inbounds %struct.cd9660_ino_alloc_arg, %struct.cd9660_ino_alloc_arg* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @cd9660_vget_internal(%struct.mount* %12, i64 %15, i32 %16, %struct.vnode** %17, i32 %25, i32 %28)
  ret i32 %29
}

declare dso_local i32 @cd9660_vget_internal(%struct.mount*, i64, i32, %struct.vnode**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
