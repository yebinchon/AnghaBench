; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/fb/extr_vt_fb.c_vt_fb_mem_wr4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/fb/extr_vt_fb.c_vt_fb_mem_wr4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"Offset %#08x out of fb size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, i64, i64)* @vt_fb_mem_wr4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vt_fb_mem_wr4(%struct.fb_info* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %7, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %5, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @KASSERT(i32 %12, i8* %14)
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = add nsw i64 %19, %20
  %22 = inttoptr i64 %21 to i64*
  store i64 %16, i64* %22, align 8
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
