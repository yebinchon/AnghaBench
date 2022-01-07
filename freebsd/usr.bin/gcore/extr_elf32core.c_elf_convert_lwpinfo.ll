; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gcore/extr_elf32core.c_elf_convert_lwpinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gcore/extr_elf32core.c_elf_convert_lwpinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptrace_lwpinfo32 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ptrace_lwpinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ptrace_lwpinfo32*, %struct.ptrace_lwpinfo*)* @elf_convert_lwpinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_convert_lwpinfo(%struct.ptrace_lwpinfo32* %0, %struct.ptrace_lwpinfo* %1) #0 {
  %3 = alloca %struct.ptrace_lwpinfo32*, align 8
  %4 = alloca %struct.ptrace_lwpinfo*, align 8
  store %struct.ptrace_lwpinfo32* %0, %struct.ptrace_lwpinfo32** %3, align 8
  store %struct.ptrace_lwpinfo* %1, %struct.ptrace_lwpinfo** %4, align 8
  %5 = load %struct.ptrace_lwpinfo*, %struct.ptrace_lwpinfo** %4, align 8
  %6 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %5, i32 0, i32 9
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ptrace_lwpinfo32*, %struct.ptrace_lwpinfo32** %3, align 8
  %9 = getelementptr inbounds %struct.ptrace_lwpinfo32, %struct.ptrace_lwpinfo32* %8, i32 0, i32 9
  store i32 %7, i32* %9, align 4
  %10 = load %struct.ptrace_lwpinfo*, %struct.ptrace_lwpinfo** %4, align 8
  %11 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ptrace_lwpinfo32*, %struct.ptrace_lwpinfo32** %3, align 8
  %14 = getelementptr inbounds %struct.ptrace_lwpinfo32, %struct.ptrace_lwpinfo32* %13, i32 0, i32 8
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ptrace_lwpinfo*, %struct.ptrace_lwpinfo** %4, align 8
  %16 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ptrace_lwpinfo32*, %struct.ptrace_lwpinfo32** %3, align 8
  %19 = getelementptr inbounds %struct.ptrace_lwpinfo32, %struct.ptrace_lwpinfo32* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ptrace_lwpinfo*, %struct.ptrace_lwpinfo** %4, align 8
  %21 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ptrace_lwpinfo32*, %struct.ptrace_lwpinfo32** %3, align 8
  %24 = getelementptr inbounds %struct.ptrace_lwpinfo32, %struct.ptrace_lwpinfo32* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ptrace_lwpinfo*, %struct.ptrace_lwpinfo** %4, align 8
  %26 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ptrace_lwpinfo32*, %struct.ptrace_lwpinfo32** %3, align 8
  %29 = getelementptr inbounds %struct.ptrace_lwpinfo32, %struct.ptrace_lwpinfo32* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ptrace_lwpinfo32*, %struct.ptrace_lwpinfo32** %3, align 8
  %31 = getelementptr inbounds %struct.ptrace_lwpinfo32, %struct.ptrace_lwpinfo32* %30, i32 0, i32 4
  %32 = load %struct.ptrace_lwpinfo*, %struct.ptrace_lwpinfo** %4, align 8
  %33 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %32, i32 0, i32 4
  %34 = call i32 @elf_convert_siginfo(i32* %31, i32* %33)
  %35 = load %struct.ptrace_lwpinfo32*, %struct.ptrace_lwpinfo32** %3, align 8
  %36 = getelementptr inbounds %struct.ptrace_lwpinfo32, %struct.ptrace_lwpinfo32* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ptrace_lwpinfo*, %struct.ptrace_lwpinfo** %4, align 8
  %39 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(i32 %37, i32 %40, i32 4)
  %42 = load %struct.ptrace_lwpinfo*, %struct.ptrace_lwpinfo** %4, align 8
  %43 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ptrace_lwpinfo32*, %struct.ptrace_lwpinfo32** %3, align 8
  %46 = getelementptr inbounds %struct.ptrace_lwpinfo32, %struct.ptrace_lwpinfo32* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ptrace_lwpinfo*, %struct.ptrace_lwpinfo** %4, align 8
  %48 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ptrace_lwpinfo32*, %struct.ptrace_lwpinfo32** %3, align 8
  %51 = getelementptr inbounds %struct.ptrace_lwpinfo32, %struct.ptrace_lwpinfo32* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ptrace_lwpinfo*, %struct.ptrace_lwpinfo** %4, align 8
  %53 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ptrace_lwpinfo32*, %struct.ptrace_lwpinfo32** %3, align 8
  %56 = getelementptr inbounds %struct.ptrace_lwpinfo32, %struct.ptrace_lwpinfo32* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  ret void
}

declare dso_local i32 @elf_convert_siginfo(i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
