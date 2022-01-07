; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_psycho.c_psycho_find_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_psycho.c_psycho_find_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psycho_desc = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.psycho_desc* (%struct.psycho_desc*, i8*)* @psycho_find_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.psycho_desc* @psycho_find_desc(%struct.psycho_desc* %0, i8* %1) #0 {
  %3 = alloca %struct.psycho_desc*, align 8
  %4 = alloca %struct.psycho_desc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.psycho_desc*, align 8
  store %struct.psycho_desc* %0, %struct.psycho_desc** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.psycho_desc* null, %struct.psycho_desc** %3, align 8
  br label %31

10:                                               ; preds = %2
  %11 = load %struct.psycho_desc*, %struct.psycho_desc** %4, align 8
  store %struct.psycho_desc* %11, %struct.psycho_desc** %6, align 8
  br label %12

12:                                               ; preds = %27, %10
  %13 = load %struct.psycho_desc*, %struct.psycho_desc** %6, align 8
  %14 = getelementptr inbounds %struct.psycho_desc, %struct.psycho_desc* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load %struct.psycho_desc*, %struct.psycho_desc** %6, align 8
  %19 = getelementptr inbounds %struct.psycho_desc, %struct.psycho_desc* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @strcmp(i32* %20, i8* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load %struct.psycho_desc*, %struct.psycho_desc** %6, align 8
  store %struct.psycho_desc* %25, %struct.psycho_desc** %3, align 8
  br label %31

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.psycho_desc*, %struct.psycho_desc** %6, align 8
  %29 = getelementptr inbounds %struct.psycho_desc, %struct.psycho_desc* %28, i32 1
  store %struct.psycho_desc* %29, %struct.psycho_desc** %6, align 8
  br label %12

30:                                               ; preds = %12
  store %struct.psycho_desc* null, %struct.psycho_desc** %3, align 8
  br label %31

31:                                               ; preds = %30, %24, %9
  %32 = load %struct.psycho_desc*, %struct.psycho_desc** %3, align 8
  ret %struct.psycho_desc* %32
}

declare dso_local i64 @strcmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
