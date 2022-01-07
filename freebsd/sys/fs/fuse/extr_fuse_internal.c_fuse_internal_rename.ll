; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.componentname = type { i32, i32, i32, i32 }
%struct.fuse_dispatcher = type { %struct.fuse_rename_in* }
%struct.fuse_rename_in = type { i32 }

@FUSE_RENAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_internal_rename(%struct.vnode* %0, %struct.componentname* %1, %struct.vnode* %2, %struct.componentname* %3) #0 {
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.componentname*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.componentname*, align 8
  %9 = alloca %struct.fuse_dispatcher, align 8
  %10 = alloca %struct.fuse_rename_in*, align 8
  %11 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.componentname* %1, %struct.componentname** %6, align 8
  store %struct.vnode* %2, %struct.vnode** %7, align 8
  store %struct.componentname* %3, %struct.componentname** %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.componentname*, %struct.componentname** %6, align 8
  %13 = getelementptr inbounds %struct.componentname, %struct.componentname* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 4, %15
  %17 = load %struct.componentname*, %struct.componentname** %8, align 8
  %18 = getelementptr inbounds %struct.componentname, %struct.componentname* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %16, %20
  %22 = add i64 %21, 2
  %23 = trunc i64 %22 to i32
  %24 = call i32 @fdisp_init(%struct.fuse_dispatcher* %9, i32 %23)
  %25 = load i32, i32* @FUSE_RENAME, align 4
  %26 = load %struct.vnode*, %struct.vnode** %5, align 8
  %27 = load %struct.componentname*, %struct.componentname** %8, align 8
  %28 = getelementptr inbounds %struct.componentname, %struct.componentname* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.componentname*, %struct.componentname** %8, align 8
  %31 = getelementptr inbounds %struct.componentname, %struct.componentname* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @fdisp_make_vp(%struct.fuse_dispatcher* %9, i32 %25, %struct.vnode* %26, i32 %29, i32 %32)
  %34 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %9, i32 0, i32 0
  %35 = load %struct.fuse_rename_in*, %struct.fuse_rename_in** %34, align 8
  store %struct.fuse_rename_in* %35, %struct.fuse_rename_in** %10, align 8
  %36 = load %struct.vnode*, %struct.vnode** %7, align 8
  %37 = call i32 @VTOI(%struct.vnode* %36)
  %38 = load %struct.fuse_rename_in*, %struct.fuse_rename_in** %10, align 8
  %39 = getelementptr inbounds %struct.fuse_rename_in, %struct.fuse_rename_in* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %9, i32 0, i32 0
  %41 = load %struct.fuse_rename_in*, %struct.fuse_rename_in** %40, align 8
  %42 = bitcast %struct.fuse_rename_in* %41 to i8*
  %43 = getelementptr inbounds i8, i8* %42, i64 4
  %44 = load %struct.componentname*, %struct.componentname** %6, align 8
  %45 = getelementptr inbounds %struct.componentname, %struct.componentname* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.componentname*, %struct.componentname** %6, align 8
  %48 = getelementptr inbounds %struct.componentname, %struct.componentname* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @memcpy(i8* %43, i32 %46, i32 %49)
  %51 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %9, i32 0, i32 0
  %52 = load %struct.fuse_rename_in*, %struct.fuse_rename_in** %51, align 8
  %53 = bitcast %struct.fuse_rename_in* %52 to i8*
  %54 = load %struct.componentname*, %struct.componentname** %6, align 8
  %55 = getelementptr inbounds %struct.componentname, %struct.componentname* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 4, %57
  %59 = getelementptr inbounds i8, i8* %53, i64 %58
  store i8 0, i8* %59, align 1
  %60 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %9, i32 0, i32 0
  %61 = load %struct.fuse_rename_in*, %struct.fuse_rename_in** %60, align 8
  %62 = bitcast %struct.fuse_rename_in* %61 to i8*
  %63 = getelementptr inbounds i8, i8* %62, i64 4
  %64 = load %struct.componentname*, %struct.componentname** %6, align 8
  %65 = getelementptr inbounds %struct.componentname, %struct.componentname* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %63, i64 %67
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load %struct.componentname*, %struct.componentname** %8, align 8
  %71 = getelementptr inbounds %struct.componentname, %struct.componentname* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.componentname*, %struct.componentname** %8, align 8
  %74 = getelementptr inbounds %struct.componentname, %struct.componentname* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @memcpy(i8* %69, i32 %72, i32 %75)
  %77 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %9, i32 0, i32 0
  %78 = load %struct.fuse_rename_in*, %struct.fuse_rename_in** %77, align 8
  %79 = bitcast %struct.fuse_rename_in* %78 to i8*
  %80 = load %struct.componentname*, %struct.componentname** %6, align 8
  %81 = getelementptr inbounds %struct.componentname, %struct.componentname* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = add i64 4, %83
  %85 = load %struct.componentname*, %struct.componentname** %8, align 8
  %86 = getelementptr inbounds %struct.componentname, %struct.componentname* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = add i64 %84, %88
  %90 = add i64 %89, 1
  %91 = getelementptr inbounds i8, i8* %79, i64 %90
  store i8 0, i8* %91, align 1
  %92 = call i32 @fdisp_wait_answ(%struct.fuse_dispatcher* %9)
  store i32 %92, i32* %11, align 4
  %93 = call i32 @fdisp_destroy(%struct.fuse_dispatcher* %9)
  %94 = load i32, i32* %11, align 4
  ret i32 %94
}

declare dso_local i32 @fdisp_init(%struct.fuse_dispatcher*, i32) #1

declare dso_local i32 @fdisp_make_vp(%struct.fuse_dispatcher*, i32, %struct.vnode*, i32, i32) #1

declare dso_local i32 @VTOI(%struct.vnode*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @fdisp_wait_answ(%struct.fuse_dispatcher*) #1

declare dso_local i32 @fdisp_destroy(%struct.fuse_dispatcher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
