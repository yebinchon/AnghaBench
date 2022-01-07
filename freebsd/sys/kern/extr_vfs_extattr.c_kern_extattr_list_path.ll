; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_extattr.c_kern_extattr_list_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_extattr.c_kern_extattr_list_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.nameidata = type { i32 }

@LOOKUP = common dso_local global i32 0, align 4
@AUDITVNODE1 = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i8*, i32, i8*, i64, i32)* @kern_extattr_list_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kern_extattr_list_path(%struct.thread* %0, i8* %1, i32 %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nameidata, align 4
  %15 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @AUDIT_ARG_VALUE(i32 %16)
  %18 = load i32, i32* @LOOKUP, align 4
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @AUDITVNODE1, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @UIO_USERSPACE, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = load %struct.thread*, %struct.thread** %8, align 8
  %25 = call i32 @NDINIT(%struct.nameidata* %14, i32 %18, i32 %21, i32 %22, i8* %23, %struct.thread* %24)
  %26 = call i32 @namei(%struct.nameidata* %14)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %7, align 4
  br label %45

31:                                               ; preds = %6
  %32 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %33 = call i32 @NDFREE(%struct.nameidata* %14, i32 %32)
  %34 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i8*, i8** %11, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load %struct.thread*, %struct.thread** %8, align 8
  %40 = call i32 @extattr_list_vp(i32 %35, i32 %36, i8* %37, i64 %38, %struct.thread* %39)
  store i32 %40, i32* %15, align 4
  %41 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @vrele(i32 %42)
  %44 = load i32, i32* %15, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %31, %29
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @AUDIT_ARG_VALUE(i32) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i8*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @extattr_list_vp(i32, i32, i8*, i64, %struct.thread*) #1

declare dso_local i32 @vrele(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
