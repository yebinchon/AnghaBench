; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_ptrace.c_map_fpregs_from_linux.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_ptrace.c_map_fpregs_from_linux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpreg = type { i32, i32* }
%struct.linux_pt_fpreg = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fpreg*, %struct.linux_pt_fpreg*)* @map_fpregs_from_linux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @map_fpregs_from_linux(%struct.fpreg* %0, %struct.linux_pt_fpreg* %1) #0 {
  %3 = alloca %struct.fpreg*, align 8
  %4 = alloca %struct.linux_pt_fpreg*, align 8
  store %struct.fpreg* %0, %struct.fpreg** %3, align 8
  store %struct.linux_pt_fpreg* %1, %struct.linux_pt_fpreg** %4, align 8
  %5 = load %struct.linux_pt_fpreg*, %struct.linux_pt_fpreg** %4, align 8
  %6 = getelementptr inbounds %struct.linux_pt_fpreg, %struct.linux_pt_fpreg* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.fpreg*, %struct.fpreg** %3, align 8
  %9 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %7, i32* %11, align 4
  %12 = load %struct.linux_pt_fpreg*, %struct.linux_pt_fpreg** %4, align 8
  %13 = getelementptr inbounds %struct.linux_pt_fpreg, %struct.linux_pt_fpreg* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.fpreg*, %struct.fpreg** %3, align 8
  %16 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %14, i32* %18, align 4
  %19 = load %struct.linux_pt_fpreg*, %struct.linux_pt_fpreg** %4, align 8
  %20 = getelementptr inbounds %struct.linux_pt_fpreg, %struct.linux_pt_fpreg* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.fpreg*, %struct.fpreg** %3, align 8
  %23 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 %21, i32* %25, align 4
  %26 = load %struct.linux_pt_fpreg*, %struct.linux_pt_fpreg** %4, align 8
  %27 = getelementptr inbounds %struct.linux_pt_fpreg, %struct.linux_pt_fpreg* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.fpreg*, %struct.fpreg** %3, align 8
  %30 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  store i32 %28, i32* %32, align 4
  %33 = load %struct.linux_pt_fpreg*, %struct.linux_pt_fpreg** %4, align 8
  %34 = getelementptr inbounds %struct.linux_pt_fpreg, %struct.linux_pt_fpreg* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fpreg*, %struct.fpreg** %3, align 8
  %37 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  store i32 %35, i32* %39, align 4
  %40 = load %struct.linux_pt_fpreg*, %struct.linux_pt_fpreg** %4, align 8
  %41 = getelementptr inbounds %struct.linux_pt_fpreg, %struct.linux_pt_fpreg* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.fpreg*, %struct.fpreg** %3, align 8
  %44 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 5
  store i32 %42, i32* %46, align 4
  %47 = load %struct.linux_pt_fpreg*, %struct.linux_pt_fpreg** %4, align 8
  %48 = getelementptr inbounds %struct.linux_pt_fpreg, %struct.linux_pt_fpreg* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.fpreg*, %struct.fpreg** %3, align 8
  %51 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 6
  store i32 %49, i32* %53, align 4
  %54 = load %struct.fpreg*, %struct.fpreg** %3, align 8
  %55 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.linux_pt_fpreg*, %struct.linux_pt_fpreg** %4, align 8
  %58 = getelementptr inbounds %struct.linux_pt_fpreg, %struct.linux_pt_fpreg* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @bcopy(i32 %56, i32 %59, i32 4)
  ret void
}

declare dso_local i32 @bcopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
