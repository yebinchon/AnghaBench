; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fuse_setup_ihead.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fuse_setup_ihead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_in_header = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.fuse_ticket = type { i32 }
%struct.ucred = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_in_header*, %struct.fuse_ticket*, i32, i32, i64, i32, %struct.ucred*)* @fuse_setup_ihead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_setup_ihead(%struct.fuse_in_header* %0, %struct.fuse_ticket* %1, i32 %2, i32 %3, i64 %4, i32 %5, %struct.ucred* %6) #0 {
  %8 = alloca %struct.fuse_in_header*, align 8
  %9 = alloca %struct.fuse_ticket*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ucred*, align 8
  store %struct.fuse_in_header* %0, %struct.fuse_in_header** %8, align 8
  store %struct.fuse_ticket* %1, %struct.fuse_ticket** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.ucred* %6, %struct.ucred** %14, align 8
  %15 = load i64, i64* %12, align 8
  %16 = add i64 28, %15
  %17 = trunc i64 %16 to i32
  %18 = load %struct.fuse_in_header*, %struct.fuse_in_header** %8, align 8
  %19 = getelementptr inbounds %struct.fuse_in_header, %struct.fuse_in_header* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.fuse_ticket*, %struct.fuse_ticket** %9, align 8
  %21 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fuse_in_header*, %struct.fuse_in_header** %8, align 8
  %24 = getelementptr inbounds %struct.fuse_in_header, %struct.fuse_in_header* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.fuse_in_header*, %struct.fuse_in_header** %8, align 8
  %27 = getelementptr inbounds %struct.fuse_in_header, %struct.fuse_in_header* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.fuse_in_header*, %struct.fuse_in_header** %8, align 8
  %30 = getelementptr inbounds %struct.fuse_in_header, %struct.fuse_in_header* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.fuse_in_header*, %struct.fuse_in_header** %8, align 8
  %33 = getelementptr inbounds %struct.fuse_in_header, %struct.fuse_in_header* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ucred*, %struct.ucred** %14, align 8
  %35 = getelementptr inbounds %struct.ucred, %struct.ucred* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.fuse_in_header*, %struct.fuse_in_header** %8, align 8
  %38 = getelementptr inbounds %struct.fuse_in_header, %struct.fuse_in_header* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ucred*, %struct.ucred** %14, align 8
  %40 = getelementptr inbounds %struct.ucred, %struct.ucred* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.fuse_in_header*, %struct.fuse_in_header** %8, align 8
  %45 = getelementptr inbounds %struct.fuse_in_header, %struct.fuse_in_header* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
