; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_als_resource_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_als_resource_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32*, i64, i32*, i32, i32*, i32*, i32 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sc_info*)* @als_resource_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @als_resource_free(i32 %0, %struct.sc_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sc_info*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.sc_info* %1, %struct.sc_info** %4, align 8
  %5 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %6 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %5, i32 0, i32 5
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SYS_RES_IOPORT, align 4
  %12 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %13 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %16 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @bus_release_resource(i32 %10, i32 %11, i32 %14, i32* %17)
  %19 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %20 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %19, i32 0, i32 5
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %9, %2
  %22 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %23 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %29 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %32 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @bus_teardown_intr(i32 %27, i32* %30, i32* %33)
  %35 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %36 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %35, i32 0, i32 4
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %26, %21
  %38 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %39 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @SYS_RES_IRQ, align 4
  %45 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %46 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %49 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @bus_release_resource(i32 %43, i32 %44, i32 %47, i32* %50)
  %52 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %53 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %52, i32 0, i32 2
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %42, %37
  %55 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %56 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %61 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @bus_dma_tag_destroy(i64 %62)
  %64 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %65 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %59, %54
  %67 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %68 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %73 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @snd_mtxfree(i32* %74)
  %76 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %77 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %76, i32 0, i32 0
  store i32* null, i32** %77, align 8
  br label %78

78:                                               ; preds = %71, %66
  ret void
}

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @snd_mtxfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
