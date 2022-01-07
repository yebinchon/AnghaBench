; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_82852_set_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_82852_set_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_i810_match = type { i32 }

@AGP_I85X_CAPID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Intel 82855GME (855GME GMCH) SVGA controller\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Intel 82855GM (855GM GMCH) SVGA controller\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Intel 82852GME (852GME GMCH) SVGA controller\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Intel 82852GM (852GM GMCH) SVGA controller\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Intel 8285xM (85xGM GMCH) SVGA controller\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.agp_i810_match*)* @agp_82852_set_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agp_82852_set_desc(i32 %0, %struct.agp_i810_match* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.agp_i810_match*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.agp_i810_match* %1, %struct.agp_i810_match** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @AGP_I85X_CAPID, align 4
  %7 = call i32 @pci_read_config(i32 %5, i32 %6, i32 1)
  switch i32 %7, label %20 [
    i32 128, label %8
    i32 129, label %11
    i32 130, label %14
    i32 131, label %17
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @device_set_desc(i32 %9, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %23

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @device_set_desc(i32 %12, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %23

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_set_desc(i32 %15, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %23

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_set_desc(i32 %18, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_set_desc(i32 %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %17, %14, %11, %8
  ret void
}

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
