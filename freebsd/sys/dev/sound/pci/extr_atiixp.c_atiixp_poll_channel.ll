; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_poll_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_poll_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp_chinfo = type { i32, i32, i32, i32, i32 }

@ATI_IXP_CHN_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atiixp_chinfo*)* @atiixp_poll_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atiixp_poll_channel(%struct.atiixp_chinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atiixp_chinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atiixp_chinfo* %0, %struct.atiixp_chinfo** %3, align 8
  %7 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %3, align 8
  %8 = getelementptr inbounds %struct.atiixp_chinfo, %struct.atiixp_chinfo* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ATI_IXP_CHN_RUNNING, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

14:                                               ; preds = %1
  %15 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %3, align 8
  %16 = getelementptr inbounds %struct.atiixp_chinfo, %struct.atiixp_chinfo* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %3, align 8
  %19 = getelementptr inbounds %struct.atiixp_chinfo, %struct.atiixp_chinfo* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  store volatile i32 %21, i32* %4, align 4
  %22 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %3, align 8
  %23 = call i32 @atiixp_dmapos(%struct.atiixp_chinfo* %22)
  store volatile i32 %23, i32* %6, align 4
  %24 = load volatile i32, i32* %6, align 4
  %25 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %3, align 8
  %26 = getelementptr inbounds %struct.atiixp_chinfo, %struct.atiixp_chinfo* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load volatile i32, i32* %4, align 4
  %28 = load volatile i32, i32* %6, align 4
  %29 = srem i32 %28, %27
  store volatile i32 %29, i32* %6, align 4
  %30 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %3, align 8
  %31 = getelementptr inbounds %struct.atiixp_chinfo, %struct.atiixp_chinfo* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  %34 = xor i32 %33, -1
  %35 = load volatile i32, i32* %6, align 4
  %36 = and i32 %35, %34
  store volatile i32 %36, i32* %6, align 4
  %37 = load volatile i32, i32* %4, align 4
  %38 = load volatile i32, i32* %6, align 4
  %39 = add nsw i32 %37, %38
  %40 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %3, align 8
  %41 = getelementptr inbounds %struct.atiixp_chinfo, %struct.atiixp_chinfo* %40, i32 0, i32 4
  %42 = load volatile i32, i32* %41, align 4
  %43 = sub nsw i32 %39, %42
  %44 = load volatile i32, i32* %4, align 4
  %45 = srem i32 %43, %44
  store volatile i32 %45, i32* %5, align 4
  %46 = load volatile i32, i32* %5, align 4
  %47 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %3, align 8
  %48 = getelementptr inbounds %struct.atiixp_chinfo, %struct.atiixp_chinfo* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %56

52:                                               ; preds = %14
  %53 = load volatile i32, i32* %6, align 4
  %54 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %3, align 8
  %55 = getelementptr inbounds %struct.atiixp_chinfo, %struct.atiixp_chinfo* %54, i32 0, i32 4
  store volatile i32 %53, i32* %55, align 4
  store i32 1, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %51, %13
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @atiixp_dmapos(%struct.atiixp_chinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
