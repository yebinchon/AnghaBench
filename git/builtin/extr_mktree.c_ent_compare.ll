; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_mktree.c_ent_compare.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_mktree.c_ent_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.treeent = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @ent_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ent_compare(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.treeent*, align 8
  %6 = alloca %struct.treeent*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.treeent**
  %9 = load %struct.treeent*, %struct.treeent** %8, align 8
  store %struct.treeent* %9, %struct.treeent** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.treeent**
  %12 = load %struct.treeent*, %struct.treeent** %11, align 8
  store %struct.treeent* %12, %struct.treeent** %6, align 8
  %13 = load %struct.treeent*, %struct.treeent** %5, align 8
  %14 = getelementptr inbounds %struct.treeent, %struct.treeent* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.treeent*, %struct.treeent** %5, align 8
  %17 = getelementptr inbounds %struct.treeent, %struct.treeent* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.treeent*, %struct.treeent** %5, align 8
  %20 = getelementptr inbounds %struct.treeent, %struct.treeent* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.treeent*, %struct.treeent** %6, align 8
  %23 = getelementptr inbounds %struct.treeent, %struct.treeent* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.treeent*, %struct.treeent** %6, align 8
  %26 = getelementptr inbounds %struct.treeent, %struct.treeent* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.treeent*, %struct.treeent** %6, align 8
  %29 = getelementptr inbounds %struct.treeent, %struct.treeent* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @base_name_compare(i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30)
  ret i32 %31
}

declare dso_local i32 @base_name_compare(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
