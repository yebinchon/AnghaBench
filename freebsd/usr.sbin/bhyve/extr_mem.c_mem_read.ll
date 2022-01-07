; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_mem.c_mem_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_mem.c_mem_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_range = type { i32 (i8*, i32, i32, i32, i32, i32*, i32, i32)*, i32, i32 }

@MEM_F_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32*, i32, i8*)* @mem_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_read(i8* %0, i32 %1, i32 %2, i32* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mem_range*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %15 = load i8*, i8** %12, align 8
  %16 = bitcast i8* %15 to %struct.mem_range*
  store %struct.mem_range* %16, %struct.mem_range** %14, align 8
  %17 = load %struct.mem_range*, %struct.mem_range** %14, align 8
  %18 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %17, i32 0, i32 0
  %19 = load i32 (i8*, i32, i32, i32, i32, i32*, i32, i32)*, i32 (i8*, i32, i32, i32, i32, i32*, i32, i32)** %18, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @MEM_F_READ, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = load %struct.mem_range*, %struct.mem_range** %14, align 8
  %27 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mem_range*, %struct.mem_range** %14, align 8
  %30 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %19(i8* %20, i32 %21, i32 %22, i32 %23, i32 %24, i32* %25, i32 %28, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
