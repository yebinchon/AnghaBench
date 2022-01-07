; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_ptrace.c_map_fpregs_to_linux.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/linux/extr_linux_ptrace.c_map_fpregs_to_linux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpreg = type { i32, i32* }
%struct.linux_pt_fpreg = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fpreg*, %struct.linux_pt_fpreg*)* @map_fpregs_to_linux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @map_fpregs_to_linux(%struct.fpreg* %0, %struct.linux_pt_fpreg* %1) #0 {
  %3 = alloca %struct.fpreg*, align 8
  %4 = alloca %struct.linux_pt_fpreg*, align 8
  store %struct.fpreg* %0, %struct.fpreg** %3, align 8
  store %struct.linux_pt_fpreg* %1, %struct.linux_pt_fpreg** %4, align 8
  %5 = load %struct.fpreg*, %struct.fpreg** %3, align 8
  %6 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.linux_pt_fpreg*, %struct.linux_pt_fpreg** %4, align 8
  %11 = getelementptr inbounds %struct.linux_pt_fpreg, %struct.linux_pt_fpreg* %10, i32 0, i32 7
  store i32 %9, i32* %11, align 4
  %12 = load %struct.fpreg*, %struct.fpreg** %3, align 8
  %13 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.linux_pt_fpreg*, %struct.linux_pt_fpreg** %4, align 8
  %18 = getelementptr inbounds %struct.linux_pt_fpreg, %struct.linux_pt_fpreg* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 4
  %19 = load %struct.fpreg*, %struct.fpreg** %3, align 8
  %20 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.linux_pt_fpreg*, %struct.linux_pt_fpreg** %4, align 8
  %25 = getelementptr inbounds %struct.linux_pt_fpreg, %struct.linux_pt_fpreg* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.fpreg*, %struct.fpreg** %3, align 8
  %27 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.linux_pt_fpreg*, %struct.linux_pt_fpreg** %4, align 8
  %32 = getelementptr inbounds %struct.linux_pt_fpreg, %struct.linux_pt_fpreg* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.fpreg*, %struct.fpreg** %3, align 8
  %34 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.linux_pt_fpreg*, %struct.linux_pt_fpreg** %4, align 8
  %39 = getelementptr inbounds %struct.linux_pt_fpreg, %struct.linux_pt_fpreg* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.fpreg*, %struct.fpreg** %3, align 8
  %41 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.linux_pt_fpreg*, %struct.linux_pt_fpreg** %4, align 8
  %46 = getelementptr inbounds %struct.linux_pt_fpreg, %struct.linux_pt_fpreg* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.fpreg*, %struct.fpreg** %3, align 8
  %48 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 6
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.linux_pt_fpreg*, %struct.linux_pt_fpreg** %4, align 8
  %53 = getelementptr inbounds %struct.linux_pt_fpreg, %struct.linux_pt_fpreg* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
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
