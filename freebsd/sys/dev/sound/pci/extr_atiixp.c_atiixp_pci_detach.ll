; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_pci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_pci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp_info = type { i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @atiixp_pci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atiixp_pci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.atiixp_info*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.atiixp_info* @pcm_getdevinfo(i32 %6)
  store %struct.atiixp_info* %7, %struct.atiixp_info** %5, align 8
  %8 = load %struct.atiixp_info*, %struct.atiixp_info** %5, align 8
  %9 = icmp ne %struct.atiixp_info* %8, null
  br i1 %9, label %10, label %41

10:                                               ; preds = %1
  %11 = load %struct.atiixp_info*, %struct.atiixp_info** %5, align 8
  %12 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @pcm_unregister(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %42

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %10
  %24 = load %struct.atiixp_info*, %struct.atiixp_info** %5, align 8
  %25 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %24, i32 0, i32 2
  store i32* null, i32** %25, align 8
  %26 = load %struct.atiixp_info*, %struct.atiixp_info** %5, align 8
  %27 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.atiixp_info*, %struct.atiixp_info** %5, align 8
  %32 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.atiixp_info*, %struct.atiixp_info** %5, align 8
  %37 = call i32 @atiixp_disable_interrupts(%struct.atiixp_info* %36)
  br label %38

38:                                               ; preds = %35, %30, %23
  %39 = load %struct.atiixp_info*, %struct.atiixp_info** %5, align 8
  %40 = call i32 @atiixp_release_resource(%struct.atiixp_info* %39)
  br label %41

41:                                               ; preds = %38, %1
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %20
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.atiixp_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @pcm_unregister(i32) #1

declare dso_local i32 @atiixp_disable_interrupts(%struct.atiixp_info*) #1

declare dso_local i32 @atiixp_release_resource(%struct.atiixp_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
