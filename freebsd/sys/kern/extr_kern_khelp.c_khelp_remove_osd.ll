; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_khelp.c_khelp_remove_osd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_khelp.c_khelp_remove_osd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.helper = type { i32, i32, i32, i32 }
%struct.osd = type { i32 }

@HELPER_NEEDS_OSD = common dso_local global i32 0, align 4
@OSD_KHELP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.helper*, %struct.osd*)* @khelp_remove_osd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @khelp_remove_osd(%struct.helper* %0, %struct.osd* %1) #0 {
  %3 = alloca %struct.helper*, align 8
  %4 = alloca %struct.osd*, align 8
  %5 = alloca i8*, align 8
  store %struct.helper* %0, %struct.helper** %3, align 8
  store %struct.osd* %1, %struct.osd** %4, align 8
  %6 = load %struct.helper*, %struct.helper** %3, align 8
  %7 = getelementptr inbounds %struct.helper, %struct.helper* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @HELPER_NEEDS_OSD, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %2
  %13 = load i32, i32* @OSD_KHELP, align 4
  %14 = load %struct.osd*, %struct.osd** %4, align 8
  %15 = load %struct.helper*, %struct.helper** %3, align 8
  %16 = getelementptr inbounds %struct.helper, %struct.helper* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @osd_get(i32 %13, %struct.osd* %14, i32 %17)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %12
  %22 = load %struct.helper*, %struct.helper** %3, align 8
  %23 = getelementptr inbounds %struct.helper, %struct.helper* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @uma_zfree(i32 %24, i8* %25)
  %27 = load i32, i32* @OSD_KHELP, align 4
  %28 = load %struct.osd*, %struct.osd** %4, align 8
  %29 = load %struct.helper*, %struct.helper** %3, align 8
  %30 = getelementptr inbounds %struct.helper, %struct.helper* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @osd_del(i32 %27, %struct.osd* %28, i32 %31)
  %33 = load %struct.helper*, %struct.helper** %3, align 8
  %34 = getelementptr inbounds %struct.helper, %struct.helper* %33, i32 0, i32 1
  %35 = call i32 @refcount_release(i32* %34)
  br label %36

36:                                               ; preds = %21, %12
  br label %37

37:                                               ; preds = %36, %2
  ret void
}

declare dso_local i8* @osd_get(i32, %struct.osd*, i32) #1

declare dso_local i32 @uma_zfree(i32, i8*) #1

declare dso_local i32 @osd_del(i32, %struct.osd*, i32) #1

declare dso_local i32 @refcount_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
