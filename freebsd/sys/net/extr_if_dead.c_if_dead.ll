; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_dead.c_if_dead.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_dead.c_if_dead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ifdead_output = common dso_local global i32 0, align 4
@ifdead_input = common dso_local global i32 0, align 4
@ifdead_start = common dso_local global i32 0, align 4
@ifdead_ioctl = common dso_local global i32 0, align 4
@ifdead_resolvemulti = common dso_local global i32 0, align 4
@ifdead_qflush = common dso_local global i32 0, align 4
@ifdead_transmit = common dso_local global i32 0, align 4
@ifdead_get_counter = common dso_local global i32 0, align 4
@ifdead_snd_tag_alloc = common dso_local global i32 0, align 4
@ifdead_snd_tag_modify = common dso_local global i32 0, align 4
@ifdead_snd_tag_query = common dso_local global i32 0, align 4
@ifdead_snd_tag_free = common dso_local global i32 0, align 4
@ifdead_ratelimit_query = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @if_dead(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %3 = load i32, i32* @ifdead_output, align 4
  %4 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %5 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %4, i32 0, i32 12
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @ifdead_input, align 4
  %7 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 11
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @ifdead_start, align 4
  %10 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 10
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @ifdead_ioctl, align 4
  %13 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 9
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @ifdead_resolvemulti, align 4
  %16 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 8
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @ifdead_qflush, align 4
  %19 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %20 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @ifdead_transmit, align 4
  %22 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @ifdead_get_counter, align 4
  %25 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @ifdead_snd_tag_alloc, align 4
  %28 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @ifdead_snd_tag_modify, align 4
  %31 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %32 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @ifdead_snd_tag_query, align 4
  %34 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %35 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @ifdead_snd_tag_free, align 4
  %37 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %38 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @ifdead_ratelimit_query, align 4
  %40 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
