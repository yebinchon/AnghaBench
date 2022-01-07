; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_newentry_makerequest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_newentry_makerequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.componentname = type { i64, i8*, i32, i32 }
%struct.fuse_dispatcher = type { i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuse_internal_newentry_makerequest(%struct.mount* %0, i32 %1, %struct.componentname* %2, i32 %3, i8* %4, i64 %5, %struct.fuse_dispatcher* %6) #0 {
  %8 = alloca %struct.mount*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.componentname*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.fuse_dispatcher*, align 8
  store %struct.mount* %0, %struct.mount** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.componentname* %2, %struct.componentname** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store %struct.fuse_dispatcher* %6, %struct.fuse_dispatcher** %14, align 8
  %15 = load i64, i64* %13, align 8
  %16 = load %struct.componentname*, %struct.componentname** %10, align 8
  %17 = getelementptr inbounds %struct.componentname, %struct.componentname* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %15, %18
  %20 = add i64 %19, 1
  %21 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %14, align 8
  %22 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %14, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.mount*, %struct.mount** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.componentname*, %struct.componentname** %10, align 8
  %28 = getelementptr inbounds %struct.componentname, %struct.componentname* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.componentname*, %struct.componentname** %10, align 8
  %31 = getelementptr inbounds %struct.componentname, %struct.componentname* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @fdisp_make(%struct.fuse_dispatcher* %23, i32 %24, %struct.mount* %25, i32 %26, i32 %29, i32 %32)
  %34 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %14, align 8
  %35 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load i64, i64* %13, align 8
  %39 = call i32 @memcpy(i8* %36, i8* %37, i64 %38)
  %40 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %14, align 8
  %41 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load i64, i64* %13, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load %struct.componentname*, %struct.componentname** %10, align 8
  %46 = getelementptr inbounds %struct.componentname, %struct.componentname* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.componentname*, %struct.componentname** %10, align 8
  %49 = getelementptr inbounds %struct.componentname, %struct.componentname* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @memcpy(i8* %44, i8* %47, i64 %50)
  %52 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %14, align 8
  %53 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load %struct.componentname*, %struct.componentname** %10, align 8
  %57 = getelementptr inbounds %struct.componentname, %struct.componentname* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %55, %58
  %60 = getelementptr inbounds i8, i8* %54, i64 %59
  store i8 0, i8* %60, align 1
  ret void
}

declare dso_local i32 @fdisp_make(%struct.fuse_dispatcher*, i32, %struct.mount*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
