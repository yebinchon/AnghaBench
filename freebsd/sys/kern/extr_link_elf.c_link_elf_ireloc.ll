; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_link_elf.c_link_elf_ireloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_link_elf.c_link_elf_ireloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_file = type { i64, i32*, i32 }

@_DYNAMIC = common dso_local global i32 0, align 4
@elf_lookup_ifunc = common dso_local global i32 0, align 4
@elf_reloc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @link_elf_ireloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.elf_file, align 8
  %4 = alloca %struct.elf_file*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.elf_file* %3, %struct.elf_file** %4, align 8
  %5 = load %struct.elf_file*, %struct.elf_file** %4, align 8
  %6 = call i32 @bzero_early(%struct.elf_file* %5, i32 24)
  %7 = load i32, i32* %2, align 4
  %8 = load %struct.elf_file*, %struct.elf_file** %4, align 8
  %9 = getelementptr inbounds %struct.elf_file, %struct.elf_file* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 8
  %10 = load %struct.elf_file*, %struct.elf_file** %4, align 8
  %11 = getelementptr inbounds %struct.elf_file, %struct.elf_file* %10, i32 0, i32 1
  store i32* @_DYNAMIC, i32** %11, align 8
  %12 = load %struct.elf_file*, %struct.elf_file** %4, align 8
  %13 = call i32 @parse_dynamic(%struct.elf_file* %12)
  %14 = load %struct.elf_file*, %struct.elf_file** %4, align 8
  %15 = getelementptr inbounds %struct.elf_file, %struct.elf_file* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.elf_file*, %struct.elf_file** %4, align 8
  %17 = call i32 @link_elf_preload_parse_symbols(%struct.elf_file* %16)
  %18 = load %struct.elf_file*, %struct.elf_file** %4, align 8
  %19 = load i32, i32* @elf_lookup_ifunc, align 4
  %20 = load i32, i32* @elf_reloc, align 4
  %21 = call i32 @relocate_file1(%struct.elf_file* %18, i32 %19, i32 %20, i32 1)
  ret void
}

declare dso_local i32 @bzero_early(%struct.elf_file*, i32) #1

declare dso_local i32 @parse_dynamic(%struct.elf_file*) #1

declare dso_local i32 @link_elf_preload_parse_symbols(%struct.elf_file*) #1

declare dso_local i32 @relocate_file1(%struct.elf_file*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
