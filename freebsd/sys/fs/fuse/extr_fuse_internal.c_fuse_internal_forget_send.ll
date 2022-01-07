; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_forget_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_forget_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.thread = type { i32 }
%struct.ucred = type { i32 }
%struct.fuse_dispatcher = type { i32, %struct.fuse_forget_in* }
%struct.fuse_forget_in = type { i32 }

@FUSE_FORGET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuse_internal_forget_send(%struct.mount* %0, %struct.thread* %1, %struct.ucred* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mount*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fuse_dispatcher, align 8
  %12 = alloca %struct.fuse_forget_in*, align 8
  store %struct.mount* %0, %struct.mount** %6, align 8
  store %struct.thread* %1, %struct.thread** %7, align 8
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = call i32 @fdisp_init(%struct.fuse_dispatcher* %11, i32 4)
  %14 = load i32, i32* @FUSE_FORGET, align 4
  %15 = load %struct.mount*, %struct.mount** %6, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.thread*, %struct.thread** %7, align 8
  %18 = load %struct.ucred*, %struct.ucred** %8, align 8
  %19 = call i32 @fdisp_make(%struct.fuse_dispatcher* %11, i32 %14, %struct.mount* %15, i32 %16, %struct.thread* %17, %struct.ucred* %18)
  %20 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %11, i32 0, i32 1
  %21 = load %struct.fuse_forget_in*, %struct.fuse_forget_in** %20, align 8
  store %struct.fuse_forget_in* %21, %struct.fuse_forget_in** %12, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.fuse_forget_in*, %struct.fuse_forget_in** %12, align 8
  %24 = getelementptr inbounds %struct.fuse_forget_in, %struct.fuse_forget_in* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %11, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @fuse_insert_message(i32 %26, i32 0)
  %28 = call i32 @fdisp_destroy(%struct.fuse_dispatcher* %11)
  ret void
}

declare dso_local i32 @fdisp_init(%struct.fuse_dispatcher*, i32) #1

declare dso_local i32 @fdisp_make(%struct.fuse_dispatcher*, i32, %struct.mount*, i32, %struct.thread*, %struct.ucred*) #1

declare dso_local i32 @fuse_insert_message(i32, i32) #1

declare dso_local i32 @fdisp_destroy(%struct.fuse_dispatcher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
