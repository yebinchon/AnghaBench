; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_fm801.c_fm801_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_fm801.c_fm801_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.fm801_info = type { %struct.resource* }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i32, i32, i32, i32)* @fm801_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @fm801_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.fm801_info*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call %struct.fm801_info* @pcm_getdevinfo(i32 %19)
  store %struct.fm801_info* %20, %struct.fm801_info** %18, align 8
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @SYS_RES_IOPORT, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %8
  %25 = load i32*, i32** %13, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @PCIR_BAR(i32 0)
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.fm801_info*, %struct.fm801_info** %18, align 8
  %31 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %30, i32 0, i32 0
  %32 = load %struct.resource*, %struct.resource** %31, align 8
  store %struct.resource* %32, %struct.resource** %9, align 8
  br label %34

33:                                               ; preds = %24, %8
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %34

34:                                               ; preds = %33, %29
  %35 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %35
}

declare dso_local %struct.fm801_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
