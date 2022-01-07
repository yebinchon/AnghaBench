; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fdisp_refresh_pid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fdisp_refresh_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_dispatcher = type { i64, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.mount = type { i32 }
%struct.ucred = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"Must use fdisp_make_pid to increase the size of the fiov\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_dispatcher*, i32, %struct.mount*, i32, i32, %struct.ucred*)* @fdisp_refresh_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdisp_refresh_pid(%struct.fuse_dispatcher* %0, i32 %1, %struct.mount* %2, i32 %3, i32 %4, %struct.ucred* %5) #0 {
  %7 = alloca %struct.fuse_dispatcher*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mount*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ucred*, align 8
  store %struct.fuse_dispatcher* %0, %struct.fuse_dispatcher** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.mount* %2, %struct.mount** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.ucred* %5, %struct.ucred** %12, align 8
  %13 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %7, align 8
  %14 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = call i32 @MPASS(%struct.TYPE_5__* %15)
  %17 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %7, align 8
  %18 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add i64 4, %19
  %21 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %7, align 8
  %22 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ule i64 %20, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @MPASS2(i32 %28, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %7, align 8
  %31 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = call i32 @fticket_reset(%struct.TYPE_5__* %32)
  %34 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %7, align 8
  %35 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %7, align 8
  %39 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %7, align 8
  %42 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %7, align 8
  %45 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @FUSE_DIMALLOC(%struct.TYPE_6__* %37, i32 %40, i32 %43, i64 %46)
  %48 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %7, align 8
  %49 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %7, align 8
  %52 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %7, align 8
  %57 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.ucred*, %struct.ucred** %12, align 8
  %61 = call i32 @fuse_setup_ihead(i32 %50, %struct.TYPE_5__* %53, i32 %54, i32 %55, i64 %58, i32 %59, %struct.ucred* %60)
  ret void
}

declare dso_local i32 @MPASS(%struct.TYPE_5__*) #1

declare dso_local i32 @MPASS2(i32, i8*) #1

declare dso_local i32 @fticket_reset(%struct.TYPE_5__*) #1

declare dso_local i32 @FUSE_DIMALLOC(%struct.TYPE_6__*, i32, i32, i64) #1

declare dso_local i32 @fuse_setup_ihead(i32, %struct.TYPE_5__*, i32, i32, i64, i32, %struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
