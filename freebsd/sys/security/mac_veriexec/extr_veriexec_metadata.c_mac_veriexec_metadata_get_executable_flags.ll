; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_veriexec_metadata.c_mac_veriexec_metadata_get_executable_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_veriexec_metadata.c_mac_veriexec_metadata_get_executable_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.proc = type { %struct.vnode* }
%struct.vnode = type { i32 }
%struct.vattr = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@VERIEXEC_FILES_FIRST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_veriexec_metadata_get_executable_flags(%struct.ucred* %0, %struct.proc* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca %struct.vattr, align 4
  %12 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %6, align 8
  store %struct.proc* %1, %struct.proc** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.proc*, %struct.proc** %7, align 8
  %14 = getelementptr inbounds %struct.proc, %struct.proc* %13, i32 0, i32 0
  %15 = load %struct.vnode*, %struct.vnode** %14, align 8
  store %struct.vnode* %15, %struct.vnode** %10, align 8
  %16 = load %struct.vnode*, %struct.vnode** %10, align 8
  %17 = icmp eq %struct.vnode* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %5, align 4
  br label %42

20:                                               ; preds = %4
  %21 = load %struct.vnode*, %struct.vnode** %10, align 8
  %22 = load %struct.ucred*, %struct.ucred** %6, align 8
  %23 = call i32 @VOP_GETATTR(%struct.vnode* %21, %struct.vattr* %11, %struct.ucred* %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %5, align 4
  br label %42

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.vattr, %struct.vattr* %11, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.vattr, %struct.vattr* %11, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.vattr, %struct.vattr* %11, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @VERIEXEC_FILES_FIRST, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @mac_veriexec_metadata_get_file_flags(i32 %30, i32 %32, i32 %34, i32* %35, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %28, %26, %18
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, %struct.ucred*) #1

declare dso_local i32 @mac_veriexec_metadata_get_file_flags(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
